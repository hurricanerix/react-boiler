//var React = require('react');
import React from 'react';

// OLD WAY:
//var Logo = React.createClass({
//	render: function() {
//		return <div className="Logo" />;
//	}
//});
class Logo extends React.Component {
	render() {
		return <div className="Logo" />;
	}
}

// OLD WAY: module.exports = Logo;
export default Logo // TODO: ;
