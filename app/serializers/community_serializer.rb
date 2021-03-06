class CommunitySerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :mailchimp_api_key, :mailchimp_list_id, :mailchimp_group_id, :image, :description, :recipient

  include PagarmeHelper

  def recipient
    if object.recipient
      return from_pagarme_recipient object.recipient 
    end
    object.recipient
  end
end
