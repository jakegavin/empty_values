defmodule EmptyValues.TestModel do
  use EmptyValues.Web, :model

  @empty_values ["blank"]

  schema "test_models" do
    field :foo, :string
    field :bar, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:foo, :bar])
    |> validate_required([:foo, :bar])
  end
end
