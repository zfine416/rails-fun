var DatePicker = require('react-datepicker');
var moment = require('moment');

var RinkSearch = React.createClass({

  	getInitialState: function() {
    	return {
     		startDate: moment()
    	};
  	},

	handleChange: function(date) {
    	this.setState({
      		startDate: date
    	});
  	},
	render: function() {
		return (
			<div>
				<form className="main-form">
					<div className="form-group row">
						<label htmlFor="zip">Enter Zip Code</label>
						<input id="zip"/>
					</div>
					<div className="form-group row">
						<label htmlFor="datepicker">Date:</label>
						<DatePicker
        				selected={this.state.startDate}
        				onChange={this.handleChange} />
					</div>
				</form>
			</div>
		 )		
	}

})

module.exports = RinkSearch;

