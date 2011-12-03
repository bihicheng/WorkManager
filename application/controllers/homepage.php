<?php
/**
 * MainPage Class
 *
 * @package    controller
 * @subpackage    
 * @category    
 * @author   bihicheng 
 * @link    
 */
class Homepage extends CI_Controller{    

    public function __construct()
    {
        parent::__construct();
        $this->output->enable_profiler(TRUE);
    }

    public function display()
    {
        //Flick Photos
        $flickr_key = $this->config->item('flick_key');
        $flickr_secret = $this->config->item('flick_secret');

        $this->load->library('flickr', array($flickr_key, $flickr_secret));

        $frob = $this->flickr->requestFrob();

        //$token_url = $this->flickr->buildAuthUrl('read', $frob);
        $token = $this->flickr->setAuthTokenFromFrob($frob);

        $params = array('min_date' => '20111201','format'=>'rest','auto_token' => isset($token)? $token : '');
        $req = $this->flickr->executeMethod('flickr.photos.recentlyUpdated', $params);
        $this->load->view('homepage');
    }
}
