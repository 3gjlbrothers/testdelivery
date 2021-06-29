defmodule DeliveryWeb.Resolvers.User do
  def create(%{input: params}, _contex), do: Delivery.Users.Create.call(params)

  def get(%{id: user_id}, _context), do: Delivery.Users.Get.by_id(user_id)

  def update(%{id: user_id, input: params}, _context),
    do: Delivery.Users.Update.call(user_id, params)

  def delete(%{id: user_id}, _context), do: Delivery.Users.Delete.call(user_id)
end
