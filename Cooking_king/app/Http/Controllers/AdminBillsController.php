<?php

namespace App\Http\Controllers;

use App\Customer;
use App\Order;
use App\Order_Item;
use Illuminate\Http\Request;

class AdminBillsController extends Controller
{   
    private $customer, $order, $order_item;
    public function __construct(Customer $customer, Order $order, Order_Item $order_item)
    {
        $this->customer = $customer;
        $this->order = $order;
        $this->order_item =$order_item;
    }
    public function index()
    {
        
        $dataBills = $this->getData()->all(); 
        
        return view('admin.bill.index', compact('dataBills'));
    }
    public function getData()
    {
        $data = Order::join('customers', 'customers.id', '=', 'orders.customer_id')
              		->join('order_items', 'order_items.order_id', '=', 'orders.id')
              		->get(['customers.name','orders.id' ,'customers.address', 'order_items.name_food','order_items.quantity', 'orders.status', 'orders.created_at']);
        return $data;
    }
    public function error()
    {
        return view('error.error');
    }
}
