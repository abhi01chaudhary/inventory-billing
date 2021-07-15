<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;

class ProductExpiry extends Notification
{
    use Queueable;

    protected $product_item;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($product_item)
    {
        $this->product_item = $product_item;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['database'];
    }

    /**
     * Save the notification in the database
     *
     * @param  mixed  $notifiable
     * @return
     */
    public function toDatabase($notifiable)
    {

        return [
            'title'           => 'Product ' . $this->product_item->product->code . ' Expires on ' . $this->product_item->expiry_date,
            'product_id'      => $this->product_item->product_id,
            'batch_number'    => $this->product_item->product_batch->batch_number,
            'inventory_count' => $this->product_item->product->inventory->total_stock,
        ];
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {

    }
}
