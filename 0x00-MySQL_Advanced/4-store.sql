-- Create a trigger to decrease item quantity
CREATE TRIGGER decrease_quantity AFTER INSERT ON orders
FOR EACH row
	BEGIN
		UPDATE items SET quantity = quantity - NEW.number WHERE name = NEW.item_name;
	END;
