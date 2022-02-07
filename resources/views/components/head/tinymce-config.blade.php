
    <script src="{{asset("js/tinymce.min.js")}}" referrerpolicy="origin" defer></script>
    <script defer>
      tinymce.init({
        selector: 'textarea#myeditorinstance', // Replace this CSS selector to match the placeholder element for TinyMCE
        plugins: 'code table lists',
        toolbar: 'undo redo | formatselect| bold italic | alignleft aligncenter alignright | indent outdent | bullist numlist | code | table'
      });
    </script>


