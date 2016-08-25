defmodule EmptyValues.Repo.Migrations.CreateTestModel do
  use Ecto.Migration

  def change do
    create table(:test_models) do
      add :foo, :string
      add :bar, :string

      timestamps()
    end

  end
end
