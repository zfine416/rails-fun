var RinkSearch = React.createClass({
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
						<input type="text" id="datepicker"/>
					</div>
				</form>
			</div>
		 )		
	}

})

