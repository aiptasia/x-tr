Rails.application.routes.draw do

  # Root
  root 'static#index'

  # Static
  get 'service'     => 'static#service'
  get 'custom'      => 'static#custom'
  get 'contacts'    => 'static#contacts'

  # Advertising
  get 'advertising/ford-focus-2-zamena-scepleniya'    => 'advertising#ford-focus-2-zamena-scepleniya'

  # User Activities
  match 'codeword_request', to: 'user_activities#codeword_request', via: 'post'
  match 'price_request',    to: 'user_activities#price_request',    via: 'post'
  match 'callback_request', to: 'user_activities#callback_request', via: 'post'
  match 'new_feedback',     to: 'user_activities#new_feedback',     via: 'post'

  # Gallery
  get 'gallery',                            to: 'collections#index',  as: 'collections'

end
