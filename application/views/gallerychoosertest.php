<script type="text/javascript">
	window.onload = function(){
		

		dojo.addOnLoad(function(){
			var store = new dojo.data.ItemFileReadStore({
				url: '/cameratron/gallery/listAll'
			});

			var filteringSelect = new dijit.form.ComboBox({
//				id: 'titleSelect',
				name: "title",
				store: store,
				searchAttr: "title"
			},
			"title");
		});
	}
</script>

<div>
	<input id="title">

	<button onClick="alert(dijit.byId('titleSelect').attr('value'))">
        Get value
    </button>
</div>