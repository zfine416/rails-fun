//= require_self
//= require react-server
//= require react_ujs

// Setup React in global scope
window.$ = window.jQuery = global.$ = require('jquery');
var React = window.React = global.React = require('react');
var ReactDOM = window.ReactDOM = global.ReactDOM = require('react-dom');
var ReactDOMServer = window.ReactDOMServer = global.ReactDOMServer = require('react-dom/server');
require( 'jquery-ujs' );
require( 'fetch' );
require( './components' );