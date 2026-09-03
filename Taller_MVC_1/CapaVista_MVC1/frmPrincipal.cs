using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaControlador_MVC1;

namespace CapaVista_MVC1
{
    public partial class frmPrincipal : Form
    {
        string nombreTabla = "cliente";
        Controlador controlador = new Controlador();    
        public frmPrincipal()
        {
            InitializeComponent();
        }
            
        public void actualizarDataGridView()
        {
            DataTable dtVista = controlador.llenarDgv(nombreTabla);
            dgvConsultaTabla.DataSource = dtVista;
        }

        private void frmPrincipal_Load(object sender, EventArgs e)
        {

        }

        private void btnConsultar_Click(object sender, EventArgs e)
        {
            actualizarDataGridView();
        }
    }
}
