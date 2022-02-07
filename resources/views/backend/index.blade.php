<!DOCTYPE html>
<html lang="en">
<head>
    <title>Portal - Bootstrap 5 Admin Dashboard Template For Developers</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Portal - Bootstrap 5 Admin Dashboard Template For Developers">
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media">
    <link rel="shortcut icon" href="favicon.ico">
    <script defer src="{{asset('assets/plugins/fontawesome/js/all.min.js')}}"></script>
    <link id="theme-style" rel="stylesheet" href="{{asset('assets/css/portal.css')}}">
    @livewireStyles()
    <script src="{{asset('js/tinymce.min.js')}}" referrerpolicy="origin"></script>

    <script>
        tinymce.init({
            selector: '#mytextarea'
        });
    </script>

</head>
<body class="app">
    @livewire("admin-dashboard")
    @livewireScripts
</body>
</html>

