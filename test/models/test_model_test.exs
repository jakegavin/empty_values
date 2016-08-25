defmodule EmptyValues.TestModelTest do
  use EmptyValues.ModelCase

  alias EmptyValues.TestModel

  @bar_empty_foo_string %{bar: "blank", foo: ""}


  test "blank is the only empty value" do
    changeset = TestModel.changeset(%TestModel{}, @bar_empty_foo_string)
    assert Ecto.Changeset.get_change(changeset, :bar) == nil
    assert Ecto.Changeset.get_change(changeset, :foo) == ""
  end
end
