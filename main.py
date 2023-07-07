import mysql.connector as sql

database = sql.connect(host = "localhost", user = "root", passwd = "1234", database = "royalmart")
cur = database.cursor()

def mainMenu():
    print("Choose from:\n1) Sign-Up\n2) Log in\n3) Exit")

def menu():
    print("Enter:\n1 for Admin\n2 for Supplier\n3 for Customer\n4 for BACK")

def adminSignup():
    fname = input("Enter your firstname: ")
    lname = input("Enter your lastname: ")
    uname = input("Enter username: ")
    passwd = input("Enter passwd: ")
    phone = input("Enter phone no.: ")
    cur.execute(f"insert into login_credentials values('admin', '{uname}', '{passwd}')")
    database.commit()
    cur.execute("select max(admin_id) from admin")
    id = cur.fetchall()
    cur.execute(f"insert into admin values({id[0][0]+1}, '{uname}', '{fname}', '{lname}', '{phone}')")
    database.commit()

def custSignup():
    fname = input("Enter your firstname: ")
    lname = input("Enter your lastname: ")
    uname = input("Enter username: ")
    passwd = input("Enter passwd: ")
    dob = input("Enter your birth date (mm/dd/yyyy): ")
    streetno = input("Enter street no. : ")
    city = input("Enter city : ")
    state = input("Enter state : ")
    pincode = int(input("Enter pincode : "))
    phone = input("Enter phone no.: ")
    cur.execute(f"insert into login_credentials values('customer', '{uname}', '{passwd}')")
    database.commit()
    cur.execute("select max(cust_id) from customer")
    id = cur.fetchall()
    cur.execute(f"insert into customer values({id[0][0]+1}, '{fname}', '{lname}', '{uname}', 50000, '{dob}', '{streetno}', '{city}', '{state}', {pincode}, '{phone}')")
    database.commit()

def adminlogin():
    uname = input("Enter Username: ")
    passwd = input("Enter password: ")
    cur.execute("Select * from login_Credentials")
    data = cur.fetchall()
    for i in data:
        if i[1] == uname and i[2] == passwd:
            adminmenu(uname)
            break
    else: 
        print("Wrong Username/Password")

def custlogin():
    uname = input("Enter Username: ")
    passwd = input("Enter password: ")
    cur.execute("Select * from login_Credentials")
    data = cur.fetchall()
    for i in data:
        if i[1] == uname and i[2] == passwd:
            custmenu(uname)
            break
    else: 
        print("Wrong Username/Password")

def suplogin():
    uname = input("Enter Username: ")
    passwd = input("Enter password: ")
    cur.execute("Select * from login_Credentials")
    data = cur.fetchall()
    for i in data:
        if i[1] == uname and i[2] == passwd:
            supmenu(uname)
            break
    else: 
        print("Wrong Username/Password")

def supmenu(uname):
    print(f"Welcome {uname}")
    cur.execute(f"Select Sup_id from supplier where ref_username = '{uname}'")
    data = cur.fetchone()
    supId = data[0]
    while True:
        print("Choose from:\n1) View my Products\n2) Add product\n3) Delete product\n4) Exit")
        ch = int(input("Enter choice: "))
        if ch == 1:
            cur.execute(f"Select * from royalmart.show_products where ref_sup_id = {supId}")
            data = cur.fetchall()
            if(len(data) == 0): print("No current products")
            else:
                for i in data:
                    print(i)
        elif ch==2:
            name = input("Enter product name: ")
            cat = input("Enter category: ")
            quantity = int(input("Enter quantity: "))
            price = int(input("Enter price: "))
            discount = int(input("Enter discount: "))
            cur.execute("select max(p_id) from product")
            id = cur.fetchall()
            cur.execute(f"insert into product values({id[0][0]+1}, '{name}', '{cat}', {quantity}, {price}, {discount}, {supId})")
            database.commit()
            print("Product added successfuly")   
        elif ch==3:
            pid = int(input("Enter product id to be deleted : "))
            cur.execute(f"delete from product where p_id = {pid}")
            database.commit()
            print("Product successfully deleted")
        elif ch==4:
            break

def adminmenu(uname):
    print(f"Welcome {uname}")
    cur.execute(f"Select Admin_id from admin where ref_Username = '{uname}'")
    data = cur.fetchone()
    adminId = data[0]
    while True:
        print("Choose from:\n1) Show Suppliers\n2) Delete Suppliers\n3) Vendor Status Change\n4) View Products\n5) Run Instantaneous Info queries\n6) Add supplier\n7) update delivery status\n8) Exit")
        ch = int(input("Enter choice: "))
        if ch == 1:
            cur.execute(f"Select * from royalmart.show_suppliers where ref_admin_id = {adminId}")
            data = cur.fetchall()
            if(len(data) == 0): print("No current suppliers")
            else:
                for i in data:
                    print(i)
        elif ch==2:
            print("Enter supplier id for deletion")
            sid = int(input("Enter id : "))
            cur.execute(f"Select * from Supplier where ref_admin_id = {adminId}")
            data = cur.fetchall()
            if(len(data) == 0): print("No current suppliers")
            else:
                for i in data:
                    if i[0] == sid and i[9] == adminId:
                        cur.execute(f"Delete from Supplier where Sup_id = {sid}")
                        database.commit()
                        print("Deletion Successfully")
        elif ch==3:
            print("Enter supplier id for changing status")
            sid = int(input("Enter id : "))
            status = input("Enter new status: ")
            cur.execute(f"Select * from Supplier where ref_admin_id = {adminId}")
            data = cur.fetchall()
            if(len(data) == 0): print("No current suppliers")
            else:
                for i in data:
                    if i[0] == sid and i[9] == adminId:
                        cur.execute(f"Update Supplier set status = '{status}' where Sup_id = {sid}")
                        database.commit()
                        print("Updated Successfully")
        elif ch==4:
            cur.execute("Select * from royalmart.show_products")
            data = cur.fetchall()
            if(len(data) == 0): print("No products")
            else:
                for i in data:
                    print(i)
        elif ch==5:
            print("Enter query no. :\n1 for grouping product by category name amd pdoduct name and displaying price\n2 for grouping product by category name amd pdoduct name and displaying price using cube\n3 for grouping users by role and displaying customer's wallet amount\n4 for 3 for grouping users by role and displaying customer's wallet amount using cube\n5 for exit")
            ch = int(input("Enter choice: "))
            if ch==1:
                cur.execute("select P_Name, category_name, sum(Price), sum(quantity) from product group by P_name, category_name with rollup")
                data = cur.fetchall()
                for i in data:
                    print(i)
            elif ch==2:
                cur.execute("select P_Name, category_name, sum(Price), sum(quantity) from product group by P_name, category_name with rollup union select P_Name, category_name, sum(Price), sum(quantity) from product group by P_name, category_name with rollup")
                data = cur.fetchall()
                for i in data:
                    print(i)
            elif ch==3:
                cur.execute("select role, username, sum(c.wallet) from login_credentials as l inner join customer as c where l.username = c.ref_username group by role, username with rollup")
                data = cur.fetchall()
                for i in data:
                    print(i)
            elif ch==4:
                cur.execute("select role, username, sum(c.wallet) from login_credentials as l inner join customer as c where l.username = c.ref_username group by role, username with rollup union select role, username, sum(c.wallet) from login_credentials as l inner join customer as c where l.username = c.ref_username group by role, username with rollup")
                data = cur.fetchall()
                for i in data:
                    print(i)
            elif ch==5:
                break
        elif ch==6:
            name = input("Enter name: ")
            username = input("Enter usename: ")
            passwd = input("Enter password: ")
            streetno = input("Enter street no. : ")
            city = input("Enter city : ")
            state = input("Enter state : ")
            pincode = int(input("Enter pincode : "))
            phone = input("Enter phone no.: ")
            cur.execute(f"insert into login_credentials values('supplier', '{username}', '{passwd}')")
            database.commit()
            cur.execute("select max(sup_id) from supplier")
            id = cur.fetchall()
            cur.execute(f"insert into supplier values({id[0][0]+1}, '{name}', '{username}', 'Accepted', '{streetno}', '{city}', '{state}', '{pincode}', '{phone}', {adminId})")
            database.commit()
        elif ch==7:
            id = int(input("Enter order id to be marked delivered: "))
            cur.execute(f"select * from delivery_status where ref_order_id = {id}")
            data = cur.fetchall()
            if(len(data) == 0): print("No such order id")
            else:
                cur.execute(f"update delivery_status set status = 'Delivered' where ref_order_id = {id}")
                database.commit()
                print("Updated Successfully")
        elif ch==8:
            break

def custmenu(uname):
    print(f"Welcome {uname}")
    cur.execute(f"Select Cust_id from customer where ref_username = '{uname}'")
    data = cur.fetchone()
    custId = data[0]
    while True:
        print("Choose from:\n1) View Products\n2) Add to cart\n3) Edit cart\n4) View cart\n5) Confirm Order\n6) Add amount to wallet\n7) view order details\n8) Exit")
        ch = int(input("Enter choice: "))
        if ch == 1:
            cur.execute("Select * from product")
            data = cur.fetchall()
            for i in data:
                print(i)
        elif ch==2:
            pid = int(input("Enter product id to be added : "))
            quantity = int(input("Enter quantity: "))
            cur.execute(f"select quantity from product where p_id = {pid}")
            data = cur.fetchall()
            if(len(data) == 0): print("Wrong product id")
            else: 
                if(quantity > data[0][0]):
                    print("Please enter less quantity")
                else:
                    cur.execute("select max(Sno) from cart")
                    id = cur.fetchall()
                    cur.execute(f"select P_Name, price, Product_discount from product where P_id = {pid}")
                    data = cur.fetchall()
                    cur.execute(f"insert into cart values({id[0][0]+1}, {custId}, {pid}, {quantity}, '{data[0][0]}', {data[0][1]}, {data[0][1]-data[0][2]}*{quantity})")
                    database.commit()
                    cur.execute(f"update product set quantity = quantity - {quantity} where P_id = {pid}")
                    database.commit()
                    print("Product added successfuly")   
        elif ch==3:
            pid = int(input("Enter product id : "))
            quantity = int(input("Enter new quantity: "))
            cur.execute(f"select quantity from product where P_id = {pid}")
            Qua = cur.fetchall()
            cur.execute(f"select quantity from cart where Pid = {pid}")
            inQua = cur.fetchall()
            cur.execute(f"select quantity from product where p_id = {pid}")
            data = cur.fetchall()
            if(len(data) == 0): print("No products")
            else:
                if(quantity > data[0][0]):
                    print("Please enter less quantity")
                else:
                    cur.execute(f"update cart set quantity = {quantity} where PID = {pid}")
                    database.commit()
                    cur.execute(f"select price, product_discount from product where P_id = {pid}")
                    data = cur.fetchall()
                    cur.execute(f"update cart set amount = {data[0][0] - data[0][1]}*{quantity} where PID = {pid}")
                    database.commit()
                    cur.execute(f"update product set quantity = ({Qua[0][0]} + {inQua[0][0]}) - {quantity} where P_id = {pid}")
                    database.commit()
                    print("Cart successfully edited")
        elif ch==4:
            cur.execute(f"Select PID, PNAME, Quantity, Amount from cart where custID = {custId}")
            data = cur.fetchall()
            if(len(data) == 0): print("No products in cart")
            else:
                for i in data:
                    print(i)
                cur.execute(f"select sum(amount) from cart where custID = {custId}")
                data = cur.fetchall()
                print(f"Total amount = {data[0][0]}")
        elif ch==6:
            amount = int(input("Enter amount : "))
            cur.execute(f"update customer set wallet = wallet + {amount} where cust_id = {custId}")
            database.commit()
            cur.execute(f"Select * from customer where cust_id = {custId}")
            data = cur.fetchall()
            print(data)
            print("Ammount added successfully")
            print(f"Amount in wallet = {data[0][4]}")
        elif ch==5:
            cur.execute(f"select sum(amount) from cart where custID = {custId}")
            amount = cur.fetchall()
            cur.execute(f"select wallet from customer where cust_ID = {custId}")
            wallet = cur.fetchall()
            if(amount[0][0] > wallet[0][0]):
                print("Insufficient balance")
            else:
                cur.execute(f"update customer set wallet = wallet - {amount[0][0]} where cust_ID = {custId}")
                timestamp = input("Enter timestamp : ")
                streetno = input("Enter street no. : ")
                city = input("Enter city : ")
                state = input("Enter state : ")
                pincode = int(input("Enter pincode : "))
                cur.execute(f"select max(order_id) from orders")
                data = cur.fetchall()
                cur.execute(f"insert into orders values({data[0][0]+1}, '{timestamp}', {amount[0][0]}, '{streetno}', '{city}', '{state}', {pincode}, {custId})")
                database.commit()
                cur.execute(f"select max(Sno) from delivery_status")
                id = cur.fetchall()
                cur.execute(f"insert into delivery_status values({data[0][0]+1}, 'Pending', {id[0][0]+1})")
                database.commit()
                cur.execute(f"delete from cart where custID = {custId}")
                database.commit()
        elif ch==7:
            cur.execute(f"select order_id, timestamp, amount from orders where ref_cust_id = {custId}")
            cust = cur.fetchall()
            if(len(cust) == 0): print("No orders to display")
            else:
                cur.execute(f"select sno, ref_order_id, status from delivery_status where ref_order_id in {cust[0]}")
                data = cur.fetchall()
                for i in data:
                    print(i)
        elif ch==8:
            break

while True:
    mainMenu()
    ch = int(input("Enter Choice: "))
    if ch==3:
        database.close()
        break
    elif ch==2:
        menu()
        ch = int(input("Enter Choice: "))
        if ch==1:
            adminlogin()
        elif ch==2:
            suplogin()
        elif ch==3:
            custlogin()
        else:
            continue
    elif ch==1:
        menu()
        ch = int(input("Enter Choice: "))
        if ch==1:
            adminSignup()
        elif ch==3:
            custSignup()
        else:
            continue