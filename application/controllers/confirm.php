<?php
/**
* Super Class
*
* @package    Package Name
* @subpackage    Subpackage
* @category    Category
* @author    Author Name
* @link    http://example.com
*/
class Confirm extends CI_Controller {    

    public function __construct()
    {
        parent::__construct();
        $this->output->enable_profiler(TRUE);
    }

    public function flob()
    {
        $flickr_key = $this->config->item('flickr_key');
        $flickr_secret = $this->config->item('flickr_secret');

        $this->load->library('flickr', array($flickr_key, $flickr_secret));

        $flob = $this->flickr->requestFrob();

        $auth_url = $this->flickr->buildAuthUrl('read', $flob);

        $data['auth_url'] = $auth_url;
        $this->load->view('confirm_flob', $data);
    }
}
