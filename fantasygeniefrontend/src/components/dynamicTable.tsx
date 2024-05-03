import * as React from 'react';
import { useState } from "react";
import axios from "axios";
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';
import TablePagination from '@mui/material/TablePagination';
import TablePaginationActions from "@mui/material/TablePagination/TablePaginationActions";
import TextField from "@mui/material/TextField";
import Button from '@mui/material/Button'

const App: React.FC = () => {
    const [responseData, setResponseData] = useState<any>(null);
    const [sqlQuery, setSqlQuery] = useState<string>('SELECT *\n' +
        'FROM Player_Stats;');
    const [page, setPage] = useState(0);
    const [rowsPerPage, setRowsPerPage] = useState(5);

    const executeQuery = () => {
        // Send SQL query to backend
        axios.post('http://localhost:8080/api/sql/execute', { query: sqlQuery })
            .then(response => {
                console.log("Response Data:", response.data);
                setResponseData(response.data); // Set the raw response data
                console.log("Executed Query Successfully! ");
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    };

    const handleChangePage = (
        event: React.MouseEvent<HTMLButtonElement> | null,
        newPage: number,
    ) => {
        setPage(newPage);
    };

    const handleChangeRowsPerPage = (
        event: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>,
    ) => {
        setRowsPerPage(parseInt(event.target.value, 10));
        setPage(0);
    };

    return (
        <div>
            <h1>SQL Statements</h1>
            <TextField
                id="outlined-helperText"
                label="Enter SQL query"
                value={sqlQuery}
                onChange={(e) => setSqlQuery(e.target.value)} // Update the query state onChange
                helperText="Type your SQL query here"
                multiline
                maxRows={Infinity}
                sx={{ width: '50%' }} // Set the width to 100%
            />

            <div style={{marginTop: '10px'}}>
                <Button variant="contained" onClick={executeQuery}>Execute Query</Button>
            </div>
            {responseData && (
                <div style={{width: '70%', margin: '0 auto'}}> {/* Adjust width here */}
                    <TableContainer component={Paper}>
                        <Table aria-label="simple table">
                            <TableHead>
                                <TableRow>
                                    {responseData.columns.map((columnName: string, index: number) => (
                                        <TableCell key={index}>{columnName}</TableCell>
                                    ))}
                                </TableRow>
                            </TableHead>
                            <TableBody>
                                {(rowsPerPage > 0
                                        ? responseData.rows.slice(page * rowsPerPage, page * rowsPerPage + rowsPerPage)
                                        : responseData.rows
                                ).map((row: any, index: number) => (
                                    <TableRow key={index}>
                                        {Object.values(row).map((value: any, index: number) => (
                                            <TableCell key={index}>{value}</TableCell>
                                        ))}
                                    </TableRow>
                                ))}
                            </TableBody>
                        </Table>
                    </TableContainer>
                    <TablePagination
                        rowsPerPageOptions={[5, 10, 25, {label: 'All', value: -1}]}
                        count={responseData.rows.length}
                        rowsPerPage={rowsPerPage}
                        page={page}
                        onPageChange={handleChangePage}
                        onRowsPerPageChange={handleChangeRowsPerPage}
                        ActionsComponent={(props) => (
                            <TablePaginationActions {...props} />
                        )}
                    />
                </div>
            )}
        </div>
    );
};

export default App;
