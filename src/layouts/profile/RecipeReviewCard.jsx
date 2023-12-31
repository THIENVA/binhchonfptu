import * as React from "react";
import { styled } from "@mui/material/styles";
import Card from "@mui/material/Card";
import CardHeader from "@mui/material/CardHeader";
import CardMedia from "@mui/material/CardMedia";
import CardContent from "@mui/material/CardContent";
import CardActions from "@mui/material/CardActions";
import Collapse from "@mui/material/Collapse";
import Avatar from "@mui/material/Avatar";
import IconButton from "@mui/material/IconButton";
import Typography from "@mui/material/Typography";
import { red } from "@mui/material/colors";
import FavoriteIcon from "@mui/icons-material/Favorite";
import ShareIcon from "@mui/icons-material/Share";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";
import MoreVertIcon from "@mui/icons-material/MoreVert";
import EditIcon from "@mui/icons-material/Edit";
import { Box, Grid } from "@mui/material";

const ExpandMore = styled((props) => {
  const { expand, ...other } = props;
  return <IconButton {...other} />;
})(({ theme, expand }) => ({
  transform: !expand ? "rotate(0deg)" : "rotate(180deg)",
  marginLeft: "auto",
  transition: theme.transitions.create("transform", {
    duration: theme.transitions.duration.shortest,
  }),
}));

export default function RecipeReviewCard(props) {
  let { name, phone, email, address, handleClick } = props;
  const [expanded, setExpanded] = React.useState(false);

  const handleExpandClick = () => {
    setExpanded(!expanded);
  };

  return (
    <Card sx={{ maxWidth: 345 }}>
      <CardHeader
        title={<Typography variant="h6">Thông tin ứng cử viên</Typography>}
        action={
          <IconButton aria-label="settings" onClick={handleClick}>
            <EditIcon />
          </IconButton>
        }
      />

      <CardContent>
        <Typography variant="body2" color="text.secondary">
          "Hãy sống với đam mê và tận hưởng từng khoảnh khắc trong cuộc sống, bởi chúng ta chỉ có
          một cuộc đời để sống."
        </Typography>
        <Box sx={{ pt: 2 }}>
          <Box
            sx={{ display: "flex", justifyContent: "space-between", alignItems: "center", mb: 1 }}
          >
            <Typography fontWeight="bold">Họ và Tên</Typography>
            <Typography>{name}</Typography>
          </Box>
          <Box
            sx={{ display: "flex", justifyContent: "space-between", alignItems: "center", mb: 1 }}
          >
            <Typography fontWeight="bold">Số điện thoại</Typography>
            <Typography>{phone}</Typography>
          </Box>
          <Box
            sx={{ display: "flex", justifyContent: "space-between", alignItems: "center", mb: 1 }}
          >
            <Typography fontWeight="bold">Email </Typography>
            <Typography>{email}</Typography>
          </Box>
          <Box
            sx={{ display: "flex", justifyContent: "space-between", alignItems: "center", mb: 1 }}
          >
            <Typography fontWeight="bold">Nơi công tác</Typography>
            <Typography>{address}</Typography>
          </Box>
        </Box>
      </CardContent>
    </Card>
  );
}
