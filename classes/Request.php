<?php

class Request
{
    public function get (string $key)
    {
        return $_GET[$key];
    }
    public function post(string $key)
    {
        return $_POST[$key];
    }

    public function postClean(string $key)
    {
        return htmlspecialchars(trim($_POST[$key]));
    }
    
    public function getHas(string $key) :bool
    {
        return isset($_GET[$key]);
    }
    public function postHas(string $key) :bool
    {
        return isset($_POST[$key]);
    }
};