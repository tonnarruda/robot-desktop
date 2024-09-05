import firebirdsql

def check_port(port):
    try:
        con = firebirdsql.connect(
            host='localhost',
            port=port,
            database='${EXECDIR}\\app\\Ponto\\Ponto.fdb',
            user='sysdba',
            password='masterkey',
            timeout=5
        )
        con.close()
        return True
    except Exception as e:
        return False

if __name__ == '__main__':
    import sys
    port = int(sys.argv[1])
    if check_port(port):
        print(f'Port {port} is in use by Firebird.')
    else:
        print(f'Port {port} is not in use.')