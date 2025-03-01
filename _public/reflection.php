<?php

use Apps\Template;
use Apps\Core;

$Route->add("/awgu/bishop/reflection", function () {
    $Template = new Template;
    $Template->addheader("layouts.header");
    $Template->addfooter("layouts.footer");
    $Template->assign("title", "Bishop`s Reflections");
    $Template->render("reflections");
}, "GET");

$Route->add("/awgu/login", function () {
    $Template = new Template;
    $Template->assign("title", "Login");
    $Template->render("login");
}, "GET");

$Route->add("/awgu/bishop/reflection/{id}", function ($id) {
    $Template = new Template;
    $Core = new Core;
    $Template->addheader("layouts.header");
    $sql = "SELECT * FROM `reflections` WHERE `id` = $id";
    $reflection = mysqli_query($Core->dbCon, $sql);
    $reflection = mysqli_fetch_object($reflection);
    $Template->assign("reflection", $reflection);
    $Template->addfooter("layouts.footer");
    $Template->assign("title", $reflection->title);
    $Template->render("reflection");
}, "GET");
