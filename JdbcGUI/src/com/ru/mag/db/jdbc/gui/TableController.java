package com.ru.mag.db.jdbc.gui;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TreeTableColumn;
import javafx.util.Callback;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TableController {

    @FXML
    TableView tableView;

    @FXML private Label label;

    public void setLabelText(String text){
        label.setText(text);
    }

    public void setTableResultset(ResultSet resultSet) throws SQLException {
        ObservableList<ObservableList> data = FXCollections.observableArrayList();

        for (int i = 0; i < resultSet.getMetaData().getColumnCount(); i++) {

            final int j = i;
            TableColumn col = new TableColumn(resultSet.getMetaData().getColumnName(i + 1));
            col.setCellValueFactory((Callback<TableColumn.CellDataFeatures<ObservableList, String>, ObservableValue<String>>) param -> {
                return new SimpleStringProperty(param.getValue().get(j).toString());
            });
            tableView.getColumns().add(col);
        }

        while (resultSet.next()) {
            //Iterate Row
            ObservableList<String> row = FXCollections.observableArrayList();
            for (int i = 1; i <= resultSet.getMetaData().getColumnCount(); i++) {
                //Iterate Column
                row.add(resultSet.getString(i));
            }
            data.add(row);

        }

        //FINALLY ADDED TO TableView
        tableView.setItems(data);
    }

}
