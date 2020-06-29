using BracePLUS.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BracePLUS.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class BluetoothSetup : ContentPage
    {
        BluetoothSetupViewModel viewModel;

        public BluetoothSetup()
        {
            InitializeComponent();

            BindingContext = viewModel = new BluetoothSetupViewModel();
        }
    }
}