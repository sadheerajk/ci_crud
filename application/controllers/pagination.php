<?php
class pagination extends
CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->database();
        $this->load->library('pagination');
        $this->load->model('pagination_model');
    }
    public function index()
    {
        //paginationsettings
        $config['base_url']= site_url('pagination/index');
        $config['total_rows'] = $this->db->count_all('tbl_books');
        $config['per_page']= "3";
        $config["uri_segment"] = 3;
        $choice = $config["total_rows"]/$config["per_page"];
        $config["num_links"] = floor($choice);
        // integratebootstrap pagination
        $config['full_tag_open'] = '<ulclass="pagination">';
        $config['full_tag_close'] = '</ul>';
        $config['first_link'] = false;
        $config['last_link'] = false;
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = '«';
        $config['prev_tag_open'] = '<liclass="prev">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = '»';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<liclass="active"><ahref="#">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $this->pagination->initialize($config);
        $data['page'] =($this->uri->segment(3)) ?
$this->uri->segment(3) : 0;
        // get books list
        $data['booklist'] =$this->pagination_model->get_books($config["per_page"], $data['page'], NULL);
        $data['pagination']= $this->pagination->create_links();
        // load view
        $this->load->view('pagination_view',$data);
    }
    function search()
    {
        // get search string
        $search = ($this->input->post("book_name"))?$this->input->post("book_name") : "NIL";
        $search = ($this->uri->segment(3)) ? $this->uri->segment(3) : $search;
     
        $config = array();
        $config['base_url']= site_url("pagination/search/$search");
        $config['total_rows'] = $this->pagination_model->get_books_count($search);
        $config['per_page']= "5";
        $config["uri_segment"] = 4;
        $choice = $config["total_rows"]/$config["per_page"];
        $config["num_links"] = floor($choice);
        
        $config['full_tag_open'] = '<ulclass="pagination">';
        $config['full_tag_close'] = '</ul>';
        $config['first_link'] = false;
        $config['last_link'] = false;
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = 'Prev';
        $config['prev_tag_open'] = '<liclass="prev">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = 'Next';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<liclass="active"><ahref="#">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $this->pagination->initialize($config);
        $data['page'] =($this->uri->segment(4)) ?
$this->uri->segment(4) : 0;
        // get books list
        $data['booklist'] =$this->pagination_model->get_books($config['per_page'], $data['page'], $search);
        $data['pagination']= $this->pagination->create_links();
        //load view
        $this->load->view('pagination_view',$data);
    }
}
?>