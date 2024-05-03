package com.omercodes.fantasygeniebackend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Service;

import java.sql.ResultSetMetaData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SQLService {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public Map<String, Object> execute(String query) throws Exception {
        // Prevent executing DDL statements like DROP, CREATE, etc. for security reasons
        if (query.trim().toUpperCase().startsWith("DROP") || query.trim().toUpperCase().startsWith("CREATE")) {
            throw new Exception("DDL statements are not allowed.");
        }

        // Execute the query
        if (query.trim().toUpperCase().startsWith("SELECT")) {
            List<Map<String, Object>> results = jdbcTemplate.queryForList(query);
            ResultSetMetaData metaData = jdbcTemplate.query(query, (ResultSetExtractor<ResultSetMetaData>) rs -> rs.getMetaData());

            Map<String, Object> response = new HashMap<>();
            response.put("columns", getColumns(metaData));
            response.put("rows", results);

            return response;
        } else {
            int updateCount = jdbcTemplate.update(query);
            Map<String, Object> response = new HashMap<>();
            response.put("message", "Query executed successfully. Updated rows: " + updateCount);
            return response;
        }
    }

    private String[] getColumns(ResultSetMetaData metaData) throws Exception {
        int columnCount = metaData.getColumnCount();
        String[] columns = new String[columnCount];
        for (int i = 0; i < columnCount; i++) {
            columns[i] = metaData.getColumnLabel(i + 1); // Adjust index since JDBC is 1-indexed
        }
        return columns;
    }
}
