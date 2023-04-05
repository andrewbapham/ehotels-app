import React from "react";

function DataTable(props) {
  if (props.data.length === 0) return <div></div>;
  if (typeof props.data === "string") return <div>{props.data}</div>;
  const headers = [];
  //Extract the table headers using the first row of data
  Object.keys(props.data[0]).forEach((item) =>
    headers.push(<th key={item}>{item}</th>)
  );

  const tableRows = [];
  props.data.forEach((item) => {
    const cells = [];
    // For each key/header, create a cell with the corresponding value
    Object.keys(props.data[0]).forEach((column) => {
      cells.push(
        //Create cell with column name + id as key
        <td key={column + "_" + Object.values(item)[0]}>{item[column]}</td>
      );
    });

    //Push all cells into one table row, with the id as the key
    tableRows.push(<tr key={Object.values(item)[0]}>{cells}</tr>);
  });
  return (
    <table>
      <thead>
        <tr>{headers}</tr>
      </thead>
      {tableRows}
    </table>
  );
}

export default DataTable;
