import app from "./app";
import * as path from "path";
const PORT = 2222;

(async () => {
  app.get("/*", (req, res) => {
    let path_Joined: string = path.join(__dirname, "/www/index.html");

    res.sendFile(path_Joined, (err) => {
      if (err) {
        res.status(500).send(err);
      }
    });
  });

  app.listen(PORT, () => {
    console.log(`Server is running on port: ${PORT}`);
  });
})();
