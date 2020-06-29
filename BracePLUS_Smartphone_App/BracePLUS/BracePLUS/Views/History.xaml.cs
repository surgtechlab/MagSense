using BracePLUS.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BracePLUS.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class History : ContentPage
    {
        HistoryViewModel viewModel;

        public History()
        {
            InitializeComponent();
            BindingContext = viewModel = new HistoryViewModel()
            {
                Navigation = Navigation
            };
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            listView.SelectedItem = null;
        }
    }
}