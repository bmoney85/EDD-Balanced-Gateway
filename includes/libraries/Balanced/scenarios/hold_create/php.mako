% if mode == 'definition':
Balanced\Buyer->hold()

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "2fd37702d33511e2a00f026ba7d31e6f";

$buyer = Balanced\Customer::get("");
$buyer->hold(
    "5000",
    "Some descriptive text for the debit in the dashboard"
);
% endif