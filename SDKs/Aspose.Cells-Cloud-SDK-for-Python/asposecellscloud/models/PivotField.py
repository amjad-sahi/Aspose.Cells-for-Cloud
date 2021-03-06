#!/usr/bin/env python

class PivotField(object):
    """NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually."""


    def __init__(self):
        """
        Attributes:
          swaggerTypes (dict): The key is attribute name and the value is attribute type.
          attributeMap (dict): The key is attribute name and the value is json key in definition.
        """
        self.swaggerTypes = {
            'AutoShowCount': 'int',
            'AutoShowField': 'int',
            'AutoSortField': 'int',
            'BaseField': 'int',
            'BaseIndex': 'int',
            'BaseItem': 'int',
            'BaseItemPosition': 'str',
            'CurrentPageItem': 'int',
            'DataDisplayFormat': 'str',
            'DisplayName': 'str',
            'DragToColumn': 'bool',
            'DragToData': 'bool',
            'DragToHide': 'bool',
            'DragToPage': 'bool',
            'DragToRow': 'bool',
            'Function': 'str',
            'InsertBlankRow': 'bool',
            'IsAscendShow': 'bool',
            'IsAscendSort': 'bool',
            'IsAutoShow': 'bool',
            'IsAutoSort': 'bool',
            'IsAutoSubtotals': 'bool',
            'IsCalculatedField': 'bool',
            'IsIncludeNewItemsInFilter': 'bool',
            'IsInsertPageBreaksBetweenItems': 'bool',
            'IsMultipleItemSelectionAllowed': 'bool',
            'IsRepeatItemLabels': 'bool',
            'ItemCount': 'int',
            'Items': 'list[str]',
            'Name': 'str',
            'Number': 'int',
            'NumberFormat': 'str',
            'OriginalItems': 'list[str]',
            'PivotItems': 'list[PivotItem]',
            'Position': 'int',
            'ShowAllItems': 'bool',
            'ShowCompact': 'bool',
            'ShowInOutlineForm': 'bool',
            'ShowSubtotalAtTop': 'bool'

        }

        self.attributeMap = {
            'AutoShowCount': 'AutoShowCount','AutoShowField': 'AutoShowField','AutoSortField': 'AutoSortField','BaseField': 'BaseField','BaseIndex': 'BaseIndex','BaseItem': 'BaseItem','BaseItemPosition': 'BaseItemPosition','CurrentPageItem': 'CurrentPageItem','DataDisplayFormat': 'DataDisplayFormat','DisplayName': 'DisplayName','DragToColumn': 'DragToColumn','DragToData': 'DragToData','DragToHide': 'DragToHide','DragToPage': 'DragToPage','DragToRow': 'DragToRow','Function': 'Function','InsertBlankRow': 'InsertBlankRow','IsAscendShow': 'IsAscendShow','IsAscendSort': 'IsAscendSort','IsAutoShow': 'IsAutoShow','IsAutoSort': 'IsAutoSort','IsAutoSubtotals': 'IsAutoSubtotals','IsCalculatedField': 'IsCalculatedField','IsIncludeNewItemsInFilter': 'IsIncludeNewItemsInFilter','IsInsertPageBreaksBetweenItems': 'IsInsertPageBreaksBetweenItems','IsMultipleItemSelectionAllowed': 'IsMultipleItemSelectionAllowed','IsRepeatItemLabels': 'IsRepeatItemLabels','ItemCount': 'ItemCount','Items': 'Items','Name': 'Name','Number': 'Number','NumberFormat': 'NumberFormat','OriginalItems': 'OriginalItems','PivotItems': 'PivotItems','Position': 'Position','ShowAllItems': 'ShowAllItems','ShowCompact': 'ShowCompact','ShowInOutlineForm': 'ShowInOutlineForm','ShowSubtotalAtTop': 'ShowSubtotalAtTop'}       

        self.AutoShowCount = None # int
        self.AutoShowField = None # int
        self.AutoSortField = None # int
        self.BaseField = None # int
        self.BaseIndex = None # int
        self.BaseItem = None # int
        self.BaseItemPosition = None # str
        self.CurrentPageItem = None # int
        self.DataDisplayFormat = None # str
        self.DisplayName = None # str
        self.DragToColumn = None # bool
        self.DragToData = None # bool
        self.DragToHide = None # bool
        self.DragToPage = None # bool
        self.DragToRow = None # bool
        self.Function = None # str
        self.InsertBlankRow = None # bool
        self.IsAscendShow = None # bool
        self.IsAscendSort = None # bool
        self.IsAutoShow = None # bool
        self.IsAutoSort = None # bool
        self.IsAutoSubtotals = None # bool
        self.IsCalculatedField = None # bool
        self.IsIncludeNewItemsInFilter = None # bool
        self.IsInsertPageBreaksBetweenItems = None # bool
        self.IsMultipleItemSelectionAllowed = None # bool
        self.IsRepeatItemLabels = None # bool
        self.ItemCount = None # int
        self.Items = None # list[str]
        self.Name = None # str
        self.Number = None # int
        self.NumberFormat = None # str
        self.OriginalItems = None # list[str]
        self.PivotItems = None # list[PivotItem]
        self.Position = None # int
        self.ShowAllItems = None # bool
        self.ShowCompact = None # bool
        self.ShowInOutlineForm = None # bool
        self.ShowSubtotalAtTop = None # bool
        
