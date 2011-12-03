<?php
require_once 'Phlickr/Api.php';

class Flickr extends Phlickr_Api
{
    public function __construct($flick_key_secret = array())
    {
        $key = isset($flick_key_secret[0]) ? $flick_key_secret[0] : null;
        $secret = isset($flick_key_secret[1]) ? $flick_key_secret[1] : null;
        parent::__construct($key, $secret, $token = null);
    }
}
