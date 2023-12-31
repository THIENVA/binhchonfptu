import React from "react";
import { TextField } from "@mui/material";
import Box from "@mui/material/Box";

export default function Input(props) {
  const { name, label, values, onChange, defaultValue, type, min, max, id, inputRef, placeholder } =
    props;
  return (
    <Box
      sx={{
        display: "grid",
        gridTemplateColumns: { sm: "6fr 1fr" },
      }}
      noValidate
      autoComplete="off"
    >
      <TextField
        placeholder={placeholder}
        id={id}
        required
        variant="outlined"
        defaultValue={defaultValue}
        label={label}
        type={type}
        name={name}
        value={values}
        onChange={onChange}
        min={min}
        max={max}
        ref={inputRef}
      />
    </Box>
  );
}
