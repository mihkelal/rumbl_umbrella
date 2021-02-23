import { Socket } from "phoenix";
let socket = new Socket("/socket", {
  params: { token: window.userToken },
  logger: (kind, msg, data) => {
    console.log(`kind: ${kind}, msg: ${msg}, data: ${data}`);
  },
});
export default socket;
