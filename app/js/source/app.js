"use strict"; // always a good idea

import React from "react";
import ReactDOM from "react-dom";
import Logo from "./components/Logo";

ReactDOM.render(
	<h1>
		<Logo /> Welcome to the App!
	</h1>,
	document.getElementById("app")
);
