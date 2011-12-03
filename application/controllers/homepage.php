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
    }

    //测试前端效果 
    public function display()
    {
        $this->load->view('homepage');
    }
}
