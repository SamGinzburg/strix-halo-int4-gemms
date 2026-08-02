	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x80
	s_load_b128 s[100:103], s[0:1], 0x4c
	s_load_b32 s42, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v88, 5, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 31, v0
	s_load_b64 s[24:25], s[0:1], 0x0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v3, 4, v88
	v_or_b32_e32 v4, 8, v88
	v_or_b32_e32 v5, 12, v88
	v_or_b32_e32 v6, 16, v88
	v_or_b32_e32 v7, 20, v88
	v_or_b32_e32 v8, 24, v88
	v_or_b32_e32 v9, 28, v88
	v_or_b32_e32 v11, 32, v88
	v_or_b32_e32 v12, 36, v88
	v_or_b32_e32 v13, 40, v88
	v_or_b32_e32 v15, 48, v88
	v_or_b32_e32 v14, 44, v88
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s30, s3, s102
	s_cselect_b32 s43, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s60, s42, v1
	s_cselect_b32 s28, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s100
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s29, s2, 6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v101, 52, v88
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v2, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s29, v3
	v_or_b32_e32 v4, s29, v4
	v_or_b32_e32 v5, s29, v5
	v_or_b32_e32 v6, s29, v6
	v_or_b32_e32 v7, s29, v7
	v_or_b32_e32 v8, s29, v8
	v_or_b32_e32 v9, s29, v9
	v_or_b32_e32 v11, s29, v11
	v_or_b32_e32 v12, s29, v12
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[65:66], null, s42, v88, v[1:2]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s29, v88
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s102, v7
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s102, v8
	v_cmp_gt_i32_e64 s10, s102, v9
	v_cmp_gt_i32_e32 vcc_lo, s102, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[66:67], null, s42, 12, v[65:66]
	v_lshl_add_u32 v104, s42, 2, v65
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v105, s42, 3, v65
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v106, s42, 4, v65
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s5, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[67:68], null, s42, 20, v[65:66]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s7, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[68:69], null, s42, 24, v[65:66]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s2, s4
	s_add_i32 s6, s2, 1
	s_sub_i32 s5, s7, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[69:70], null, s42, 28, v[65:66]
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s7, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[70:71], null, s42, 36, v[65:66]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[71:72], null, s42, 40, v[65:66]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s19, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s101
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[72:73], null, s42, 44, v[65:66]
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[73:74], null, s42, 48, v[65:66]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v10, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[74:75], null, s42, 52, v[65:66]
	v_mad_u64_u32 v[75:76], null, s42, 56, v[65:66]
	v_mad_u64_u32 v[76:77], null, s42, 60, v[65:66]
	v_lshl_add_u32 v107, s42, 5, v65
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s29, v13
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s102, v11
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s5, v10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v103, 60, v88
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v15, s29, v15
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v102, 56, v88
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s102, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s29, v14
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s102, v13
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s29, v101
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, s29, v103
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s102, v15
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s29, v102
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s102, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s102, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s100, s101
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s31, s6, 31
	s_mul_i32 s7, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s7
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s18, s102, v18
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v18, 0x110, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s7, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s102, v6
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s33, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s30, s30, s29
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s102, v4
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s2, s30, s42
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s60
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v10, s2, v65
	v_add_nc_u32_e32 v19, s2, v104
	v_add_nc_u32_e32 v20, s2, v105
	v_add_nc_u32_e32 v21, s2, v66
	v_add_nc_u32_e32 v22, s2, v106
	v_add_nc_u32_e32 v23, s2, v67
	v_add_nc_u32_e32 v24, s2, v68
	v_add_nc_u32_e32 v25, s2, v69
	v_add_nc_u32_e32 v26, s2, v107
	v_add_nc_u32_e32 v27, s2, v70
	v_add_nc_u32_e32 v28, s2, v71
	v_add_nc_u32_e32 v29, s2, v72
	v_add_nc_u32_e32 v30, s2, v73
	v_add_nc_u32_e32 v31, s2, v74
	v_add_nc_u32_e32 v32, s2, v75
	v_add_nc_u32_e32 v33, s2, v76
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s102, v3
	v_cmp_gt_i32_e64 s6, s102, v5
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v10, vcc_lo
	s_and_b32 s25, s25, 0xffff
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s102, v17
	.loc	1 776 22 is_stmt 0              ; attention.py:776:22
	s_and_b32 vcc_lo, s2, s60
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_and_b32_e32 v36, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v19, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s60
	.loc	1 774 26                        ; attention.py:774:26
	v_dual_cndmask_b32 v3, 0x80000000, v20 :: v_dual_add_nc_u32 v110, 0, v18
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s60
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s33, s31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s60
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s6, s2, s31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v5, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s60
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s5, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v6, 0x80000000, v23, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s60
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v35, 0x60, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v7, 0x80000000, v24, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s60
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v8, v1, s[24:27], 0 offen
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v25, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s60
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v9, 0x80000000, v26, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s60
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v19, 1, v35
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v10, 0x80000000, v27, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s60
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v21, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v11, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s60
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s7, s103, 63
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v12, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s60
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 0x198, v0
	v_cndmask_b32_e32 v13, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s60
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s7, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v14, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s60
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	v_cndmask_b32_e32 v15, 0x80000000, v32, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s18, s60
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s2, s2, 26
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v16, 0x80000000, v33, vcc_lo
	s_clause 0x7
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v17, v1, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	v_xor_b32_e32 v1, 0x88, v0
	v_add_nc_u32_e32 v108, 0, v0
	v_add_nc_u32_e32 v111, 0, v20
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s7, s2
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s7, v21
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v109, 0, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v19, v36
	s_mov_b32 s96, 0
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s14, s2, 0xffffffc0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s20, 0x10008
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v108, v8
	s_waitcnt vmcnt(12)
	ds_store_b8 v108, v5 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v108, v9 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v108, v12 offset:1536
	ds_store_b8 v109, v2
	ds_store_b8 v109, v6 offset:512
	ds_store_b8 v109, v10 offset:1024
	ds_store_b8 v109, v14 offset:1536
	ds_store_b8 v110, v3
	ds_store_b8 v110, v7 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v110, v11 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v110, v15 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v111, v4
	s_waitcnt vmcnt(2)
	ds_store_b8 v111, v17 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v111, v13 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v111, v16 offset:1536
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v34, s29, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s29, s22
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s29, s21
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s23
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s23
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s103, s2
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s8, s2, 31
	s_lshr_b32 s8, s8, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s8
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s8, s9, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s96, s8, 0x7fffffc0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s14, s14, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v2, 0, 1, s28
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_cmp_gt_i32_e64 s75, s102, v34
	.loc	1 809 9                         ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s28
	v_cmp_ne_u32_e64 s44, 1, v2
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s8, s29, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 64
	s_min_i32 s8, s103, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s9, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 26
	s_add_i32 s8, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s8, s8, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s14, s14, s8
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x38
	s_load_b32 s66, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v77, s30, v1
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_and_b32_e32 v54, 16, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s96, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_cmp_eq_u32_e64 s39, 0, v54
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v33, v8
	s_cbranch_scc1 .LBB0_12
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[76:83], s[0:1], 0x8
	v_dual_mov_b32 v4, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v77
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	s_xor_b32 s9, s3, s100
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s40, 0
	s_mul_f32 s8, s7, 0x4f7ffffe
	v_cndmask_b32_e64 v1, 0x80000000, v1, s75
	s_ashr_i32 s9, s9, 31
	v_mov_b32_e32 v25, 0
	v_writelane_b32 v255, s41, 1
	s_xor_b32 s10, s19, s9
	s_cvt_u32_f32 s8, s8
	s_sub_i32 s7, 0, s5
	s_load_b32 s1, s[0:1], 0x6c
	v_writelane_b32 v255, s42, 2
	s_sub_i32 s9, s10, s9
	s_mul_i32 s7, s7, s8
	s_mul_i32 s10, s9, s100
	v_bfe_i32 v6, v0, 3, 1
	v_writelane_b32 v255, s43, 3
	s_and_b32 s25, s81, 0xffff
	s_mov_b32 s24, s80
	v_mov_b32_e32 v26, v25
	buffer_load_u16 v33, v1, s[24:27], 0 offen
	s_mov_b32 s24, 0
	v_lshlrev_b32_e32 v1, 1, v0
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	v_writelane_b32 v255, s24, 4
	v_and_b32_e32 v38, 24, v1
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v5, 7, v0
	s_sub_i32 s3, s3, s10
	v_writelane_b32 v255, s25, 5
	s_mul_hi_u32 s7, s8, s7
	s_abs_i32 s10, s3
	s_add_i32 s8, s8, s7
	s_ashr_i32 s6, s6, 31
	v_writelane_b32 v255, s26, 6
	s_ashr_i32 s3, s3, 31
	s_mul_hi_u32 s7, s10, s8
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v45, 0x410, v6
	v_writelane_b32 v255, s27, 7
	v_mul_u32_u24_e32 v46, 0x90, v5
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_xor_b32 s3, s3, s6
	s_mul_i32 s6, s7, s5
	s_add_i32 s8, s7, 1
	v_writelane_b32 v255, s28, 8
	s_sub_i32 s6, s10, s6
	v_xor_b32_e32 v117, v46, v45
	s_sub_i32 s10, s6, s5
	s_cmp_ge_u32 s6, s5
	v_writelane_b32 v255, s29, 9
	s_cselect_b32 s7, s8, s7
	s_cselect_b32 s6, s10, s6
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v113, s23, v34
	v_writelane_b32 v255, s30, 10
	v_mov_b16_e32 v34.l, 0
	v_xor_b32_e32 v52, 0x830, v117
	s_add_i32 s8, s7, 1
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s1, s1, 0x3fb8aa3b
	.loc	1 758 19                        ; attention.py:758:19
	s_cmp_ge_u32 s6, s5
	v_writelane_b32 v255, s31, 11
	s_cselect_b32 s5, s8, s7
	s_lshl_b32 s0, s66, 4
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s9, s9, s101
	v_dual_mov_b32 v28, v25 :: v_dual_lshlrev_b32 v37, 4, v35
	v_writelane_b32 v255, s0, 12
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v35, 63, v0
	v_dual_mov_b32 v189, 0xff800000 :: v_dual_and_b32 v2, 64, v0
	v_dual_mov_b32 v3, 0x5410 :: v_dual_lshlrev_b32 v36, 5, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s80, s66, v35
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 4, v2
	v_cndmask_b32_e64 v40, 0x3276, v4, s39
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v37, v36, v37, v38
	v_cndmask_b32_e64 v39, 0x1054, v3, s39
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v42, 4, v5
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v43, 0x70, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v77, off
	scratch_store_b32 off, v54, off offset:4
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[77:78], null, s66, v0, v[35:36]
	s_and_b32 s83, s83, 0xffff
	v_dual_mov_b32 v20, v25 :: v_dual_lshlrev_b32 v41, 7, v35
	v_mov_b32_e32 v12, v25
	v_lshl_or_b32 v35, v39, 8, v39
	v_add_nc_u32_e32 v39, 0, v37
	v_xor_b32_e32 v78, 0x1860, v117
	v_xor_b32_e32 v79, 0x1870, v117
	v_xor_b32_e32 v80, 0x1840, v117
	v_xor_b32_e32 v81, 0x1850, v117
	v_xor_b32_e32 v82, 0x1820, v117
	v_xor_b32_e32 v83, 0x1830, v117
	v_xor_b32_e32 v84, 0x1810, v117
	s_mov_b32 s56, s82
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	v_or_b32_e32 v116, v36, v38
	v_lshl_or_b32 v36, v40, 8, v40
	v_xad_u32 v40, v37, 8, 0
	s_mov_b32 s57, s83
	v_xor_b32_e32 v38, v42, v43
	v_xad_u32 v42, v37, 16, 0
	v_xad_u32 v37, v37, 24, 0
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v168, 0, v78
	v_add_nc_u32_e32 v169, 0, v79
	v_add_nc_u32_e32 v171, 0, v81
	v_add_nc_u32_e32 v173, 0, v83
	v_add_nc_u32_e32 v174, 0, v84
	v_lshrrev_b32_e32 v44, 3, v2
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v36, 0x760076, v36
	v_dual_mov_b32 v14, v25 :: v_dual_and_b32 v35, 0x540054, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_or3_b32 v143, v41, v44, v38
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v112, 4, v54
	v_xor_b32_e32 v43, 8, v116
	v_xor_b32_e32 v45, 16, v116
	v_xor_b32_e32 v46, 24, v116
	v_xor_b32_e32 v38, 16, v117
	v_xor_b32_e32 v41, 32, v117
	v_xor_b32_e32 v44, 48, v117
	v_xor_b32_e32 v47, 64, v117
	v_xor_b32_e32 v48, 0x50, v117
	v_xor_b32_e32 v49, 0x60, v117
	v_xor_b32_e32 v50, 0x70, v117
	v_xor_b32_e32 v51, 0x820, v117
	v_xor_b32_e32 v53, 0x810, v117
	v_xor_b32_e32 v54, 0x860, v117
	v_xor_b32_e32 v55, 0x870, v117
	v_xor_b32_e32 v56, 0x840, v117
	v_xor_b32_e32 v57, 0x850, v117
	v_xor_b32_e32 v58, 0x1040, v117
	v_xor_b32_e32 v59, 0x1050, v117
	v_xor_b32_e32 v60, 0x1060, v117
	v_xor_b32_e32 v61, 0x1070, v117
	v_xor_b32_e32 v62, 0x1010, v117
	v_xor_b32_e32 v63, 0x1020, v117
	v_xor_b32_e32 v64, 0x1030, v117
	v_lshl_or_b32 v35, v35, 4, v35
	v_lshl_or_b32 v36, v36, 4, v36
	v_xor_b32_e32 v86, 16, v143
	v_xor_b32_e32 v87, 32, v143
	v_xor_b32_e32 v89, 48, v143
	v_xor_b32_e32 v90, 64, v143
	v_xor_b32_e32 v91, 0x50, v143
	v_xor_b32_e32 v92, 0x60, v143
	v_xor_b32_e32 v93, 0x70, v143
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v144, 0, v43
	v_dual_mov_b32 v17, v25 :: v_dual_add_nc_u32 v146, 0, v46
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v148, 0, v41
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v150, 0, v47
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v152, 0, v49
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v154, 0, v51
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v115, s22, v113
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v156, 0, v53
	v_dual_mov_b32 v13, v25 :: v_dual_add_nc_u32 v158, 0, v55
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v160, 0, v57
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v145, 0, v45
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v162, 0, v59
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v147, 0, v38
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v164, 0, v61
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v149, 0, v44
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v166, 0, v63
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v151, 0, v48
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v153, 0, v50
	v_subrev_nc_u32_e32 v114, s21, v113
	v_or_b32_e32 v118, 11, v0
	v_or_b32_e32 v119, 16, v0
	v_or_b32_e32 v120, 17, v0
	v_or_b32_e32 v121, 18, v0
	v_or_b32_e32 v122, 19, v0
	v_or_b32_e32 v123, 24, v0
	v_or_b32_e32 v124, 25, v0
	v_or_b32_e32 v125, 26, v0
	v_or_b32_e32 v126, 27, v0
	v_or_b32_e32 v127, 32, v0
	v_or_b32_e32 v128, 33, v0
	v_or_b32_e32 v129, 34, v0
	v_or_b32_e32 v130, 35, v0
	v_or_b32_e32 v131, 40, v0
	v_or_b32_e32 v132, 41, v0
	v_or_b32_e32 v133, 42, v0
	v_or_b32_e32 v134, 43, v0
	v_or_b32_e32 v135, 48, v0
	v_or_b32_e32 v136, 49, v0
	v_or_b32_e32 v137, 50, v0
	v_or_b32_e32 v138, 51, v0
	v_or_b32_e32 v139, 56, v0
	v_or_b32_e32 v140, 57, v0
	v_or_b32_e32 v141, 58, v0
	v_or_b32_e32 v142, 59, v0
	v_dual_mov_b32 v188, v25 :: v_dual_add_nc_u32 v159, 0, v56
	v_add_nc_u32_e32 v161, 0, v58
	v_add_nc_u32_e32 v163, 0, v60
	v_add_nc_u32_e32 v165, 0, v62
	v_add_nc_u32_e32 v167, 0, v64
	v_and_b32_e32 v175, 0x5040504, v35
	v_and_b32_e32 v176, 0x7060706, v36
	v_add_nc_u32_e32 v177, 0, v86
	v_add_nc_u32_e32 v178, 0, v87
	v_add_nc_u32_e32 v179, 0, v89
	v_add_nc_u32_e32 v180, 0, v90
	v_add_nc_u32_e32 v181, 0, v91
	v_add_nc_u32_e32 v182, 0, v92
	v_add_nc_u32_e32 v183, 0, v93
	s_mov_b32 s40, 0x76543210
	s_mov_b32 s52, s78
	s_mov_b32 s78, s54
	s_and_b32 s77, s77, 0xffff
	s_lshl_b32 s41, s66, 1
	s_lshl_b32 s46, s66, 3
	s_lshl_b32 s47, s66, 5
	s_and_b32 s53, s79, 0xffff
	s_mov_b32 s79, s55
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v34.h, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v184, s1, v34 :: v_dual_add_nc_u32 v155, 0, v52
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s1, s5, s3
	v_add_nc_u32_e32 v170, 0, v80
	s_sub_i32 s1, s1, s3
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v187, v184 :: v_dual_add_nc_u32 v172, 0, v82
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s1, s1, s9
	ds_load_b64 v[78:79], v39
	ds_load_b64 v[80:81], v40
	ds_load_b64 v[82:83], v42
	ds_load_b64 v[84:85], v37
	.loc	1 821 32 is_stmt 0              ; attention.py:821:32
	s_mul_i32 s0, s1, s103
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mov_b32 v186, v184 :: v_dual_add_nc_u32 v157, 0, v54
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v255, s0, 13
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v185, v184
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v255, s75, 14
	v_writelane_b32 v255, s66, 15
	v_writelane_b32 v255, s80, 16
	v_writelane_b32 v255, s56, 17
	v_writelane_b32 v255, s57, 18
	v_writelane_b32 v255, s58, 19
	v_writelane_b32 v255, s59, 20
	v_writelane_b32 v255, s60, 21
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v228, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v235, v44
	v_cvt_f32_i32_e32 v236, v43
	v_mad_u64_u32 v[43:44], null, s2, s66, v[77:78]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s3, s103, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 1, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v223, v57
	v_cvt_f32_i32_e32 v57, v64
	v_cvt_f32_i32_e32 v64, v55
	v_cvt_f32_i32_e32 v55, v56
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v56, v34
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v34, v43, s41, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s80, s3
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v229, v48
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s9, s103, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 2, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v231, v47
	v_cvt_f32_i32_e32 v227, v35
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v35, s96, v133
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s2, v255, 12
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v226, v52
	v_cvt_f32_i32_e32 v52, v37
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v37, s96, v135
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v224, v53
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s13, s103, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 3, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v53, v36
	v_cvt_f32_i32_e32 v230, v51
	v_cvt_f32_i32_e32 v51, v39
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v39, s96, v137
	v_or_b32_e32 v33, s96, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v225, v54
	v_cvt_f32_i32_e32 v54, v49
	v_cvt_f32_i32_e32 v49, v38
	v_cvt_f32_i32_e32 v237, v41
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s19, s103, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 8, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, s96, v139
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v232, v50
	v_cvt_f32_i32_e32 v50, v40
	v_cvt_f32_i32_e32 v238, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v222, v58
	v_cvt_f32_i32_e32 v58, v63
	v_cvt_f32_i32_e32 v234, v45
	v_cvt_f32_i32_e32 v233, v46
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s23, s103, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 9, v0
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v250, v43, s66, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s19, s80, s19
	s_and_b32 s9, s80, s9
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(17)
	v_mov_b16_e64 v213.h, v213.l
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v90, 0x80000000, v250, s9
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v204.h, v204.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v56, v187, v56
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s11, s103, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 10, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v61, v184, v61
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s11, s80, s11
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v62, v62
	v_dual_mul_f32 v58, v186, v58 :: v_dual_mul_f32 v53, v184, v53
	v_dual_mul_f32 v54, v184, v54 :: v_dual_mul_f32 v49, v186, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s24, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v118
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v50, v187, v50
	v_dual_mul_f32 v64, v185, v64 :: v_dual_mul_f32 v55, v186, v55
	v_mul_f32_e32 v57, v187, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s12, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v119
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v59, v186, v59
	v_mul_f32_e32 v51, v187, v51
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s12, s80, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s103, v33
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v33, s96, v120
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s15, s80, s15
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e32 vcc_lo, s103, v33
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v33, s96, v121
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s21, s103, v33
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v33, s96, v122
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s1, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v124
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s16, s80, s16
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s6, s103, v33
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v33, s96, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s20, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v126
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s7, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v128
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s18, s80, s18
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s8, s103, v33
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v33, s96, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v130
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s17, s80, s17
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s10, s103, v33
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_lshlrev_b32_e32 v33, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s80, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	s_clause 0x1
	buffer_load_u16 v47, v33, s[52:55], 0 offen
	buffer_load_u16 v48, v34, s[52:55], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v131
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s80, s23
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s23, s103, v35
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v35, s96, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s22, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v132
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s13, s103, v33
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v33, v43, s46, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	s_mul_i32 s3, s66, 10
	v_add_lshl_u32 v34, v43, s3, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s80, s24
	s_mul_i32 s24, s66, 24
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s3, s103, v35
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v35, v43, s2, 1
	s_clause 0x1
	buffer_load_u16 v33, v33, s[52:55], 0 offen
	buffer_load_u16 v34, v34, s[52:55], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v35, s15
	s_mul_i32 s15, s66, 18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v36, v43, s15, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s15, s80, s21
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s21, s103, v37
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v37, s96, v136
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v36, 0x80000000, v36, s15
	s_clause 0x1
	buffer_load_u16 v35, v35, s[52:55], 0 offen
	buffer_load_u16 v36, v36, s[52:55], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s103, v37
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v43, s24, 1
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s24, s103, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, s96, v140
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s21, s80, s21
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v37, s16
	s_mul_i32 s16, s66, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v38, v43, s16, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s16, s80, s20
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s20, s103, v39
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v39, s96, v138
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v38, 0x80000000, v38, s16
	s_clause 0x1
	buffer_load_u16 v37, v37, s[52:55], 0 offen
	buffer_load_u16 v38, v38, s[52:55], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s103, v39
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v39, v43, s47, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s20, s80, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v39, 0x80000000, v39, s18
	s_mul_i32 s18, s66, 34
	v_add_lshl_u32 v40, v43, s18, 1
	s_mul_i32 s18, s66, 40
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v40, 0x80000000, v40, s17
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s103, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v41, v43, s18, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s18, s80, s22
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v39, v39, s[52:55], 0 offen
	buffer_load_u16 v40, v40, s[52:55], 0 offen
	v_cndmask_b32_e64 v41, 0x80000000, v41, s18
	s_mul_i32 s18, s66, 42
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_lshl_u32 v42, v43, s18, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s18, s80, s23
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s18
	s_mul_i32 s18, s66, 3
	s_clause 0x1
	buffer_load_u16 v41, v41, s[52:55], 0 offen
	buffer_load_u16 v42, v42, s[52:55], 0 offen
	v_add_lshl_u32 v86, v43, s18, 1
	s_mul_i32 s18, s66, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v251, v43, s18, 1
	s_mul_i32 s18, s66, 11
	v_cndmask_b32_e64 v253, 0x80000000, v86, s19
	v_add_lshl_u32 v252, v43, s18, 1
	s_mul_i32 s18, s66, 17
	v_cndmask_b32_e64 v89, 0x80000000, v251, s11
	v_add_lshl_u32 v63, v43, s18, 1
	s_mul_i32 s18, s66, 19
	v_cndmask_b32_e64 v86, 0x80000000, v252, s12
	v_add_lshl_u32 v239, v43, s18, 1
	s_mul_i32 s18, s66, 25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v240, v43, s18, 1
	s_mul_i32 s18, s66, 27
	v_add_lshl_u32 v241, v43, s18, 1
	s_mul_i32 s18, s66, 33
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_lshl_u32 v242, v43, s18, 1
	s_mul_i32 s18, s66, 35
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	v_add_lshl_u32 v243, v43, s18, 1
	s_mul_i32 s18, s66, 41
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v244, v43, s18, 1
	s_mul_i32 s18, s66, 43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v245, v43, s18, 1
	s_mul_i32 s18, s66, 48
	v_add_lshl_u32 v44, v43, s18, 1
	s_mul_i32 s18, s66, 49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v246, v43, s18, 1
	s_mul_i32 s18, s66, 50
	v_add_lshl_u32 v45, v43, s18, 1
	s_mul_i32 s18, s66, 51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v247, v43, s18, 1
	s_mul_i32 s18, s66, 56
	v_add_lshl_u32 v46, v43, s18, 1
	s_mul_i32 s18, s66, 57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v248, v43, s18, 1
	s_mul_i32 s18, s66, 58
	v_add_lshl_u32 v87, v43, s18, 1
	s_mul_i32 s18, s66, 59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v249, v43, s18, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s96, v141
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s22, s103, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s96, v142
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s96, s96, 64
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s103, v43
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v44, s21
	v_cndmask_b32_e64 v44, 0x80000000, v45, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s20, s80, s24
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v43, v43, s[52:55], 0 offen
	buffer_load_u16 v44, v44, s[52:55], 0 offen
	v_cndmask_b32_e64 v45, 0x80000000, v46, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s20, s80, s22
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v46, 0x80000000, v87, s20
	s_clause 0x5
	buffer_load_u16 v87, v86, s[52:55], 0 offen
	buffer_load_u16 v86, v89, s[52:55], 0 offen
	buffer_load_u16 v89, v253, s[52:55], 0 offen
	buffer_load_u16 v90, v90, s[52:55], 0 offen
	buffer_load_u16 v45, v45, s[52:55], 0 offen
	buffer_load_u16 v46, v46, s[52:55], 0 offen
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v34.h, v87.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v33.h, v86.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v48.h, v89.l
	v_cndmask_b32_e32 v89, 0x80000000, v239, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s6
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v47.h, v90.l
	v_cndmask_b32_e32 v90, 0x80000000, v240, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s7
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v91, 0x80000000, v241, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s8
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v92, 0x80000000, v242, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s10
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v93, 0x80000000, v243, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v94, 0x80000000, v244, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s3
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v96, 0x80000000, v245, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s15
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v97, 0x80000000, v246, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s16
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v98, 0x80000000, v247, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s17
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v99, 0x80000000, v248, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s18
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s96, s14
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v100, 0x80000000, v249, vcc_lo
	s_clause 0xb
	buffer_load_u16 v239, v91, s[52:55], 0 offen
	buffer_load_u16 v95, v90, s[52:55], 0 offen
	buffer_load_u16 v241, v89, s[52:55], 0 offen
	buffer_load_u16 v240, v63, s[52:55], 0 offen
	buffer_load_u16 v90, v96, s[52:55], 0 offen
	buffer_load_u16 v89, v94, s[52:55], 0 offen
	buffer_load_u16 v242, v93, s[52:55], 0 offen
	buffer_load_u16 v96, v92, s[52:55], 0 offen
	buffer_load_u16 v92, v100, s[52:55], 0 offen
	buffer_load_u16 v91, v99, s[52:55], 0 offen
	buffer_load_u16 v93, v98, s[52:55], 0 offen
	buffer_load_u16 v94, v97, s[52:55], 0 offen
	v_add_nc_u32_e32 v63, 0, v143
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v97, v185, v230 :: v_dual_mul_f32 v100, v184, v225
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v63, v[47:48]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v63.l, 0
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v47.h, v221.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v184, v232
	v_dual_mul_f32 v98, v186, v226 :: v_dual_mul_f32 v99, v187, v224
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v47.l, v63.l
	v_mov_b16_e64 v213.l, v63.l
	v_mov_b16_e64 v204.l, v63.l
	v_mov_b16_e64 v63.h, v203.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v177, v[33:34]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v48, v47
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v48.h, v220.l
	v_mov_b16_e32 v48.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v56, v56, v204 :: v_dual_mul_f32 v59, v59, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v63.h, v63.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v97, v48
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v97.h, v219.l
	v_mov_b16_e32 v97.l, v63.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v221, 0xff800000, v47, s98
	v_cndmask_b32_e64 v204, 0xff800000, v56, s104
	v_cndmask_b32_e64 v220, 0xff800000, v48, s95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v97, v98, v97
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v98.h, v218.l
	v_mov_b16_e32 v98.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v98, v99, v98
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v99.h, v217.l
	v_mov_b16_e32 v99.l, v63.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v219, 0xff800000, v97, s99
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v97, v186, v234
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v217, 0xff800000, v98, s90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v98, v187, v233 :: v_dual_mul_f32 v99, v100, v99
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v100.h, v215.l
	v_mov_b16_e32 v100.l, v63.l
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v47, v221, v220, v219
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v218, 0xff800000, v99, s91
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v99, v184, v231
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, v64, v100
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v100.h, v214.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v214, v185, v238 :: v_dual_mul_f32 v55, v55, v100
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v100.h, v216.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v216, 0xff800000, v64, s81
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v64, v185, v235
	v_mul_f32_e32 v100, v214, v100
	v_mul_f32_e32 v214, v187, v237
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v48, v217, v218, v216
.Ltmp4:
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v214, v214, v213
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v213, 0xff800000, v100, s69
	v_cndmask_b32_e64 v215, 0xff800000, v55, s88
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v100, v185, v229
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v214, 0xff800000, v214, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v55, v215, v214, v213
	v_max3_f32 v47, v47, v48, v55
.Ltmp6:
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v48.h, v212.l
	v_mov_b16_e32 v48.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v55, v184, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v48, v55, v48
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v55.h, v211.l
	v_mov_b16_e32 v55.l, v63.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v211, 0xff800000, v48, vcc_hi
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v55, v64, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v64.h, v210.l
	v_mov_b16_e32 v64.l, v63.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v210, 0xff800000, v55, s65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v97, v97, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v64.h, v209.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v209, 0xff800000, v97, s64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v98, v98, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v64.h, v208.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v97, v185, v222
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v48, v211, v210, v209
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v208, 0xff800000, v98, s63
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v99, v99, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v64.h, v207.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v207, 0xff800000, v99, s102
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v100, v100, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v64.h, v205.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v205, v186, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v205, v205, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v64.h, v206.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v206, v186, v227
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v205, 0xff800000, v205, s100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v64, v206, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v206, 0xff800000, v100, s101
	v_cndmask_b32_e64 v64, 0xff800000, v64, s70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v55, v208, v207, v206
	v_max3_f32 v56, v205, v204, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_max3_f32 v48, v48, v55, v56
.Ltmp10:
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v55.h, v202.l
	v_mov_b16_e32 v55.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v56, v184, v223
	v_mul_f32_e32 v55, v56, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v56.h, v201.l
	v_mov_b16_e32 v56.l, v63.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, 0xff800000, v55, s67
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v56, v97, v56
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v97.h, v200.l
	v_mov_b16_e32 v97.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v60, v187, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v56, 0xff800000, v56, s86
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v62, v185, v62
	v_mul_f32_e32 v60, v60, v97
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v97.h, v198.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v61, v61, v97
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v97.h, v197.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v99, 0xff800000, v61, s94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v62, v62, v97
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v97.h, v196.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v98, 0xff800000, v62, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v58, v58, v97
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v97.h, v195.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v62, 0xff800000, v59, s85
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v55, v56
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v195, 0xff800000, v58, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v57, v57, v97
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v97.h, v199.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v100, 0xff800000, v57, s93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v54, v54, v97
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v97, 0xff800000, v60, s84
	v_cndmask_b32_e64 v199, 0xff800000, v54, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v60, v97, v99, v98
	v_max3_f32 v54, v195, v100, v199
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v59, v59, v62, v60
	v_max3_f32 v47, v59, v54, v47
.Ltmp14:
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v54.h, v194.l
	v_mov_b16_e32 v54.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v52, v185, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v53, v53, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v54.h, v193.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v196, 0xff800000, v53, s83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v52, v52, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v54.h, v192.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v51, v51, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v54.h, v191.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v191, 0xff800000, v52, s4
	v_cndmask_b32_e64 v61, 0xff800000, v51, s74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v50, v50, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v54.h, v190.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v60, 0xff800000, v50, s73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v49, v54
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v61, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v192, 0xff800000, v49, s68
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v196, v191
	v_max3_f32 v49, v49, v192, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v47, v47, v48, v49
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v48, v47, s40, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v57, v189, v47, v48
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v55, v57
	v_sub_f32_e32 v48, v56, v57
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v33, v189, v57
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v64, v57
	v_sub_f32_e32 v61, v61, v57
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v48, v48
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v60, v60, v57
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v60, v60
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v47, s67
	v_cndmask_b32_e64 v59, 0, v48, s86
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.h, v63.l
	v_mov_b16_e32 v48.h, v63.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v198, 0, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v47.l, v58.h
	v_mov_b16_e32 v48.l, v59.h
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_cmp_o_f32_e64 s1, v58, v58
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v38.h, v239.l
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v47, 1, v47
	v_and_b32_e32 v48, 1, v48
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v36.h, v241.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v35.h, v240.l
	v_mov_b16_e32 v37.h, v95.l
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v47, v58, v47, 0x7fff
	v_add3_u32 v48, v59, v48, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v40.h, v242.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v39.h, v96.l
	v_mov_b16_e32 v42.h, v90.l
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s1
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v41.h, v89.l
	ds_store_b64 v178, v[35:36]
	ds_store_b64 v179, v[37:38]
	ds_store_b64 v180, v[39:40]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v47, v48, s40, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v181, v[41:42]
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v41, v33
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v44.h, v93.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v43.h, v94.l
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v49, v47, v48, v175
	v_perm_b32 v50, v47, v48, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v62, v57
	v_sub_f32_e32 v48, v97, v57
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v46.h, v92.l
	v_mov_b16_e32 v45.h, v91.l
	ds_store_b64 v182, v[43:44]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v48, v48
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s70
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_store_b64 v183, v[45:46]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v198
	ds_load_b128 v[37:40], v147
	ds_load_b128 v[230:233], v168
	ds_load_b128 v[234:237], v169
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v61, 0, v61, s74
	v_cndmask_b32_e64 v60, 0, v60, s73
	v_cndmask_b32_e64 v62, 0, v47, s85
	v_cndmask_b32_e64 v190, 0, v48, s84
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v47.h, v63.l
	v_mov_b16_e32 v48.h, v63.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[89:92], v148
	ds_load_b128 v[222:225], v198 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v47.l, v62.h
	v_mov_b16_e64 v48.l, v190.h
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	v_cmp_o_f32_e64 s1, v62, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v47, 1, v47
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v47, v62, v47, 0x7fff
	v_add3_u32 v48, v190, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s1
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v47, v48, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v51, v47, v48, v175
	v_perm_b32 v52, v47, v48, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v99, v57
	v_sub_f32_e32 v48, v98, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v193, 0, v47, s94
	v_cndmask_b32_e64 v194, 0, v48, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.h, v63.l
	v_mov_b16_e32 v48.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v47.l, v193.h
	v_mov_b16_e64 v48.l, v194.h
	v_cmp_o_f32_e32 vcc_lo, v194, v194
	v_cmp_o_f32_e64 s1, v193, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v47, 1, v47
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v47, v193, v47, 0x7fff
	v_add3_u32 v48, v194, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s1
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v47, v48, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v53, v47, v48, v175
	v_perm_b32 v54, v47, v48, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v195, v57
	v_sub_f32_e32 v48, v100, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v195, 0, v47, s39
	v_cndmask_b32_e64 v197, 0, v48, s93
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.h, v63.l
	v_mov_b16_e32 v48.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v47.l, v195.h
	v_mov_b16_e64 v48.l, v197.h
	v_cmp_o_f32_e32 vcc_lo, v197, v197
	v_cmp_o_f32_e64 s1, v195, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v47, 1, v47
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v47, v195, v47, 0x7fff
	v_add3_u32 v48, v197, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s1
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v189
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v47, v48, s40, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v189, 0, v41, vcc_lo
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v55, v47, v48, v175
	v_perm_b32 v56, v47, v48, v176
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v154
	ds_load_b128 v[45:48], v155
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v189
	v_mul_f32_e32 v18, v18, v189
	v_mul_f32_e32 v19, v19, v189
	v_mul_f32_e32 v20, v20, v189
	v_mul_f32_e32 v21, v21, v189
	v_mul_f32_e32 v22, v22, v189
	v_mul_f32_e32 v23, v23, v189
	v_mul_f32_e32 v24, v24, v189
	v_mul_f32_e32 v25, v25, v189
	v_mul_f32_e32 v26, v26, v189
	v_mul_f32_e32 v27, v27, v189
	v_mul_f32_e32 v28, v28, v189
	v_mul_f32_e32 v29, v29, v189
	v_mul_f32_e32 v30, v30, v189
	v_mul_f32_e32 v31, v31, v189
	v_mul_f32_e32 v32, v32, v189
	v_mul_f32_e32 v9, v9, v189
	v_mul_f32_e32 v10, v10, v189
	v_mul_f32_e32 v11, v11, v189
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[49:56], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v161
	ds_load_b128 v[45:48], v162
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[49:56], v[25:32]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v199, v57
	v_sub_f32_e32 v34, v221, v57
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v189
	v_mul_f32_e32 v13, v13, v189
	v_mul_f32_e32 v14, v14, v189
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v189
	v_mul_f32_e32 v16, v16, v189
	v_mul_f32_e32 v1, v1, v189
	v_mul_f32_e32 v2, v2, v189
	v_mul_f32_e32 v3, v3, v189
	v_mul_f32_e32 v4, v4, v189
	v_mul_f32_e32 v5, v5, v189
	v_mul_f32_e32 v6, v6, v189
	v_mul_f32_e32 v7, v7, v189
	v_mul_f32_e32 v8, v8, v189
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[226:229], v156
	ds_load_b128 v[37:40], v153
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[49:56], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[238:241], v170
	ds_load_b128 v[45:48], v167
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[230:237], v[49:56], v[1:8]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v33, s38
	v_cndmask_b32_e64 v50, 0, v34, s98
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v49.h
	v_mov_b16_e32 v34.l, v50.h
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_cmp_o_f32_e64 s1, v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v49, v33, 0x7fff
	v_add3_u32 v34, v50, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v230, v33, v34, v175
	v_perm_b32 v231, v33, v34, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v220, v57
	v_sub_f32_e32 v34, v219, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v33, s95
	v_cndmask_b32_e64 v52, 0, v34, s99
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v51.h
	v_mov_b16_e32 v34.l, v52.h
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_cmp_o_f32_e64 s1, v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v51, v33, 0x7fff
	v_add3_u32 v34, v52, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v232, v33, v34, v175
	v_perm_b32 v233, v33, v34, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v217, v57
	v_sub_f32_e32 v34, v218, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v33, s90
	v_cndmask_b32_e64 v54, 0, v34, s91
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v53.h
	v_mov_b16_e32 v34.l, v54.h
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_cmp_o_f32_e64 s1, v53, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v53, v33, 0x7fff
	v_add3_u32 v34, v54, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v234, v33, v34, v175
	v_perm_b32 v235, v33, v34, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v216, v57
	v_sub_f32_e32 v34, v215, v57
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[93:96], v149
	ds_load_b128 v[215:218], v150
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v33, s81
	v_cndmask_b32_e64 v56, 0, v34, s88
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v55.h
	v_mov_b16_e32 v34.l, v56.h
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_cmp_o_f32_e64 s1, v55, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v55, v33, 0x7fff
	v_add3_u32 v34, v56, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v236, v33, v34, v175
	v_perm_b32 v237, v33, v34, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v214, v57
	v_sub_f32_e32 v34, v213, v57
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[222:229], v[230:237], v[17:24]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v34, v34
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[89:96], v[230:237], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[89:92], v163
	ds_load_b128 v[93:96], v164
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v33, s45
	v_cndmask_b32_e64 v87, 0, v34, s69
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v86.h
	v_mov_b16_e32 v34.l, v87.h
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	v_cmp_o_f32_e64 s1, v86, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[89:96], v[230:237], v[9:16]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[242:245], v171
	ds_load_b128 v[89:92], v172
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v86, v33, 0x7fff
	v_add3_u32 v34, v87, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v223, v33, v34, v175
	v_perm_b32 v224, v33, v34, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v211, v57
	v_sub_f32_e32 v34, v210, v57
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[238:245], v[230:237], v[1:8]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v97, 0, v33, vcc_hi
	v_cndmask_b32_e64 v98, 0, v34, s65
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v97.h
	v_mov_b16_e32 v34.l, v98.h
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_cmp_o_f32_e64 s1, v97, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v97, v33, 0x7fff
	v_add3_u32 v34, v98, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v225, v33, v34, v175
	v_perm_b32 v226, v33, v34, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v209, v57
	v_sub_f32_e32 v34, v208, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v99, 0, v33, s64
	v_cndmask_b32_e64 v100, 0, v34, s63
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v99.h
	v_mov_b16_e32 v34.l, v100.h
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_cmp_o_f32_e64 s1, v99, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v99, v33, 0x7fff
	v_add3_u32 v34, v100, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v227, v33, v34, v175
	v_perm_b32 v228, v33, v34, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v207, v57
	v_sub_f32_e32 v34, v206, v57
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[206:209], v157
	ds_load_b128 v[210:213], v158
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v199, 0, v33, s102
	v_cndmask_b32_e64 v200, 0, v34, s101
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v33.l, v199.h
	v_mov_b16_e64 v34.l, v200.h
	v_cmp_o_f32_e32 vcc_lo, v200, v200
	v_cmp_o_f32_e64 s1, v199, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v199, v33, 0x7fff
	v_add3_u32 v34, v200, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v229, v33, v34, v175
	v_perm_b32 v230, v33, v34, v176
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[219:222], v151
	ds_load_b128 v[33:36], v152
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[206:213], v[223:230], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[215:222], v[223:230], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[93:96], v173
	ds_load_b128 v[218:221], v174
	ds_load_b128 v[206:209], v198 offset:4096
	ds_load_b128 v[210:213], v165
	ds_load_b128 v[41:44], v166
	ds_load_b128 v[214:217], v198 offset:6144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[223:230], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v205, v57
	v_sub_f32_e32 v90, v204, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v92.h, v63.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v94, v192, v57
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[206:213], v[223:230], v[9:16]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v90, v90
	v_exp_f32_e32 v94, v94
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v198, 0, v89, s100
	v_cndmask_b32_e64 v201, 0, v90, s104
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v89.h, v63.l
	v_mov_b16_e32 v90.h, v63.l
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v192, 0, v94, s68
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v89.l, v198.h
	v_mov_b16_e64 v90.l, v201.h
	v_cmp_o_f32_e32 vcc_lo, v201, v201
	v_cmp_o_f32_e64 s1, v198, v198
	v_mov_b16_e64 v94.l, v192.h
	v_and_b32_e32 v89, 1, v89
	v_and_b32_e32 v90, 1, v90
	v_mov_b16_e32 v94.h, v63.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v89, v198, v89, 0x7fff
	v_add3_u32 v90, v201, v90, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v94, 1, v94
	v_cndmask_b16 v90.l, 0x7fff, v89.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v90.h, 0x7fff, v90.h, vcc_lo
	v_cmp_o_f32_e64 s1, v64, v64
	v_add3_u32 v94, v192, v94, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v91, v90, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v89, v91, v90, v175
	v_perm_b32 v90, v91, v90, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v91, v196, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v91, v91
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v196, 0, v91, s83
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v91.l, v64.h
	v_mov_b16_e32 v91.h, v63.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v92.l, v196.h
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v91, 1, v91
	v_and_b32_e32 v92, 1, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v91, v64, v91, 0x7fff
	v_add3_u32 v92, v196, v92, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v92.l, 0x7fff, v91.h, s1
	v_cndmask_b16 v92.h, 0x7fff, v92.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v192, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v93, v92, s40, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v94.h, 0x7fff, v94.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_perm_b32 v91, v93, v92, v175
	v_perm_b32 v92, v93, v92, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v93, v191, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v93, v93
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v191, 0, v93, s4
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v93.h, v63.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v93.l, v191.h
	v_cmp_o_f32_e64 s1, v191, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v93, 1, v93
	v_add3_u32 v93, v191, v93, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v94.l, 0x7fff, v93.h, s1
	v_cmp_o_f32_e64 s1, v61, v61
	v_permlanex16_b32 v95, v94, s40, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_perm_b32 v93, v95, v94, v175
	v_perm_b32 v94, v95, v94, v176
	v_mov_b16_e32 v95.l, v61.h
	v_mov_b16_e32 v95.h, v63.l
	v_mov_b16_e32 v63.l, v60.h
	v_and_b32_e32 v95, 1, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v63, 1, v63
	v_add3_u32 v95, v61, v95, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v63, v60, v63, 0x7fff
	v_cndmask_b16 v63.l, 0x7fff, v95.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v63.h, 0x7fff, v63.h, vcc_lo
	v_permlanex16_b32 v96, v63, s40, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v95, v96, v63, v175
	v_perm_b32 v96, v96, v63, v176
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[89:96], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[33:36], v159
	ds_load_b128 v[37:40], v160
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[89:96], v[9:16]
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v41, v199, v200 :: v_dual_add_f32 v42, v198, v201
	v_add_f32_e32 v43, v64, v196
	v_add_f32_e32 v44, v191, v192
	v_add_f32_e32 v45, v61, v60
.Ltmp21:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[214:221], v[89:96], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[33:40], v[89:96], v[17:24]
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v58, v59
	v_add_f32_e32 v34, v62, v190
	v_dual_add_f32 v35, v193, v194 :: v_dual_add_f32 v36, v195, v197
	v_dual_add_f32 v37, v49, v50 :: v_dual_add_f32 v38, v51, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v33, v33, v34
	v_dual_add_f32 v39, v97, v98 :: v_dual_add_f32 v34, v35, v36
	v_add_f32_e32 v36, v53, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v35, v37, v38
	v_dual_add_f32 v37, v55, v56 :: v_dual_add_f32 v38, v86, v87
	v_dual_add_f32 v40, v99, v100 :: v_dual_add_f32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v36, v36, v37 :: v_dual_add_f32 v37, v38, v39
	v_dual_add_f32 v38, v40, v41 :: v_dual_add_f32 v39, v42, v43
	v_add_f32_e32 v40, v44, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v34, v35, v36 :: v_dual_add_f32 v35, v37, v38
	v_dual_add_f32 v36, v39, v40 :: v_dual_add_f32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v34, v35, v36
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v34, v33, s40, 0xfedcba98 op_sel:[1,0]
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v33, v188, v189
	v_mov_b32_e32 v189, v57
	v_mov_b32_e32 v188, v33
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v88
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 822 32                        ; attention.py:822:32
	v_readlane_b32 s0, v255, 13
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v222, s96, v112
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v87, 2, v112
	v_or_b32_e32 v97, 22, v112
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 4, v88
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s2, s96, s0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v223, s96, v87
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s5, s2, s42
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, vcc_lo
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v34, s5, v104
	v_add_nc_u32_e32 v35, s5, v105
	v_add_nc_u32_e32 v36, s5, v66
	v_add_nc_u32_e32 v37, s5, v106
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 8, v88
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v38, s5, v67
	v_add_nc_u32_e32 v39, s5, v68
	v_add_nc_u32_e32 v40, s5, v69
	v_add_nc_u32_e32 v41, s5, v107
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v42, s5, v70
	v_add_nc_u32_e32 v43, s5, v71
	v_add_nc_u32_e32 v44, s5, v73
	v_add_nc_u32_e32 v45, s5, v72
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 12, v88
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v46, s5, v74
	v_add_nc_u32_e32 v47, s5, v75
	v_add_nc_u32_e32 v48, s5, v76
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v86, s2, v112, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v98, 24, v112
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v232, s96, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v251, 0x70, v86
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s6, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 16, v88
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v254, 0x74, v86
	v_add_nc_u32_e32 v87, 4, v86
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v233, s96, v98
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v97, 44, v86
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v98, 48, v86
	v_add_nc_u32_e32 v197, 56, v86
	v_add_nc_u32_e32 v198, 60, v86
	v_add_nc_u32_e32 v200, 64, v86
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s7, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 20, v88
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v201, 52, v86
	v_add_nc_u32_e32 v202, 0x48, v86
	v_add_nc_u32_e32 v203, 0x4c, v86
	v_add_nc_u32_e32 v214, 0x50, v86
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v215, 0x54, v86
	v_add_nc_u32_e32 v217, 0x58, v86
	v_add_nc_u32_e32 v218, 0x5c, v86
	v_add_nc_u32_e32 v219, 0x60, v86
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s8, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 24, v88
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v220, 0x64, v86
	v_add_nc_u32_e32 v221, 0x6c, v86
	v_add_nc_u32_e32 v206, 0x44, v86
	v_add_nc_u32_e32 v253, 0x68, v86
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v99, 0x78, v86
	v_add_nc_u32_e32 v100, 0x7c, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s9, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 28, v88
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s10, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 32, v88
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s11, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 36, v88
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s12, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 40, v88
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s13, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 44, v88
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s15, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 48, v88
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s16, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v101
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s17, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s18, s103, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v103
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s19, s103, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v33, s5, v65
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s1
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s103, v223
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s3
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s6
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s86, s75, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s7
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s8
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s9
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s10
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s11
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x5
	buffer_load_u8 v33, v33, s[76:79], 0 offen
	buffer_load_u8 v34, v34, s[76:79], 0 offen
	buffer_load_u8 v35, v35, s[76:79], 0 offen
	buffer_load_u8 v37, v37, s[76:79], 0 offen
	buffer_load_u8 v38, v38, s[76:79], 0 offen
	buffer_load_u8 v39, v39, s[76:79], 0 offen
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s12
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s13
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s13, s103, v232
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s16
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s15
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s15, s103, v233
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s17
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v209, 0x80000000, v97, s13
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s18
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x3
	buffer_load_u8 v41, v41, s[76:79], 0 offen
	buffer_load_u8 v44, v44, s[76:79], 0 offen
	buffer_load_u8 v42, v42, s[76:79], 0 offen
	buffer_load_u8 v46, v46, s[76:79], 0 offen
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s60, s19
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s16, v255, 4
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x5
	buffer_load_u8 v43, v43, s[76:79], 0 offen
	buffer_load_u8 v47, v47, s[76:79], 0 offen
	buffer_load_u8 v40, v40, s[76:79], 0 offen
	buffer_load_u8 v36, v36, s[76:79], 0 offen
	buffer_load_u8 v48, v48, s[76:79], 0 offen
	buffer_load_u8 v45, v45, s[76:79], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s103, v222
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s23, v255, 11
	v_readlane_b32 s17, v255, 5
	v_readlane_b32 s18, v255, 6
	v_readlane_b32 s19, v255, 7
	v_readlane_b32 s20, v255, 8
	v_readlane_b32 s21, v255, 9
	v_readlane_b32 s22, v255, 10
	v_mov_b32_e32 v96, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v92, s19 :: v_dual_mov_b32 v93, s20
	v_dual_mov_b32 v94, s21 :: v_dual_mov_b32 v95, s22
	v_dual_mov_b32 v91, s18 :: v_dual_mov_b32 v90, s17
	v_mov_b32_e32 v89, s16
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s67, s75, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v210, 0x80000000, v98, s15
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s99, s75, s13
	s_and_b32 s90, s75, s15
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(15)
	ds_store_b8 v108, v33
	s_waitcnt vmcnt(12)
	ds_store_b8 v108, v37 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v108, v41 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v108, v44 offset:1536
	ds_store_b8 v109, v34
	ds_store_b8 v109, v38 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v109, v42 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v109, v46 offset:1536
	ds_store_b8 v110, v35
	ds_store_b8 v110, v39 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v110, v43 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v110, v47 offset:1536
	s_waitcnt vmcnt(2)
	ds_store_b8 v111, v36
	ds_store_b8 v111, v40 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v111, v45 offset:1024
	ds_store_b8 v111, v48 offset:1536
	v_add_nc_u32_e32 v37, 0, v116
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[33:36], v37 offset1:1
	ds_load_2addr_stride64_b64 v[190:193], v37 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[33:34], v[78:79], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[35:36], v[78:79], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[190:191], v[78:79], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[192:193], v[78:79], v[89:96] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[89:92], v144 offset1:1
	ds_load_2addr_stride64_b64 v[93:96], v144 offset0:2 offset1:3
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 28, v112
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v191, 32, v86
	v_cndmask_b32_e64 v192, 0x80000000, v87, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v234, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 30, v112
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s16, s103, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v235, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 32, v112
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v211, 0x80000000, v197, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s17, s103, v235
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v236, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 26, v112
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[80:81], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[91:92], v[80:81], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[93:94], v[80:81], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[95:96], v[80:81], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[89:92], v145 offset1:1
	ds_load_2addr_stride64_b64 v[93:96], v145 offset0:2 offset1:3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v237, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 36, v112
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s18, s103, v236
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v212, 0x80000000, v198, s17
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s81, s75, s16
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s19, s103, v237
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v238, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 38, v112
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v213, 0x80000000, v200, s18
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s88, s75, s17
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v208, 0x80000000, v201, s19
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s20, s103, v238
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v239, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 40, v112
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s91, s75, s19
	s_and_b32 s45, s75, s18
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v216, 0x80000000, v202, s20
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s21, s103, v239
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v240, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 42, v112
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[82:83], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[91:92], v[82:83], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[93:94], v[82:83], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[95:96], v[82:83], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[89:92], v146 offset1:1
	ds_load_2addr_stride64_b64 v[93:96], v146 offset0:2 offset1:3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v241, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 44, v112
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s22, s103, v240
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v252, 0x80000000, v203, s21
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 vcc_hi, s75, s20
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s23, s103, v241
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v242, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 46, v112
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s65, s75, s21
	s_and_b32 s64, s75, s22
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v87, 0x80000000, v215, s23
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s24, s103, v242
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v243, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 48, v112
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s63, s75, s23
	s_and_b32 s102, s75, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s25, s103, v243
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v244, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 50, v112
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[95:96], v[84:85], v[33:40] neg_lo:[1,1,0]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v95, 18, v112
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[93:94], v[84:85], v[41:48] neg_lo:[1,1,0]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v94, 14, v112
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v245, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 54, v112
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v230, s96, v95
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v95, 36, v86
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v229, s96, v94
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v94, 28, v86
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v246, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 56, v112
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s11, s103, v230
	v_cmp_gt_i32_e64 s10, s103, v229
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v96, 20, v112
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[84:85], v[57:64] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v247, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 34, v112
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v205, 0x80000000, v95, s11
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v95, 58, v112
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v231, s96, v96
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s29, s103, v247
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v249, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 16, v112
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v204, 0x80000000, v94, s10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v89, 4, v112
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v94, 0x80000000, v251, s29
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v251, s96, v95
	v_or_b32_e32 v250, s96, v190
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v190, 52, v112
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v96, 40, v86
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s12, s103, v231
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v95, 60, v112
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[49:56], v[91:92], v[84:85], v[49:56] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v248, s96, v190
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v190, 0x80000000, v86, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s103, v251
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v224, s96, v89
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v90, 6, v112
	v_or_b32_e32 v91, 8, v112
	v_or_b32_e32 v92, 10, v112
	v_or_b32_e32 v93, 12, v112
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v207, 0x80000000, v96, s12
	v_cndmask_b32_e32 v96, 0x80000000, v254, vcc_lo
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v254, s96, v95
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v95, 62, v112
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v89, 8, v86
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s103, v224
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v225, s96, v90
	v_or_b32_e32 v226, s96, v91
	v_or_b32_e32 v227, s96, v92
	v_or_b32_e32 v228, s96, v93
	v_or_b32_e32 v95, s96, v95
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v90, 12, v86
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s6, s103, v225
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v91, 16, v86
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s7, s103, v226
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v92, 20, v86
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s8, s103, v227
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v93, 24, v86
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s9, s103, v228
	v_cmp_gt_i32_e64 s26, s103, v244
	v_cmp_gt_i32_e64 s27, s103, v245
	v_cmp_gt_i32_e64 s28, s103, v246
	v_cmp_gt_i32_e64 s30, s103, v249
	v_cmp_gt_i32_e64 s31, s103, v250
	v_cmp_gt_i32_e64 s33, s103, v248
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v193, 0x80000000, v89, s3
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s85, s75, s3
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s103, v254
	v_cmp_gt_i32_e64 s3, s103, v95
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v194, 0x80000000, v90, s6
	v_cndmask_b32_e64 v195, 0x80000000, v91, s7
	v_cndmask_b32_e64 v196, 0x80000000, v92, s8
	v_cndmask_b32_e64 v199, 0x80000000, v93, s9
	v_cndmask_b32_e64 v191, 0x80000000, v191, s31
	v_cndmask_b32_e64 v206, 0x80000000, v206, s30
	v_cndmask_b32_e64 v86, 0x80000000, v214, s22
	v_cndmask_b32_e64 v89, 0x80000000, v217, s24
	v_cndmask_b32_e64 v90, 0x80000000, v218, s25
	v_cndmask_b32_e64 v91, 0x80000000, v219, s26
	v_cndmask_b32_e64 v92, 0x80000000, v220, s27
	v_cndmask_b32_e64 v253, 0x80000000, v253, s33
	v_cndmask_b32_e64 v93, 0x80000000, v221, s28
	v_cndmask_b32_e64 v97, 0x80000000, v99, s1
	v_cndmask_b32_e64 v98, 0x80000000, v100, s3
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s84, s75, s6
	s_and_b32 s94, s75, s7
	s_and_b32 s0, s75, s8
	s_and_b32 s39, s75, s9
	s_and_b32 s93, s75, s10
	s_and_b32 s38, s75, s31
	s_and_b32 s98, s75, s11
	s_and_b32 s95, s75, s12
	s_and_b32 s69, s75, s30
	s_and_b32 s101, s75, s25
	s_and_b32 s100, s75, s26
	s_and_b32 s104, s75, s27
	s_and_b32 s70, s75, s33
	s_and_b32 s83, s75, s28
	s_and_b32 s4, s75, s29
	s_and_b32 s68, s75, vcc_lo
	s_and_b32 s74, s75, s1
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s44
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s73, s75, s3
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v222, v113
	v_cmp_le_i32_e64 s1, v223, v113
	v_cmp_le_i32_e64 s3, v224, v113
	v_cmp_le_i32_e64 s6, v225, v113
	v_cmp_le_i32_e64 s9, v228, v113
	v_cmp_le_i32_e64 s11, v250, v113
	v_cmp_le_i32_e64 s30, v248, v113
	v_cmp_le_i32_e64 s7, v226, v113
	v_cmp_le_i32_e64 s8, v227, v113
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s37, vcc_lo, s67
	s_and_b32 s1, s1, s86
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v229, v113
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s85
	s_and_b32 s6, s6, s84
	s_and_b32 s9, s9, s39
	s_and_b32 s11, s11, s38
	s_mov_b32 s72, s70
	s_and_b32 s30, s30, s70
	s_mov_b32 s70, s38
	s_and_not1_b32 s38, s67, exec_lo
	s_and_b32 s37, s37, exec_lo
	s_mov_b32 s71, s39
	s_and_not1_b32 s39, s86, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v230, v113
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s7, s94
	s_and_b32 s8, s8, s0
	s_or_b32 s67, s38, s37
	s_or_b32 s86, s39, s1
	s_and_not1_b32 s1, s85, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s37, s84, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v231, v113
	v_cmp_le_i32_e64 s15, v232, v113
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s10, s10, s93
	s_or_b32 s85, s1, s3
	s_or_b32 s84, s37, s6
	s_and_not1_b32 s1, s94, exec_lo
	s_and_b32 s3, s7, exec_lo
	s_and_not1_b32 s6, s0, exec_lo
	s_and_b32 s7, s8, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v233, v113
	v_cmp_le_i32_e64 s17, v237, v113
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s12, s98
	s_or_b32 s94, s1, s3
	s_or_b32 s0, s6, s7
	s_and_not1_b32 s1, s71, exec_lo
	s_and_b32 s3, s9, exec_lo
	s_and_not1_b32 s6, s93, exec_lo
	s_and_b32 s7, s10, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v234, v113
	v_cmp_le_i32_e64 s19, v235, v113
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s13, s95
	s_and_b32 s15, s15, s99
	s_or_b32 s39, s1, s3
	s_or_b32 s93, s6, s7
	s_and_not1_b32 s1, s70, exec_lo
	s_and_b32 s3, s11, exec_lo
	s_and_not1_b32 s6, s98, exec_lo
	s_and_b32 s7, s12, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s20, v236, v113
	v_cmp_le_i32_e64 s21, v249, v113
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s16, s16, s90
	s_and_b32 s17, s17, s91
	s_or_b32 s38, s1, s3
	s_or_b32 s98, s6, s7
	s_and_not1_b32 s1, s95, exec_lo
	s_and_b32 s3, s13, exec_lo
	s_and_not1_b32 s6, s99, exec_lo
	s_and_b32 s7, s15, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s22, v238, v113
	v_cmp_le_i32_e64 s23, v239, v113
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s18, s18, s81
	s_and_b32 s19, s19, s88
	s_or_b32 s95, s1, s3
	s_or_b32 s99, s6, s7
	s_and_not1_b32 s1, s90, exec_lo
	s_and_b32 s3, s16, exec_lo
	s_and_not1_b32 s6, s91, exec_lo
	s_and_b32 s7, s17, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s24, v240, v113
	v_cmp_le_i32_e64 s25, v241, v113
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s20, s20, s45
	s_and_b32 s21, s21, s69
	s_or_b32 s90, s1, s3
	s_or_b32 s91, s6, s7
	s_and_not1_b32 s1, s81, exec_lo
	s_and_b32 s3, s18, exec_lo
	s_and_not1_b32 s6, s88, exec_lo
	s_and_b32 s7, s19, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s26, v242, v113
	v_cmp_le_i32_e64 s27, v243, v113
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, vcc_hi
	s_and_b32 s23, s23, s65
	s_or_b32 s81, s1, s3
	s_or_b32 s88, s6, s7
	s_and_not1_b32 s1, s45, exec_lo
	s_and_b32 s3, s20, exec_lo
	s_and_not1_b32 s6, s69, exec_lo
	s_and_b32 s7, s21, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v244, v113
	v_cmp_le_i32_e64 s29, v245, v113
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s64
	s_and_b32 s25, s25, s63
	s_or_b32 s45, s1, s3
	s_or_b32 s69, s6, s7
	s_and_not1_b32 s1, vcc_hi, exec_lo
	s_and_b32 s3, s22, exec_lo
	s_and_not1_b32 s6, s65, exec_lo
	s_and_b32 s7, s23, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v246, v113
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s102
	s_and_b32 s27, s27, s101
	s_or_b32 vcc_hi, s1, s3
	s_or_b32 s65, s6, s7
	s_and_not1_b32 s1, s64, exec_lo
	s_and_b32 s3, s24, exec_lo
	s_and_not1_b32 s6, s63, exec_lo
	s_and_b32 s7, s25, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s33, v247, v113
	v_cmp_le_i32_e64 s34, v251, v113
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s100
	s_and_b32 s29, s29, s104
	s_or_b32 s64, s1, s3
	s_or_b32 s63, s6, s7
	s_and_not1_b32 s1, s102, exec_lo
	s_and_b32 s3, s26, exec_lo
	s_and_not1_b32 s6, s101, exec_lo
	s_and_b32 s7, s27, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s35, v254, v113
	v_cmp_le_i32_e64 s36, v95, v113
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s31, s83
	s_or_b32 s102, s1, s3
	s_or_b32 s101, s6, s7
	s_and_not1_b32 s1, s100, exec_lo
	s_and_b32 s3, s28, exec_lo
	s_and_not1_b32 s6, s104, exec_lo
	s_and_b32 s7, s29, exec_lo
	s_and_b32 s33, s33, s4
	s_and_b32 s34, s34, s68
	s_or_b32 s100, s1, s3
	s_or_b32 s104, s6, s7
	s_and_not1_b32 s1, s72, exec_lo
	s_and_b32 s3, s30, exec_lo
	s_and_not1_b32 s6, s83, exec_lo
	s_and_b32 s7, s31, exec_lo
	s_and_b32 s35, s35, s74
	s_and_b32 s36, s36, s73
	s_or_b32 s70, s1, s3
	s_or_b32 s83, s6, s7
	s_and_not1_b32 s1, s4, exec_lo
	s_and_b32 s3, s33, exec_lo
	s_and_not1_b32 s6, s68, exec_lo
	s_and_b32 s7, s34, exec_lo
	s_or_b32 s4, s1, s3
	s_or_b32 s68, s6, s7
	s_and_not1_b32 s1, s74, exec_lo
	s_and_b32 s3, s35, exec_lo
	s_and_not1_b32 s6, s73, exec_lo
	s_and_b32 s7, s36, exec_lo
	s_or_b32 s74, s1, s3
	s_or_b32 s73, s6, s7
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention.py:0
	s_clause 0x1f
	buffer_load_u16 v202, v190, s[56:59], 0 offen
	buffer_load_u16 v201, v192, s[56:59], 0 offen
	buffer_load_u16 v203, v193, s[56:59], 0 offen
	buffer_load_u16 v200, v194, s[56:59], 0 offen
	buffer_load_u16 v198, v195, s[56:59], 0 offen
	buffer_load_u16 v197, v196, s[56:59], 0 offen
	buffer_load_u16 v196, v199, s[56:59], 0 offen
	buffer_load_u16 v195, v204, s[56:59], 0 offen
	buffer_load_u16 v221, v205, s[56:59], 0 offen
	buffer_load_u16 v220, v207, s[56:59], 0 offen
	buffer_load_u16 v219, v209, s[56:59], 0 offen
	buffer_load_u16 v218, v210, s[56:59], 0 offen
	buffer_load_u16 v215, v211, s[56:59], 0 offen
	buffer_load_u16 v214, v212, s[56:59], 0 offen
	buffer_load_u16 v213, v213, s[56:59], 0 offen
	buffer_load_u16 v217, v208, s[56:59], 0 offen
	buffer_load_u16 v212, v216, s[56:59], 0 offen
	buffer_load_u16 v211, v252, s[56:59], 0 offen
	buffer_load_u16 v210, v86, s[56:59], 0 offen
	buffer_load_u16 v209, v87, s[56:59], 0 offen
	buffer_load_u16 v208, v89, s[56:59], 0 offen
	buffer_load_u16 v207, v90, s[56:59], 0 offen
	buffer_load_u16 v205, v91, s[56:59], 0 offen
	buffer_load_u16 v204, v92, s[56:59], 0 offen
	buffer_load_u16 v194, v93, s[56:59], 0 offen
	buffer_load_u16 v193, v94, s[56:59], 0 offen
	buffer_load_u16 v190, v96, s[56:59], 0 offen
	buffer_load_u16 v192, v97, s[56:59], 0 offen
	buffer_load_u16 v216, v206, s[56:59], 0 offen
	buffer_load_u16 v199, v191, s[56:59], 0 offen
	buffer_load_u16 v191, v98, s[56:59], 0 offen
	buffer_load_u16 v206, v253, s[56:59], 0 offen
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s43
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 17 is_stmt 0                ; attention.py:0:17
	v_writelane_b32 v255, s2, 22
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v222, v114
	v_cmp_ge_i32_e64 s3, v224, v114
	v_cmp_ge_i32_e64 s6, v225, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s37, v222, v115
	s_mov_b32 s87, s39
	v_cmp_le_i32_e64 s39, v224, v115
	v_cmp_le_i32_e64 s40, v225, v115
	v_writelane_b32 v255, s52, 23
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v223, v114
	s_mov_b32 s2, s38
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s38, v223, v115
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v251, v114
	v_cmp_ge_i32_e64 s71, v254, v114
	v_cmp_ge_i32_e64 s11, v95, v114
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s40, s6, s40
	.loc	1 867 30 is_stmt 0              ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v251, v115
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s39, s3, s39
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v254, v115
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s37, vcc_lo, s37
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e32 vcc_lo, v95, v115
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v226, v114
	v_cmp_ge_i32_e64 s8, v227, v114
	v_cmp_ge_i32_e64 s17, v237, v114
	v_cmp_ge_i32_e64 s18, v234, v114
	s_mov_b32 s89, s98
	s_mov_b32 s98, s41
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s41, v226, v115
	s_mov_b32 s36, s73
	s_mov_b32 s73, s14
	s_mov_b32 s14, s42
	v_cmp_le_i32_e64 s42, v227, v115
	v_writelane_b32 v255, s53, 24
	v_cmp_le_i32_e64 s50, v237, v115
	v_cmp_le_i32_e64 s51, v234, v115
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s38
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v228, v114
	v_cmp_ge_i32_e64 s10, v229, v114
	s_mov_b32 s5, s43
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s43, v228, v115
	s_mov_b32 s35, s74
	s_mov_b32 s74, s44
	v_cmp_le_i32_e64 s44, v229, v115
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s37, s37, s67
	s_and_b32 s1, s1, s86
	s_and_b32 s6, s34, s6
	s_and_b32 s34, s11, vcc_lo
	s_and_b32 s3, s71, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s92, v250, v114
	v_cmp_ge_i32_e64 s12, v230, v114
	s_mov_b32 s75, s46
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s72, v250, v115
	v_cmp_le_i32_e64 s46, v230, v115
	v_writelane_b32 v255, s54, 25
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s38, s39, s85
	s_and_b32 s7, s7, s41
	s_and_b32 s8, s8, s42
	s_and_b32 s17, s17, s50
	s_and_b32 s18, s18, s51
	s_mov_b32 s51, s35
	s_and_b32 s3, s3, s35
	s_mov_b32 s50, s36
	s_and_b32 s34, s34, s36
	s_and_not1_b32 s35, s67, exec_lo
	s_and_b32 s36, s37, exec_lo
	s_and_not1_b32 s37, s86, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v231, v114
	v_cmp_ge_i32_e64 s15, v232, v114
	s_mov_b32 s97, s47
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s47, v231, v115
	v_cmp_le_i32_e64 s48, v232, v115
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s10, s10, s44
	s_and_b32 s9, s9, s43
	s_and_b32 s7, s7, s94
	s_and_b32 s8, s8, s0
	s_or_b32 s67, s35, s36
	s_or_b32 s86, s37, s1
	s_and_not1_b32 s1, s85, exec_lo
	s_and_b32 s35, s38, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v233, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s49, v233, v115
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s9, s9, s87
	s_and_b32 s10, s10, s93
	s_and_b32 s12, s12, s46
	s_and_b32 s11, s92, s72
	s_or_b32 s85, s1, s35
	s_and_not1_b32 s1, s94, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_not1_b32 s35, s0, exec_lo
	s_and_b32 s8, s8, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v235, v114
	v_writelane_b32 v255, s55, 26
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s52, v235, v115
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s39, s40, s84
	s_and_b32 s15, s15, s48
	s_and_b32 s13, s13, s47
	s_and_b32 s12, s12, s89
	s_and_b32 s11, s11, s2
	s_or_b32 s94, s1, s7
	s_or_b32 s0, s35, s8
	s_and_not1_b32 s1, s87, exec_lo
	s_and_b32 s7, s9, exec_lo
	s_and_not1_b32 s8, s93, exec_lo
	s_and_b32 s9, s10, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s20, v236, v114
	v_cmp_ge_i32_e64 s21, v249, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s53, v236, v115
	v_cmp_le_i32_e64 s54, v249, v115
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s13, s13, s95
	s_and_b32 s16, s16, s49
	s_and_b32 s15, s15, s99
	s_and_b32 s37, s39, exec_lo
	s_or_b32 s39, s1, s7
	s_or_b32 s93, s8, s9
	s_and_not1_b32 s1, s2, exec_lo
	s_and_b32 s7, s11, exec_lo
	s_and_not1_b32 s8, s89, exec_lo
	s_and_b32 s9, s12, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v238, v114
	v_cmp_ge_i32_e64 s23, v239, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s55, v238, v115
	v_cmp_le_i32_e64 s56, v239, v115
	s_mov_b32 s41, s98
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s16, s16, s90
	s_and_b32 s19, s19, s52
	s_and_b32 s17, s17, s91
	s_or_b32 s38, s1, s7
	s_or_b32 s98, s8, s9
	s_and_not1_b32 s1, s95, exec_lo
	s_and_b32 s7, s13, exec_lo
	s_and_not1_b32 s8, s99, exec_lo
	s_and_b32 s9, s15, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v240, v114
	v_cmp_ge_i32_e64 s25, v241, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s57, v240, v115
	v_cmp_le_i32_e64 s58, v241, v115
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s20, s20, s53
	s_and_b32 s18, s18, s81
	s_and_b32 s19, s19, s88
	s_and_b32 s21, s21, s54
	s_or_b32 s95, s1, s7
	s_or_b32 s99, s8, s9
	s_and_not1_b32 s1, s90, exec_lo
	s_and_b32 s7, s16, exec_lo
	s_and_not1_b32 s8, s91, exec_lo
	s_and_b32 s9, s17, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v242, v114
	v_cmp_ge_i32_e64 s27, v243, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s59, v242, v115
	v_cmp_le_i32_e64 s60, v243, v115
	s_mov_b32 s66, vcc_hi
	s_mov_b32 vcc_hi, s65
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s20, s20, s45
	s_and_b32 s22, s22, s55
	s_and_b32 s23, s23, s56
	s_and_b32 s21, s21, s69
	s_or_b32 s90, s1, s7
	s_or_b32 s91, s8, s9
	s_and_not1_b32 s1, s81, exec_lo
	s_and_b32 s7, s18, exec_lo
	s_and_not1_b32 s8, s88, exec_lo
	s_and_b32 s9, s19, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v244, v114
	v_cmp_ge_i32_e64 s29, v245, v114
	v_cmp_ge_i32_e64 s33, v247, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s61, v244, v115
	v_cmp_le_i32_e64 s62, v245, v115
	v_cmp_le_i32_e64 s65, v247, v115
	s_mov_b32 s82, s68
	s_mov_b32 s80, s70
	s_mov_b32 s70, s104
	s_mov_b32 s68, s63
	s_mov_b32 s104, s64
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s25, s25, s58
	s_and_b32 s24, s24, s57
	s_and_b32 s22, s22, s66
	s_and_b32 s23, s23, vcc_hi
	s_or_b32 s81, s1, s7
	s_or_b32 s88, s8, s9
	s_and_not1_b32 s1, s45, exec_lo
	s_and_b32 s7, s20, exec_lo
	s_and_not1_b32 s8, s69, exec_lo
	s_and_b32 s9, s21, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s30, v248, v114
	v_cmp_ge_i32_e64 s31, v246, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s63, v248, v115
	v_cmp_le_i32_e64 s64, v246, v115
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s24, s24, s104
	s_and_b32 s25, s25, s68
	s_and_b32 s26, s26, s59
	s_and_b32 s27, s27, s60
	s_or_b32 s45, s1, s7
	s_or_b32 s69, s8, s9
	s_and_not1_b32 s1, s66, exec_lo
	s_and_b32 s7, s22, exec_lo
	s_and_not1_b32 s8, vcc_hi, exec_lo
	s_and_b32 s9, s23, exec_lo
	s_mov_b32 s43, s5
	s_and_b32 s29, s29, s62
	s_and_b32 s28, s28, s61
	s_and_b32 s26, s26, s102
	s_and_b32 s27, s27, s101
	s_and_b32 s33, s33, s65
	s_or_b32 vcc_hi, s1, s7
	s_or_b32 s65, s8, s9
	s_and_not1_b32 s1, s104, exec_lo
	s_and_b32 s5, s24, exec_lo
	s_and_not1_b32 s7, s68, exec_lo
	s_and_b32 s8, s25, exec_lo
	s_and_b32 s28, s28, s100
	s_and_b32 s29, s29, s70
	s_and_b32 s31, s31, s64
	s_and_b32 s30, s30, s63
	s_or_b32 s64, s1, s5
	s_or_b32 s63, s7, s8
	s_and_not1_b32 s1, s102, exec_lo
	s_and_b32 s7, s26, exec_lo
	s_and_not1_b32 s8, s101, exec_lo
	s_and_b32 s9, s27, exec_lo
	s_and_b32 s31, s31, s83
	s_and_b32 s30, s30, s80
	s_or_b32 s102, s1, s7
	s_or_b32 s101, s8, s9
	s_and_not1_b32 s1, s100, exec_lo
	s_and_b32 s7, s28, exec_lo
	s_and_not1_b32 s8, s70, exec_lo
	s_and_b32 s9, s29, exec_lo
	s_and_b32 s33, s33, s4
	s_and_b32 s6, s6, s82
	s_or_b32 s100, s1, s7
	s_or_b32 s104, s8, s9
	s_and_not1_b32 s1, s80, exec_lo
	s_and_b32 s7, s30, exec_lo
	s_and_not1_b32 s8, s83, exec_lo
	s_and_b32 s9, s31, exec_lo
	v_readlane_b32 s56, v255, 17
	s_or_b32 s70, s1, s7
	s_or_b32 s83, s8, s9
	s_and_not1_b32 s1, s4, exec_lo
	v_readlane_b32 s52, v255, 23
	s_and_b32 s7, s33, exec_lo
	s_and_not1_b32 s8, s82, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_mov_b32 s46, s75
	v_readlane_b32 s2, v255, 22
	v_readlane_b32 s60, v255, 21
	v_readlane_b32 s57, v255, 18
	v_readlane_b32 s58, v255, 19
	v_readlane_b32 s59, v255, 20
	v_readlane_b32 s53, v255, 24
	v_readlane_b32 s54, v255, 25
	v_readlane_b32 s55, v255, 26
	v_readlane_b32 s80, v255, 16
	v_readlane_b32 s66, v255, 15
	v_readlane_b32 s75, v255, 14
	s_and_not1_b32 s36, s84, exec_lo
	s_or_b32 s4, s1, s7
	s_or_b32 s68, s8, s6
	s_and_not1_b32 s1, s51, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s6, s50, exec_lo
	s_and_b32 s7, s34, exec_lo
	s_mov_b32 s40, 0x76543210
	s_mov_b32 s44, s74
	s_mov_b32 s42, s14
	s_mov_b32 s14, s73
	s_mov_b32 s47, s97
	s_or_b32 s84, s36, s37
	s_or_b32 s74, s1, s3
	s_or_b32 s73, s6, s7
	s_branch .LBB0_6
.LBB0_11:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:4
	scratch_load_b32 v77, off, off
	v_readlane_b32 s40, v255, 0
	v_readlane_b32 s41, v255, 1
	v_readlane_b32 s42, v255, 2
	v_readlane_b32 s43, v255, 3
	s_waitcnt vmcnt(1)
	v_cmp_eq_u32_e64 s39, 0, v54
.LBB0_12:                               ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v33, v33, v25
	v_div_scale_f32 v34, null, v33, v33, v26
	v_div_scale_f32 v35, null, v33, v33, v27
	v_rcp_f32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v25, v33, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v33, v26
	v_div_scale_f32 v43, null, v33, v33, v28
	v_div_scale_f32 v49, s3, v28, v33, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	s_mov_b32 s14, 0x76543210
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v35, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.h, 0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v41, s1, v27, v33, v27
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	.loc	1 1049 17                       ; attention.py:1049:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	v_fma_f32 v50, -v43, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v33, v33, v29
	v_fmac_f32_e32 v42, v50, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v0, v44, v39
	v_fma_f32 v34, -v34, v45, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v33, v33, v30
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v33, v25
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v33, v26
	v_div_scale_f32 v34, s4, v29, v33, v29
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v33, v33, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v33, v33, v31
	v_fma_f32 v51, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v45
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v51, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v26, -v35, v46, v41
	v_mul_f32_e32 v41, v34, v39
	v_fma_f32 v35, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v66, v25, 16, 1
	v_cmp_o_f32_e64 s35, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v26, v26, v38, v46
	v_fma_f32 v38, -v43, v36, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s1, v30, v33, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v26, v26, v33, v27
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v36, v33, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v33, v33, v17
	v_div_scale_f32 v36, s3, v31, v33, v31
	v_fma_f32 v34, -v47, v41, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v67, v26, 16, 1
	v_cmp_o_f32_e64 s36, v26, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v28, -v40, v42, v43
	v_fma_f32 v46, -v37, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v42, v28, v44 :: v_dual_fmac_f32 v35, v46, v35
	v_fma_f32 v46, -v45, v48, 1.0
	v_div_fmas_f32 v28, v34, v39, v41
	v_fma_f32 v41, -v38, v49, 1.0
	v_fma_f32 v34, -v40, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, v36, v35 :: v_dual_fmac_f32 v48, v46, v48
	v_div_scale_f32 v46, s5, v32, v33, v32
	v_div_scale_f32 v43, null, v33, v33, v18
	v_fma_f32 v39, -v37, v47, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v33, v17
	v_div_fixup_f32 v28, v28, v33, v29
	v_div_fixup_f32 v29, v34, v33, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v33, v33, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v33, v33, v20
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v18, v33, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v33, v31
	v_div_fixup_f32 v31, v35, v33, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v19, v33, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v33, v33, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v33, v20
	v_div_scale_f32 v47, null, v33, v33, v22
	v_div_fixup_f32 v17, v32, v33, v17
	v_fma_f32 v32, -v43, v42, v44
	v_fma_f32 v43, -v37, v34, v38
	v_mul_f32_e32 v44, v41, v40
	v_rcp_f32_e32 v48, v47
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v42
	v_fmac_f32_e32 v34, v43, v36
	v_fma_f32 v39, -v45, v44, v41
	v_div_scale_f32 v42, s3, v21, v33, v21
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v18, v32, v33, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v33, v33, v23
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s5, v22, v33, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v33, v33, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v33, v19
	v_div_fixup_f32 v20, v34, v33, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v33, v23
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v33, v33, v9
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v24, v33, v24
	v_div_scale_f32 v46, null, v33, v33, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v33, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v33, v33, v11
	v_div_fixup_f32 v21, v32, v33, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v33, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s4, v9, v33, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v33, v33, v12
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v40, v32, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v33, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v33, v23
	v_div_fixup_f32 v24, v36, v33, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v33, v33, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v33, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v33, v33, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v33, v13
	v_div_fixup_f32 v9, v32, v33, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v33, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v33, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v33, v33, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v33, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v33, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v33, v33, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v33, v33, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v33, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v33, v33, v2
	v_div_fixup_f32 v13, v32, v33, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s3, v16, v33, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v33, v33, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s4, v1, v33, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v33, v2
	v_div_fixup_f32 v14, v35, v33, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v43, v42, v32
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v33, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v33, v33, v4
	v_div_fmas_f32 v32, v32, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v33, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v32, v33, v16
	v_div_fixup_f32 v1, v34, v33, v1
	v_div_scale_f32 v34, null, v33, v33, v5
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v33, v33, v8
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v32, -v46, v36, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v40, v42, 1.0
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v2, v37, v33, v2
	v_div_fmas_f32 v32, v32, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v38, vcc_lo, v4, v33, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v32, v33, v3
	v_div_scale_f32 v35, null, v33, v33, v6
	v_div_scale_f32 v37, null, v33, v33, v7
	v_mul_f32_e32 v43, v38, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v34, v36, 1.0
	v_rcp_f32_e32 v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v50, -v44, v46, 1.0
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v36, v32, v36
	v_div_scale_f32 v32, s1, v5, v33, v5
	v_fmac_f32_e32 v46, v50, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v47, v42
	v_div_scale_f32 v50, s5, v8, v33, v8
	v_mul_f32_e32 v49, v32, v36
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v38, -v40, v43, v38
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v47, -v34, v49, v32
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v33, v6
	v_fmac_f32_e32 v41, v48, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v47, v36
	v_div_scale_f32 v48, s4, v7, v33, v7
	v_mul_f32_e32 v51, v45, v39
	v_div_fmas_f32 v38, v38, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v34, v49, v32
	v_mul_f32_e32 v52, v48, v41
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v34, -v44, v53, v50
	v_div_fmas_f32 v32, v32, v36, v49
	v_fma_f32 v47, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v51, v40, v39
	v_fmac_f32_e32 v53, v34, v46
	v_div_fixup_f32 v5, v32, v33, v5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v0, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v36, -v44, v53, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v65, v32, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v37, v52, v48
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s34, v32, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v65, v32, v65, 0x7fff
	v_add3_u32 v32, v25, v66, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v25, v26, v67, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v65.h, s34
	v_bfe_u32 v65, v27, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v32.h, s35
	v_bfe_u32 v32, v28, 16, 1
	v_bfe_u32 v66, v29, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v38, v33, v4
	v_div_fixup_f32 v6, v35, v33, v6
	v_div_fixup_f32 v7, v34, v33, v7
	v_div_fixup_f32 v8, v36, v33, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v33, 0, v17, s0
	v_cndmask_b32_e64 v34, 0, v18, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s36
	v_add3_u32 v65, v27, v65, 0x7fff
	v_cmp_o_f32_e64 s34, v27, v27
	v_add3_u32 v27, v28, v32, 0x7fff
	v_cmp_o_f32_e64 s35, v28, v28
	v_add3_u32 v28, v29, v66, 0x7fff
	v_cmp_o_f32_e64 s36, v29, v29
	v_bfe_u32 v29, v30, 16, 1
	v_bfe_u32 v32, v31, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v35, 0, v19, s0
	v_cndmask_b32_e64 v36, 0, v20, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v65.h, s34
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s35
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s36
	v_bfe_u32 v28, v33, 16, 1
	v_add3_u32 v29, v30, v29, 0x7fff
	v_cmp_o_f32_e64 s34, v30, v30
	v_add3_u32 v30, v31, v32, 0x7fff
	v_cmp_o_f32_e64 s35, v31, v31
	v_bfe_u32 v31, v34, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v37, 0, v21, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v33, v28, 0x7fff
	v_cmp_o_f32_e64 s36, v33, v33
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s34
	v_cndmask_b16 v29.h, 0x7fff, v30.h, s35
	v_bfe_u32 v30, v35, 16, 1
	v_bfe_u32 v32, v36, 16, 1
	v_add3_u32 v31, v34, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v34, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v38, 0, v22, s0
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s36
	v_add3_u32 v30, v35, v30, 0x7fff
	v_cmp_o_f32_e64 s35, v35, v35
	v_add3_u32 v32, v36, v32, 0x7fff
	v_cmp_o_f32_e64 s36, v36, v36
	v_cndmask_b16 v28.h, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v37, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s35
	v_bfe_u32 v33, v38, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s36
	v_bfe_u32 v32, v23, 16, 1
	v_add3_u32 v31, v37, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v37, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v39, 0, v9, s0
	v_cndmask_b32_e64 v40, 0, v10, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v33, v38, v33, 0x7fff
	v_cmp_o_f32_e64 s35, v38, v38
	v_add3_u32 v32, v23, v32, 0x7fff
	v_cmp_o_f32_e64 s36, v23, v23
	v_cndmask_b16 v23.l, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v24, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v41, 0, v11, s0
	v_cndmask_b32_e64 v42, 0, v12, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v23.h, 0x7fff, v33.h, s35
	v_bfe_u32 v33, v39, 16, 1
	v_bfe_u32 v34, v40, 16, 1
	v_add3_u32 v31, v24, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v24, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v43, 0, v13, s0
	v_cndmask_b32_e64 v44, 0, v14, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s36
	v_add3_u32 v24, v39, v33, 0x7fff
	v_cmp_o_f32_e64 s35, v39, v39
	v_add3_u32 v33, v40, v34, 0x7fff
	v_cmp_o_f32_e64 s36, v40, v40
	v_cndmask_b16 v32.h, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v41, 16, 1
	v_bfe_u32 v34, v42, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v45, 0, v15, s0
	v_cndmask_b32_e64 v46, 0, v16, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s35
	v_cndmask_b16 v24.h, 0x7fff, v33.h, s36
	v_bfe_u32 v33, v43, 16, 1
	v_add3_u32 v31, v41, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v41, v41
	v_add3_u32 v34, v42, v34, 0x7fff
	v_cmp_o_f32_e64 s35, v42, v42
	v_bfe_u32 v35, v44, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v47, 0, v1, s0
	v_cndmask_b32_e64 v48, 0, v2, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v33, v43, v33, 0x7fff
	v_cmp_o_f32_e64 s36, v43, v43
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s34
	v_cndmask_b16 v31.h, 0x7fff, v34.h, s35
	v_bfe_u32 v34, v45, 16, 1
	v_bfe_u32 v36, v46, 16, 1
	v_add3_u32 v35, v44, v35, 0x7fff
	v_cmp_o_f32_e64 s34, v44, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v49, 0, v3, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v51, 1, v54
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v54, 0, v7, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s36
	v_add3_u32 v34, v45, v34, 0x7fff
	v_cmp_o_f32_e64 s35, v45, v45
	v_add3_u32 v36, v46, v36, 0x7fff
	v_cmp_o_f32_e64 s36, v46, v46
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s34
	v_bfe_u32 v35, v47, 16, 1
	v_bfe_u32 v37, v48, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v50, 0, v4, s0
	v_cndmask_b32_e64 v52, 0, v5, s0
	v_cndmask_b32_e64 v53, 0, v6, s0
	v_cndmask_b32_e64 v55, 0, v8, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s35
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s36
	v_bfe_u32 v36, v49, 16, 1
	v_add3_u32 v35, v47, v35, 0x7fff
	v_cmp_o_f32_e64 s34, v47, v47
	v_add3_u32 v37, v48, v37, 0x7fff
	v_cmp_o_f32_e64 s35, v48, v48
	v_bfe_u32 v40, v54, 16, 1
	v_bfe_u32 v38, v50, 16, 1
	v_add3_u32 v36, v49, v36, 0x7fff
	v_cmp_o_f32_e64 s36, v49, v49
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s34
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s35
	v_bfe_u32 v37, v52, 16, 1
	v_bfe_u32 v39, v53, 16, 1
	v_bfe_u32 v41, v55, 16, 1
	v_add3_u32 v40, v54, v40, 0x7fff
	v_cmp_o_f32_e64 s37, v54, v54
	v_add3_u32 v38, v50, v38, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s36
	v_cmp_o_f32_e64 s34, v50, v50
	v_add3_u32 v37, v52, v37, 0x7fff
	v_cmp_o_f32_e64 s35, v52, v52
	v_add3_u32 v39, v53, v39, 0x7fff
	v_cmp_o_f32_e64 s36, v53, v53
	v_add3_u32 v41, v55, v41, 0x7fff
	v_cmp_o_f32_e64 s38, v55, v55
	v_cndmask_b16 v38.l, 0x7fff, v40.h, s37
	v_mov_b32_e32 v40, 0x5410
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s34
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s35
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s36
	v_cndmask_b16 v38.h, 0x7fff, v41.h, s38
	v_cndmask_b32_e64 v39, v27, v26, s39
	v_cndmask_b32_e64 v26, v26, v27, s39
	v_cndmask_b32_e64 v27, v29, v25, s39
	v_cndmask_b32_e64 v25, v25, v29, s39
	v_cndmask_b32_e64 v29, v23, v28, s39
	v_cndmask_b32_e64 v23, v28, v23, s39
	v_cndmask_b32_e64 v28, v32, v30, s39
	v_mov_b32_e32 v41, 0x7632
	v_cndmask_b32_e64 v30, v30, v32, s39
	v_cndmask_b32_e64 v32, v33, v24, s39
	v_cndmask_b32_e64 v24, v24, v33, s39
	v_cndmask_b32_e64 v33, 0x1054, v40, s39
	v_cndmask_b32_e64 v40, 0x3276, v41, s39
	.loc	1 1046 24                       ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v1, v77, s66
	.loc	1 1046 74 is_stmt 0             ; attention.py:1046:74
	v_or_b32_e32 v56, 1, v51
	v_or_b32_e32 v57, 2, v51
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_lshl_or_b32 v33, v33, 8, v33
	v_lshl_or_b32 v40, v40, 8, v40
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s33, s66, v51
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v41, v34, v31, s39
	v_cndmask_b32_e64 v31, v31, v34, s39
	v_and_b32_e32 v33, 0x540054, v33
	v_and_b32_e32 v40, 0x760076, v40
	v_cndmask_b32_e64 v34, v37, v35, s39
	v_cndmask_b32_e64 v35, v35, v37, s39
	v_cndmask_b32_e64 v37, v38, v36, s39
	v_lshl_or_b32 v33, v33, 4, v33
	v_cndmask_b32_e64 v36, v36, v38, s39
	v_permlanex16_b32 v26, v26, s14, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v38, v40, 4, v40
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v58, 3, v51
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v33, 0x5040504, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v59, 4, v51
	v_or_b32_e32 v60, 5, v51
	v_or_b32_e32 v61, 6, v51
	v_or_b32_e32 v62, 7, v51
	v_or_b32_e32 v63, 16, v51
	v_or_b32_e32 v64, 17, v51
	v_or_b32_e32 v22, 18, v51
	v_or_b32_e32 v21, 19, v51
	v_or_b32_e32 v20, 20, v51
	v_or_b32_e32 v19, 21, v51
	v_or_b32_e32 v18, 22, v51
	v_or_b32_e32 v17, 23, v51
	v_or_b32_e32 v16, 32, v51
	v_or_b32_e32 v15, 33, v51
	v_or_b32_e32 v14, 34, v51
	v_or_b32_e32 v13, 35, v51
	v_or_b32_e32 v12, 36, v51
	v_or_b32_e32 v11, 37, v51
	v_or_b32_e32 v10, 38, v51
	v_or_b32_e32 v9, 39, v51
	v_or_b32_e32 v8, 48, v51
	v_or_b32_e32 v7, 49, v51
	v_or_b32_e32 v6, 50, v51
	v_or_b32_e32 v5, 51, v51
	v_or_b32_e32 v4, 52, v51
	v_or_b32_e32 v3, 53, v51
	v_or_b32_e32 v2, 54, v51
	v_or_b32_e32 v0, 55, v51
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s31, s66, v56
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v51, v1, v51, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s66, v57
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v55, v1, v56, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_permlanex16_b32 v25, v25, s14, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s14, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s14, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s14, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v38, 0x7060706, v38
	v_permlanex16_b32 v31, v31, s14, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s14, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s14, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v40, v26, v39, v33
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s14, s75, s33
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v56, v1, v57, 1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s14
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s75, s31
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s66, v58
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_cndmask_b32_e64 v55, 0x80000000, v55, s14
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s75, s30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v26, v26, v39, v38
	v_perm_b32 v39, v25, v27, v33
	v_perm_b32 v25, v25, v27, v38
	v_perm_b32 v27, v23, v29, v33
	v_perm_b32 v23, v23, v29, v38
	v_perm_b32 v29, v30, v28, v33
	v_perm_b32 v28, v30, v28, v38
	v_perm_b32 v30, v24, v32, v33
	v_perm_b32 v24, v24, v32, v38
	v_perm_b32 v32, v31, v41, v33
	v_perm_b32 v31, v31, v41, v38
	v_perm_b32 v41, v35, v34, v33
	v_perm_b32 v34, v35, v34, v38
	v_perm_b32 v33, v36, v37, v33
	v_perm_b32 v35, v36, v37, v38
	v_mov_b16_e32 v36.l, v40.h
	v_mov_b16_e32 v36.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v56, 0x80000000, v56, s14
	buffer_store_b16 v40, v51, s[40:43], 0 offen
	v_add_lshl_u32 v40, v1, v58, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s66, v59
	v_cmp_gt_i32_e64 s27, s66, v60
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.l, v26.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v36, v55, s[40:43], 0 offen
	buffer_store_b16 v26, v56, s[40:43], 0 offen
	v_add_lshl_u32 v26, v1, v59, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s14, s75, s29
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s66, v61
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_cndmask_b32_e64 v36, 0x80000000, v40, s14
	v_add_lshl_u32 v40, v1, v60, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s75, s28
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v51, v1, v61, 1
	v_cndmask_b32_e64 v26, 0x80000000, v26, s14
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s75, s27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v39.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v40, 0x80000000, v40, s14
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s14, s75, s26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.h, v68.h
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s66, v62
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v51, 0x80000000, v51, s14
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s66, v63
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v68, v36, s[40:43], 0 offen
	buffer_store_b16 v39, v26, s[40:43], 0 offen
	v_add_lshl_u32 v26, v1, v62, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s66, v64
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v37.l, v25.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v38, v40, s[40:43], 0 offen
	buffer_store_b16 v25, v51, s[40:43], 0 offen
	v_add_lshl_u32 v25, v1, v63, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s14, s75, s25
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s66, v22
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v36, v1, v64, 1
	v_cndmask_b32_e64 v26, 0x80000000, v26, s14
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s75, s24
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s66, v21
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v22, v1, v22, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s14
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s75, s23
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s66, v20
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v21, v1, v21, 1
	v_cndmask_b32_e64 v36, 0x80000000, v36, s14
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s75, s22
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s66, v19
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s14
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s75, s21
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s66, v18
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s14
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s75, s20
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s66, v17
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s14
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s75, s19
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s66, v16
	v_cmp_gt_i32_e32 vcc_lo, s66, v4
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v17, v1, v17, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s14
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s75, s18
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s66, v15
	v_cmp_gt_i32_e64 s12, s66, v13
	v_cmp_gt_i32_e64 s10, s66, v11
	v_cmp_gt_i32_e64 s5, s66, v9
	v_cmp_gt_i32_e64 s3, s66, v7
	v_cmp_gt_i32_e64 s0, s66, v5
	v_cmp_gt_i32_e64 s8, s66, v3
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v16, v1, v16, 1
	v_add_lshl_u32 v4, v1, v4, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s66, v14
	v_cmp_gt_i32_e64 s11, s66, v12
	v_cmp_gt_i32_e64 s9, s66, v10
	v_cmp_gt_i32_e64 s4, s66, v8
	v_cmp_gt_i32_e64 s1, s66, v6
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s14
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s75, s17
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s7, s66, v2
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v15, v1, v15, 1
	v_add_lshl_u32 v13, v1, v13, 1
	v_add_lshl_u32 v11, v1, v11, 1
	v_add_lshl_u32 v9, v1, v9, 1
	v_add_lshl_u32 v7, v1, v7, 1
	v_add_lshl_u32 v5, v1, v5, 1
	v_add_lshl_u32 v3, v1, v3, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s14
	v_add_lshl_u32 v14, v1, v14, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s75, s16
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v12, v1, v12, 1
	v_add_lshl_u32 v10, v1, v10, 1
	v_add_lshl_u32 v8, v1, v8, 1
	v_add_lshl_u32 v6, v1, v6, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s75, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s66, v0
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v2, v1, v2, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s14
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s75, s15
	s_and_b32 s12, s75, s12
	s_and_b32 s10, s75, s10
	s_and_b32 s5, s75, s5
	s_and_b32 s3, s75, s3
	s_and_b32 s0, s75, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s75, s8
	s_and_b32 s13, s75, s13
	s_and_b32 s11, s75, s11
	s_and_b32 s9, s75, s9
	s_and_b32 s4, s75, s4
	s_and_b32 s1, s75, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v1, v0, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v37.h, v68.h
	v_mov_b16_e32 v42.l, v23.h
	v_mov_b16_e32 v42.h, v68.h
	v_mov_b16_e32 v43.l, v27.h
	v_mov_b16_e32 v43.h, v68.h
	v_mov_b16_e32 v44.l, v28.h
	v_mov_b16_e32 v44.h, v68.h
	v_mov_b16_e32 v45.l, v29.h
	v_mov_b16_e32 v45.h, v68.h
	v_mov_b16_e32 v46.l, v24.h
	v_mov_b16_e32 v46.h, v68.h
	v_mov_b16_e32 v47.l, v30.h
	v_mov_b16_e32 v47.h, v68.h
	v_mov_b16_e32 v48.l, v31.h
	v_mov_b16_e32 v48.h, v68.h
	v_mov_b16_e32 v49.l, v32.h
	v_mov_b16_e32 v49.h, v68.h
	v_mov_b16_e32 v50.l, v34.h
	v_mov_b16_e32 v50.h, v68.h
	v_mov_b16_e32 v52.l, v41.h
	v_mov_b16_e32 v52.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v15, 0x80000000, v15, s14
	v_cndmask_b32_e64 v13, 0x80000000, v13, s12
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s75, s7
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v54.l, v33.h
	v_mov_b16_e32 v54.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s75, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v53.l, v35.h
	v_mov_b16_e32 v53.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x18
	buffer_store_b16 v37, v26, s[40:43], 0 offen
	buffer_store_b16 v27, v25, s[40:43], 0 offen
	buffer_store_b16 v43, v36, s[40:43], 0 offen
	buffer_store_b16 v23, v22, s[40:43], 0 offen
	buffer_store_b16 v42, v21, s[40:43], 0 offen
	buffer_store_b16 v29, v20, s[40:43], 0 offen
	buffer_store_b16 v45, v19, s[40:43], 0 offen
	buffer_store_b16 v28, v18, s[40:43], 0 offen
	buffer_store_b16 v44, v17, s[40:43], 0 offen
	buffer_store_b16 v30, v16, s[40:43], 0 offen
	buffer_store_b16 v47, v15, s[40:43], 0 offen
	buffer_store_b16 v24, v14, s[40:43], 0 offen
	buffer_store_b16 v46, v13, s[40:43], 0 offen
	buffer_store_b16 v32, v12, s[40:43], 0 offen
	buffer_store_b16 v49, v11, s[40:43], 0 offen
	buffer_store_b16 v31, v10, s[40:43], 0 offen
	buffer_store_b16 v48, v9, s[40:43], 0 offen
	buffer_store_b16 v41, v8, s[40:43], 0 offen
	buffer_store_b16 v52, v7, s[40:43], 0 offen
	buffer_store_b16 v34, v6, s[40:43], 0 offen
	buffer_store_b16 v50, v5, s[40:43], 0 offen
	buffer_store_b16 v33, v4, s[40:43], 0 offen
	buffer_store_b16 v54, v1, s[40:43], 0 offen
	buffer_store_b16 v35, v2, s[40:43], 0 offen
	buffer_store_b16 v53, v0, s[40:43], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 12
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 105
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 12
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21140
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 12
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           1
        .value_kind:     by_value
      - .offset:         129
        .size:           1
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 12
    .sgpr_count:     107
    .sgpr_spill_count: 27
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 2
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
