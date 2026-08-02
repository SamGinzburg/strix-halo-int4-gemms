	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s78, s[0:1], 0x64
	s_load_b64 s[70:71], s[0:1], 0x5c
	s_load_b64 s[72:73], s[0:1], 0x0
	s_load_b64 s[68:69], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v10, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v65, 2, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v68, 15, v0
	v_and_b32_e32 v69, 64, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v45, 63, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v66, 1, v0
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v67, 1, v0
	s_mov_b32 s52, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s6, s78
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s6
	s_sub_i32 s5, 0, s6
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 2, v10
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s70, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s4, s5
	s_add_i32 s8, s4, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s2, s78
	s_mul_hi_u32 s4, s7, s8
	s_ashr_i32 s5, s5, 31
	s_mul_i32 s9, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s4, s9, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s73, s73, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s5
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s9, s78, 31
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s7, s4, s5
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s12, s9, s78
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s16, s7, 4
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s9, s9
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s5, s16, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s16, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s5, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s8, s9, s8
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s78
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s13, s8, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, v3, s70, v[1:2]
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s9, s9, s13
	s_ashr_i32 s12, s12, 31
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	s_clause 0x1
	s_load_b64 s[10:11], s[0:1], 0x7c
	s_load_b32 s4, s[0:1], 0x84
	.loc	1 798 32                        ; attention.py:798:32
	s_add_i32 s14, s8, 1
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s79, s2, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s9, s6
	s_cmp_ge_u32 s9, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 0x60, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s7, s14, s8
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b32 v1, v1, s[72:75], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s2, s9
	s_add_i32 s8, s7, 1
	s_cmp_ge_u32 s2, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v3, 2, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s8, s7
	v_cmp_eq_u32_e32 vcc_lo, 0, v69
	s_xor_b32 s2, s2, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v3, v65, v3, 0
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s8, s79, s2
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s7, s11, s4
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s4, s10
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, s16
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s16
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s6, s6, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s7, s7, 0x800
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s7, s7, 63
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s8, s8, 6
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s9, s7, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s6, s6, 0x7fffffc0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s9, s9, 26
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s8, s2
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s7, s7, s9
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s80, s8, s6
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s7, s7, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 18 is_stmt 0              ; attention.py:808:18
	s_min_i32 s81, s2, s7
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s80, s81
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_19
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[60:67], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, s16, v68
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v3, s5, v68, 1
	v_dual_mov_b32 v23, 0x7632 :: v_dual_and_b32 v4, 24, v66
	.loc	1 822 49                        ; attention.py:822:49
	v_lshlrev_b32_e32 v46, 4, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e64 s2, 1, v1
	v_dual_mov_b32 v73, 0xff800000 :: v_dual_lshlrev_b32 v24, 4, v10
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[76:77], s[0:1], 0x30
	v_dual_mov_b32 v70, 0xff800000 :: v_dual_lshlrev_b32 v7, 4, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v3, s2
	v_dual_mov_b32 v77, 0xff800000 :: v_dual_and_b32 v8, 24, v0
	v_bfe_i32 v25, v0, 3, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v34, v68, 5, v4
	v_dual_mov_b32 v72, 0xff800000 :: v_dual_and_b32 v13, 60, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v78, v7, v8
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s73, s65, 0xffff
	s_mov_b32 s72, s64
	v_lshrrev_b32_e32 v14, 5, v2
	buffer_load_u16 v11, v1, s[72:75], 0 offen
	v_mov_b32_e32 v1, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v3, 0x78, v0
	v_dual_mov_b32 v74, 0xff800000 :: v_dual_lshlrev_b32 v15, 6, v67
	v_lshrrev_b32_e32 v12, 6, v69
	v_dual_mov_b32 v22, 0x5410 :: v_dual_lshlrev_b32 v9, 3, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v36, v24, v3
	v_lshl_or_b32 v24, v2, 6, v24
	v_and_or_b32 v25, 0x410, v25, v2
	v_mov_b32_e32 v2, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v35, 1, v3
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v49, 16, v34
	v_lshl_or_b32 v86, v10, 10, v36
	v_xor_b32_e32 v50, 8, v78
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v3, v1 :: v_dual_and_b32 v18, 0x7c, v65
	v_or3_b32 v80, v14, v15, v13
	v_dual_mov_b32 v4, v1 :: v_dual_and_b32 v19, 32, v0
	v_cndmask_b32_e64 v20, 0x104, 0, vcc_lo
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v33, s16, v12
	v_dual_mov_b32 v176, 0xff800000 :: v_dual_and_b32 v5, 16, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[47:48], null, s71, v35, v[9:10]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v26, 2, v12
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v102, 0, v49
	v_xor_b32_e32 v48, 0x2d0, v86
	v_xor_b32_e32 v49, 0x360, v86
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v27, 4, v12
	v_add_nc_u32_e32 v107, 0, v50
	v_xor_b32_e32 v50, 0x3f0, v86
	v_or_b32_e32 v28, 6, v12
	v_lshl_or_b32 v81, v68, 8, v18
	v_xor_b32_e32 v51, 0x84, v80
	v_dual_mov_b32 v175, 0xff800000 :: v_dual_lshlrev_b32 v18, 2, v19
	v_or_b32_e32 v29, 8, v12
	v_xor_b32_e32 v13, v20, v13
	v_dual_mov_b32 v83, v1 :: v_dual_add_nc_u32 v44, s4, v33
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s5, s1, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s17, s1, 3
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, 1, v33
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v33, 8, v34
	v_xor_b32_e32 v52, 0x108, v80
	v_dual_mov_b32 v71, 0xff800000 :: v_dual_lshlrev_b32 v16, 6, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v30, 10, v12
	v_cmp_eq_u32_e64 s2, 0, v5
	v_xor_b32_e32 v53, 0x18c, v80
	v_or_b32_e32 v31, 12, v12
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v82, 0, v34
	v_xor_b32_e32 v34, 24, v34
	v_xor_b32_e32 v54, 0x210, v80
	v_add_nc_u32_e32 v162, 0, v48
	v_add_nc_u32_e32 v163, 0, v49
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[48:49], null, s15, v26, v[45:46]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v32, 14, v12
	v_xor_b32_e32 v55, 0x294, v80
	v_add_nc_u32_e32 v164, 0, v50
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[49:50], null, s15, v27, v[45:46]
	v_xor_b32_e32 v56, 0x318, v80
	v_xor_b32_e32 v57, 0x39c, v80
	v_xor_b32_e32 v58, 16, v81
	v_xor_b32_e32 v59, 20, v81
	v_xor_b32_e32 v60, 24, v81
	v_xor_b32_e32 v61, 28, v81
	v_xor_b32_e32 v62, 32, v81
	v_add_nc_u32_e32 v108, 0, v51
	v_mad_u64_u32 v[50:51], null, s15, v28, v[45:46]
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v20, 0, v15
	v_or3_b32 v85, v13, v18, v15
	v_xor_b32_e32 v15, v25, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v101, 0, v33
	v_add_nc_u32_e32 v109, 0, v52
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[51:52], null, s15, v29, v[45:46]
	v_dual_mov_b32 v76, 0xff800000 :: v_dual_lshlrev_b32 v17, 1, v68
	v_mov_b32_e32 v75, 0xff800000
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s71, v9
	v_and_b32_e32 v14, 0x380, v16
	v_lshlrev_b32_e32 v16, 2, v5
	v_cndmask_b32_e64 v22, 0x1054, v22, s2
	v_cndmask_b32_e64 v9, 0x3276, v23, s2
	v_add_nc_u32_e32 v110, 0, v53
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[52:53], null, s15, v30, v[45:46]
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v103, 0, v34
	v_add_nc_u32_e32 v111, 0, v54
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[53:54], null, s15, v31, v[45:46]
	v_add_nc_u32_e32 v112, 0, v55
	v_mad_u64_u32 v[54:55], null, s15, v32, v[45:46]
	v_add_nc_u32_e32 v113, 0, v56
	v_add_nc_u32_e32 v114, 0, v57
	v_add_nc_u32_e32 v118, 0, v58
	v_add_nc_u32_e32 v119, 0, v59
	v_add_nc_u32_e32 v120, 0, v60
	v_add_nc_u32_e32 v121, 0, v61
	v_add_nc_u32_e32 v122, 0, v62
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[55:56], v82
	ds_load_b64 v[57:58], v101
	ds_load_b64 v[59:60], v102
	ds_load_b64 v[61:62], v103
	v_lshl_or_b32 v106, v10, 7, v15
	v_xor_b32_e32 v10, 0x410, v85
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v21, 2, v69
	v_lshl_add_u32 v19, v19, 1, 0
	v_mov_b32_e32 v5, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v37, s16, v26
	v_or_b32_e32 v38, s16, v27
	v_or3_b32 v84, v14, v16, v17
	v_xor_b32_e32 v14, 4, v81
	v_xor_b32_e32 v16, 8, v81
	v_xor_b32_e32 v17, 12, v81
	v_lshl_or_b32 v13, v22, 8, v22
	v_lshl_or_b32 v9, v9, 8, v9
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s82, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v39, s16, v28
	v_or_b32_e32 v40, s16, v29
	v_or_b32_e32 v41, s16, v30
	v_or_b32_e32 v42, s16, v31
	v_or_b32_e32 v43, s16, v32
	v_add_nc_u32_e32 v152, 0, v10
	v_xor_b32_e32 v10, 16, v106
	v_and_or_b32 v79, v6, 1, s82
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v87, v19, v21
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v19, s4, v38
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v18, s4, v37
	v_and_b32_e32 v13, 0x540054, v13
	v_add_nc_u32_e32 v115, 0, v14
	v_add_nc_u32_e32 v116, 0, v16
	v_add_nc_u32_e32 v117, 0, v17
	v_xor_b32_e32 v14, 0x618, v85
	v_xor_b32_e32 v15, 0x820, v85
	v_xor_b32_e32 v16, 0xa28, v85
	v_xor_b32_e32 v17, 0xc30, v85
	v_and_b32_e32 v9, 0x760076, v9
	v_xor_b32_e32 v63, 36, v81
	v_xor_b32_e32 v64, 40, v81
	v_add_nc_u32_e32 v22, s4, v41
	v_add_nc_u32_e32 v23, s4, v42
	v_add_nc_u32_e32 v24, s4, v43
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s12, s12, 0x3fb8aa3b
	v_add_nc_u32_e32 v165, 0, v10
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s18, s3, s5
	v_xor_b32_e32 v125, 44, v81
	v_xor_b32_e32 v126, 48, v81
	v_xor_b32_e32 v127, 52, v81
	v_xor_b32_e32 v128, 56, v81
	v_xor_b32_e32 v129, 60, v81
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 1, v37
	v_cmp_gt_i32_e64 s5, 1, v39
	v_cmp_gt_i32_e64 s6, 1, v40
	v_cmp_gt_i32_e64 s7, 1, v41
	v_cmp_gt_i32_e64 s8, 1, v42
	v_cmp_gt_i32_e64 s9, 1, v43
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v104, s10, v44
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v105, s11, v44
	v_xor_b32_e32 v25, 4, v84
	v_xor_b32_e32 v33, 8, v84
	v_xor_b32_e32 v34, 12, v84
	v_xor_b32_e32 v35, 16, v84
	v_xor_b32_e32 v36, 20, v84
	v_xor_b32_e32 v37, 24, v84
	v_xor_b32_e32 v41, 0x90, v86
	v_xor_b32_e32 v42, 0x120, v86
	v_xor_b32_e32 v43, 0x1b0, v86
	v_xor_b32_e32 v44, 0x240, v86
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v130, s10, v18
	v_subrev_nc_u32_e32 v131, s10, v19
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v137, s11, v18
	v_add_nc_u32_e32 v138, s11, v19
	v_lshl_or_b32 v13, v13, 4, v13
	v_add_nc_u32_e32 v153, 0, v14
	v_add_nc_u32_e32 v154, 0, v15
	v_add_nc_u32_e32 v155, 0, v16
	v_add_nc_u32_e32 v156, 0, v17
	v_xor_b32_e32 v14, 32, v106
	v_xor_b32_e32 v15, 48, v106
	v_xor_b32_e32 v16, 64, v106
	v_xor_b32_e32 v17, 0x50, v106
	v_xor_b32_e32 v18, 0x60, v106
	v_xor_b32_e32 v19, 0x70, v106
	v_lshl_or_b32 v9, v9, 4, v9
	v_add_nc_u32_e32 v123, 0, v63
	v_add_nc_u32_e32 v124, 0, v64
	v_mad_u64_u32 v[63:64], null, s15, v12, v[45:46]
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v134, s10, v22
	v_subrev_nc_u32_e32 v135, s10, v23
	v_subrev_nc_u32_e32 v136, s10, v24
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v141, s11, v22
	v_add_nc_u32_e32 v142, s11, v23
	v_add_nc_u32_e32 v143, s11, v24
	v_or_b32_e32 v89, 38, v79
	v_or_b32_e32 v90, 40, v79
	v_or_b32_e32 v91, 42, v79
	v_or_b32_e32 v92, 44, v79
	v_or_b32_e32 v93, 46, v79
	v_or_b32_e32 v94, 48, v79
	v_or_b32_e32 v95, 50, v79
	v_or_b32_e32 v96, 52, v79
	v_or_b32_e32 v97, 54, v79
	v_or_b32_e32 v98, 56, v79
	v_or_b32_e32 v99, 58, v79
	v_or_b32_e32 v100, 60, v79
	v_add_nc_u32_e32 v125, 0, v125
	v_add_nc_u32_e32 v126, 0, v126
	v_add_nc_u32_e32 v127, 0, v127
	v_add_nc_u32_e32 v128, 0, v128
	v_add_nc_u32_e32 v129, 0, v129
	v_add_nc_u32_e32 v144, 0, v25
	v_add_nc_u32_e32 v145, 0, v33
	v_add_nc_u32_e32 v146, 0, v34
	v_add_nc_u32_e32 v147, 0, v35
	v_add_nc_u32_e32 v148, 0, v36
	v_add_nc_u32_e32 v149, 0, v37
	v_add_nc_u32_e32 v158, 0, v41
	v_add_nc_u32_e32 v159, 0, v42
	v_add_nc_u32_e32 v160, 0, v43
	v_add_nc_u32_e32 v161, 0, v44
	v_and_b32_e32 v64, 0x5040504, v13
	v_add_nc_u32_e32 v166, 0, v14
	v_add_nc_u32_e32 v167, 0, v15
	v_add_nc_u32_e32 v168, 0, v16
	v_add_nc_u32_e32 v169, 0, v17
	v_add_nc_u32_e32 v170, 0, v18
	v_add_nc_u32_e32 v171, 0, v19
	v_and_b32_e32 v172, 0x7060706, v9
	v_or_b32_e32 v174, 62, v79
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s16, s16, s15
	s_lshl_b32 s83, s71, 1
	s_mul_i32 s84, s71, 3
	s_mov_b32 s53, s52
	s_mov_b32 s54, s52
	s_mov_b32 s55, s52
	s_mov_b32 s56, s52
	s_mov_b32 s57, s52
	s_mov_b32 s58, s52
	s_mov_b32 s59, s52
	s_mov_b32 s85, 0x76543210
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s65, s63, 0xffff
	s_mov_b32 s64, s62
	s_mov_b32 s62, s74
	s_mov_b32 s63, s75
	s_and_b32 s73, s67, 0xffff
	s_mov_b32 s72, s66
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e32 vcc_lo, s70, v46
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v11
	v_add_nc_u32_e32 v88, v20, v21
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v20, s4, v39
	v_add_nc_u32_e32 v21, s4, v40
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v38
	v_xor_b32_e32 v38, 28, v84
	v_xor_b32_e32 v39, 0x208, v85
	v_xor_b32_e32 v40, 0xe38, v85
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v132, s10, v20
	v_subrev_nc_u32_e32 v133, s10, v21
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v139, s11, v20
	v_add_nc_u32_e32 v140, s11, v21
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s10, s14, s18
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s11, s13, s17
	v_add_nc_u32_e32 v150, 0, v38
	v_add_nc_u32_e32 v151, 0, v39
	v_add_nc_u32_e32 v157, 0, v40
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v173, s12, v10
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s86, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s86, s86, s16
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 25 is_stmt 0                ; attention.py:0:25
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	v_and_b16 v178.h, 0xff, v43.l
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v43.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v42.l, 0xff, v42.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 877 34                        ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_and_b16 v41.l, 0xff, v41.l
	v_and_b16 v42.h, 0xff, v42.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v184.h, v183.l
	v_mov_b16_e64 v183.l, v43.l
	v_mov_b16_e64 v183.h, v182.l
	v_mov_b16_e64 v182.l, v43.l
	v_mov_b16_e64 v182.h, v181.l
	v_mov_b16_e64 v180.h, v179.l
	v_mov_b16_e64 v179.l, v43.l
	v_mov_b16_e64 v179.h, v178.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_mul_f32_e32 v212, v173, v11
	v_mul_f32_e32 v215, v173, v14
	v_mul_f32_e32 v211, v173, v10
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v44.l, 0xff, v44.l
	v_and_b16 v44.h, 0xff, v44.h
	v_and_b16 v177.h, 0xff, v43.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v181.h, v180.l
	v_mov_b16_e64 v180.l, v43.l
	v_mov_b16_e64 v210.h, v208.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v214, v173, v13
	v_mul_f32_e32 v208, v173, v9
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v9.l, 0xff, v41.h
	v_cmp_ne_u16_e64 s10, 0, v42.l
	v_cmp_ne_u16_e64 s11, 0, v41.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v193.h, v192.l
	v_mov_b16_e64 v192.l, v43.l
	v_mov_b16_e64 v192.h, v191.l
	v_mov_b16_e64 v191.l, v43.l
	v_mov_b16_e64 v191.h, v190.l
	v_mov_b16_e64 v188.h, v187.l
	v_mov_b16_e64 v187.l, v43.l
	v_mov_b16_e64 v187.h, v186.l
	v_mov_b16_e64 v186.l, v43.l
	v_mov_b16_e64 v186.h, v185.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_dual_mul_f32 v22, v173, v22 :: v_dual_mul_f32 v183, v211, v183
	v_mul_f32_e32 v18, v173, v18
	v_dual_mul_f32 v23, v173, v23 :: v_dual_mul_f32 v182, v212, v182
	v_mul_f32_e32 v17, v173, v17
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s12, 0, v42.h
	v_cmp_ne_u16_e64 s13, 0, v178.h
	v_cmp_ne_u16_e64 s14, 0, v44.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s15, 0, v177.h
	v_cmp_ne_u16_e64 s16, 0, v44.h
	v_cmp_ne_u16_e64 s17, 0, v9.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s48, s18, s10
	s_and_b32 s49, s19, s11
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v209.h, v177.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_mul_f32_e32 v30, v173, v30
	v_mul_f32_e32 v31, v173, v31
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v9, 0, 1, s48
	s_and_b32 s50, s20, s12
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v177, v22, v187 :: v_dual_mul_f32 v28, v173, v28
	v_dual_mul_f32 v191, v18, v191 :: v_dual_add_nc_u32 v18, 0, v84
	v_mul_f32_e32 v178, v23, v186
	v_mul_f32_e32 v192, v17, v192
	.loc	1 877 25                        ; attention.py:877:25
	v_add_nc_u32_e32 v17, 0, v80
	v_cndmask_b32_e64 v10, 0, 1, s49
	s_and_b32 s47, s21, s13
	v_cndmask_b32_e64 v11, 0, 1, s50
	s_and_b32 s44, s22, s14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v213, v173, v12
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v12, 0, 1, s47
	s_and_b32 s46, s23, s15
	s_and_b32 s43, s24, s16
	s_and_b32 s45, s25, s17
	v_cndmask_b32_e64 v13, 0, 1, s44
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v216, v173, v15
	v_mul_f32_e32 v217, v173, v16
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v14, 0, 1, s46
	v_cndmask_b32_e64 v15, 0, 1, s43
	v_cndmask_b32_e64 v16, 0, 1, s45
	ds_store_b8 v17, v9
	ds_store_b8 v108, v10
	ds_store_b8 v109, v11
	ds_store_b8 v110, v12
	ds_store_b8 v111, v13
	ds_store_b8 v112, v14
	ds_store_b8 v113, v15
	ds_store_b8 v114, v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v18
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v18 offset:32
	ds_load_u16_d16 v10, v144
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v144 offset:32
	ds_load_u16_d16 v11, v145
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v11, v145 offset:32
	ds_load_u16_d16 v12, v146
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v12, v146 offset:32
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v185.l, v43.l
	v_mov_b16_e64 v185.h, v184.l
	v_mov_b16_e64 v209.l, v43.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v19, v19
	v_mul_f32_e32 v24, v173, v24
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_u16_d16_hi v18, v149
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v190.h, v189.l
	v_mov_b16_e64 v189.l, v43.l
	v_mov_b16_e64 v189.h, v188.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v20, v173, v20 :: v_dual_mul_f32 v185, v24, v185
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v190.l, v43.l
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v13.l, 8, v9.l
	v_lshrrev_b16 v13.h, 8, v9.h
	v_lshrrev_b16 v14.l, 8, v10.l
	v_and_b16 v16.l, 1, v9.h
	v_lshrrev_b16 v9.h, 8, v10.h
	v_and_b16 v15.l, 1, v13.l
	v_and_b16 v15.h, 1, v13.h
	v_and_b16 v16.h, 1, v14.l
	ds_load_u16_d16 v13, v147
	ds_load_u16_d16 v14, v147 offset:32
	s_waitcnt lgkmcnt(1)
	v_lshrrev_b16 v13.h, 8, v11.l
	v_and_b16 v17.l, 1, v9.h
	ds_load_u16_d16_hi v9, v148
	s_waitcnt lgkmcnt(1)
	v_lshrrev_b16 v14.h, 8, v12.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v18.l, 1, v13.h
	ds_load_u16_d16_hi v13, v148 offset:32
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v21, v21
	v_dual_mul_f32 v19, v173, v19 :: v_dual_mul_f32 v42, v20, v189
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v17.h, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v11.h
	v_and_b16 v20.l, 1, v14.h
	ds_load_u16_d16_hi v14, v150
	ds_load_u16_d16_hi v20, v150 offset:32
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v188.l, v43.l
	v_mov_b16_e64 v184.l, v43.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v32, v173, v32 :: v_dual_mul_f32 v41, v19, v190
	v_mul_f32_e32 v187, v214, v180
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v21, v173, v21 :: v_dual_mul_f32 v184, v208, v184
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v19.l, 1, v10.h
	ds_load_u16_d16_hi v10, v149 offset:32
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v198.h, v197.l
	v_mov_b16_e64 v197.l, v43.l
	v_mov_b16_e64 v197.h, v196.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_mul_f32_e32 v44, v21, v188
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v19.h, 1, v11.h
	v_lshrrev_b16 v11.h, 8, v12.h
	v_and_b16 v21.h, 1, v12.l
	s_waitcnt lgkmcnt(4)
	v_lshrrev_b16 v12.l, 8, v9.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v201.h, v200.l
	v_mov_b16_e64 v200.l, v43.l
	v_mov_b16_e64 v200.h, v199.l
	v_mov_b16_e64 v199.l, v43.l
	v_mov_b16_e64 v199.h, v198.l
	v_mov_b16_e64 v198.l, v43.l
	v_mov_b16_e64 v194.h, v193.l
	v_mov_b16_e64 v193.l, v43.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v26, v173, v26 :: v_dual_mul_f32 v193, v32, v193
	v_dual_mul_f32 v27, v173, v27 :: v_dual_mul_f32 v28, v28, v197
	v_mul_f32_e32 v25, v173, v25
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v22.l, 1, v11.h
	s_waitcnt lgkmcnt(2)
	v_lshrrev_b16 v11.h, 8, v14.l
	v_and_b16 v24.l, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v18.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v196.h, v195.l
	v_mov_b16_e64 v195.l, v43.l
	v_mov_b16_e64 v195.h, v194.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v21.l, 8, v13.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v43.h, v207.l
	v_mov_b16_e64 v207.l, v43.l
	v_mov_b16_e64 v207.h, v206.l
	v_mov_b16_e64 v204.h, v203.l
	v_mov_b16_e64 v203.l, v43.l
	v_mov_b16_e64 v203.h, v202.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v29, v29
	v_dual_mul_f32 v34, v173, v34 :: v_dual_mul_f32 v199, v26, v199
	v_mul_f32_e32 v33, v173, v33
	v_dual_mul_f32 v38, v173, v38 :: v_dual_mul_f32 v195, v30, v195
	v_mul_f32_e32 v198, v27, v198
	v_mul_f32_e32 v200, v25, v200
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v9.l, 1, v9.l
	v_and_b16 v23.l, 1, v11.h
	v_lshrrev_b16 v11.h, 8, v13.h
	v_and_b16 v9.h, 1, v9.h
	v_and_b16 v25.h, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v14.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v202.l, v43.l
	v_mov_b16_e64 v202.h, v201.l
	v_mov_b16_e64 v201.l, v43.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v40, v173, v40
	v_mul_f32_e32 v39, v173, v39
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v10.l, 1, v10.l
	v_and_b16 v25.l, 1, v13.h
	v_and_b16 v13.h, 1, v18.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v206.l, v43.l
	v_mov_b16_e64 v206.h, v205.l
	v_mov_b16_e64 v205.l, v43.l
	v_mov_b16_e64 v205.h, v204.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v173, v36
	v_mul_f32_e32 v35, v173, v35
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v11.l, 1, v11.l
	v_and_b16 v27.l, 1, v14.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v204.l, v43.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v37, v173, v37 :: v_dual_mul_f32 v38, v38, v203
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v21.l, 1, v21.l
	v_and_b16 v13.l, 1, v13.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v196.l, v43.l
	v_mov_b16_e64 v194.l, v43.l
	v_mov_b16_e64 v181.l, v43.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v29, v173, v29 :: v_dual_mul_f32 v34, v34, v207
	v_mul_f32_e32 v33, v33, v43
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v22.h, 1, v12.h
	v_and_b16 v23.h, 1, v14.l
	v_and_b16 v24.h, 1, v11.h
	v_lshrrev_b16 v11.h, 8, v10.h
	v_and_b16 v26.h, 1, v12.l
	v_cmp_eq_u16_e64 s41, 1, v9.l
	v_cmp_eq_u16_e64 s38, 1, v9.h
	v_cmp_eq_u16_e64 s24, 1, v15.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v40, v40, v201 :: v_dual_mul_f32 v39, v39, v202
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v12.h, 8, v20.h
	v_cmp_eq_u16_e64 s42, 1, v10.l
	v_cmp_eq_u16_e64 s35, 1, v13.h
	v_cmp_eq_u16_e64 s25, 1, v16.h
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v36, v36, v205 :: v_dual_mul_f32 v35, v35, v206
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s39, 1, v11.l
	v_cmp_eq_u16_e64 s36, 1, v27.l
	v_cmp_eq_u16_e64 s22, 1, v18.l
	v_cmp_eq_u16_e64 s40, 1, v21.h
	v_cmp_eq_u16_e64 s23, 1, v20.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v37, v37, v204
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s37, 1, v13.l
	v_cmp_eq_u16_e64 s20, 1, v21.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v194, v31, v194
	v_mul_f32_e32 v196, v29, v196
	v_mul_f32_e32 v186, v213, v181
	v_mul_f32_e32 v188, v215, v179
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v18.h, 1, v11.h
	v_and_b16 v26.l, 1, v10.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v197, 0xff800000, v33, s41
	v_cndmask_b32_e64 v9, 0xff800000, v38, s38
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s33, 1, v16.l
	v_cmp_eq_u16_e64 s34, 1, v17.h
	v_cmp_eq_u16_e64 s30, 1, v19.h
	v_cmp_eq_u16_e64 s31, 1, v22.h
	v_cmp_eq_u16_e64 s28, 1, v23.h
	v_cmp_eq_u16_e64 s29, 1, v25.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v192, s24
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s21, 1, v24.l
	v_cmp_eq_u16_e64 s18, 1, v25.h
	v_cmp_eq_u16_e64 s19, 1, v26.h
	v_cmp_eq_u16_e64 s17, 1, v15.h
	v_cmp_eq_u16_e64 s16, 1, v17.l
	v_cmp_eq_u16_e64 s14, 1, v19.l
	v_cmp_eq_u16_e64 s15, 1, v22.l
	v_cmp_eq_u16_e64 s13, 1, v23.l
	v_cmp_eq_u16_e64 s12, 1, v24.h
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v15, 0, v81
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v210.l, v43.l
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v27.h, 1, v12.h
	v_and_b16 v20.h, 1, v20.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v12, 0xff800000, v34, s42
	v_cndmask_b32_e64 v13, 0xff800000, v39, s35
	v_cndmask_b32_e64 v39, 0xff800000, v191, s25
	v_cndmask_b32_e64 v14, 0xff800000, v35, s39
	v_cndmask_b32_e64 v29, 0xff800000, v40, s36
	v_cndmask_b32_e64 v40, 0xff800000, v41, s22
	v_cndmask_b32_e64 v10, 0xff800000, v36, s40
	v_cndmask_b32_e64 v41, 0xff800000, v42, s23
	v_cndmask_b32_e64 v11, 0xff800000, v37, s37
	v_cndmask_b32_e64 v42, 0xff800000, v44, s20
	v_cndmask_b32_e64 v30, 0xff800000, v200, s33
	v_cndmask_b32_e64 v31, 0xff800000, v199, s34
	v_cndmask_b32_e64 v32, 0xff800000, v198, s30
	v_cndmask_b32_e64 v33, 0xff800000, v28, s31
	v_cndmask_b32_e64 v34, 0xff800000, v196, s28
	v_cndmask_b32_e64 v35, 0xff800000, v195, s29
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s26, 1, v26.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v177, s21
	v_cndmask_b32_e64 v177, 0xff800000, v178, s18
	v_cndmask_b32_e64 v178, 0xff800000, v185, s19
	v_cndmask_b32_e64 v179, 0xff800000, v184, s17
	v_cndmask_b32_e64 v180, 0xff800000, v183, s16
	v_cndmask_b32_e64 v181, 0xff800000, v182, s14
	v_cndmask_b32_e64 v182, 0xff800000, v186, s15
	v_cndmask_b32_e64 v183, 0xff800000, v187, s13
	v_cndmask_b32_e64 v184, 0xff800000, v188, s12
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s10, 1, v18.h
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v15, v197, v38 offset1:32
	ds_store_2addr_b32 v115, v12, v39 offset1:32
	ds_store_2addr_b32 v116, v14, v40 offset1:32
	ds_store_2addr_b32 v117, v10, v41 offset1:32
	ds_store_2addr_b32 v118, v11, v42 offset1:32
	ds_store_2addr_b32 v119, v9, v44 offset1:32
	ds_store_2addr_b32 v120, v13, v177 offset1:32
	ds_store_2addr_b32 v121, v29, v178 offset1:32
	ds_store_2addr_b32 v122, v30, v179 offset1:32
	ds_store_2addr_b32 v123, v31, v180 offset1:32
	ds_store_2addr_b32 v124, v32, v181 offset1:32
	ds_store_2addr_b32 v125, v33, v182 offset1:32
	ds_store_2addr_b32 v126, v34, v183 offset1:32
	ds_store_2addr_b32 v127, v35, v184 offset1:32
	v_add_nc_u32_e32 v15, 0, v85
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v189, v216, v209 :: v_dual_mul_f32 v190, v217, v210
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s27, 1, v20.h
	v_cmp_eq_u16_e64 s11, 1, v27.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v194, s26
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v185, 0xff800000, v189, s10
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v192, v10, v11, v9
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v193, s27
	v_cndmask_b32_e64 v186, 0xff800000, v190, s11
	ds_store_2addr_b32 v128, v36, v185 offset1:32
	ds_store_2addr_b32 v129, v37, v186 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v23, v15
	ds_load_b32 v24, v151
	ds_load_b32 v25, v152
	ds_load_b32 v187, v153
	ds_load_b32 v188, v154
	ds_load_b32 v189, v155
	ds_load_b32 v190, v156
	ds_load_b32 v191, v157
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v194, v31, v32, v33
	v_max3_f32 v195, v34, v35, v36
	v_max3_f32 v196, v37, v38, v39
	v_max3_f32 v193, v13, v29, v30
	v_max3_f32 v198, v40, v41, v42
	v_max3_f32 v199, v44, v177, v178
	v_max3_f32 v200, v179, v180, v181
	v_max_f32_e32 v201, v182, v183
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v77, v77, v77
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s80, s80, 64
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v23 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v23, v23
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v18, v25 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v25, v25
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v16, v24 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v19, v24, v24 :: v_dual_max_f32 v18, v18, v18
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v22, v191 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v15, v17, v15
	v_max_f32_e32 v21, v189, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v17, v20, v18
	v_max_f32_e32 v26, v190, v190
	v_max_f32_e32 v16, v19, v16
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v18, v15 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v27, v191, v191
.Ltmp16:
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s80, s81
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v16 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v18, v18, v18
.Ltmp19:
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	v_max_f32_e32 v15, v15, v18
.Ltmp21:
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v16, v16, v19
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v18, v15 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v16 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v15, v15, v18
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v17 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v16, v16, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v20, v20, v20
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v16 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v20
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v17, v17, v20
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v18, v15 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v20, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v17, v17, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v15, v15, v18
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v20, v17, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v18, v15, -1, -1 op_sel:[1,0]
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v18, v18, v18
	v_dual_max_f32 v16, v16, v19 :: v_dual_max_f32 v17, v17, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v15, v15, v18
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v19, v16, -1, -1 op_sel:[1,0]
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v18, v188, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s87, v17, 31
	v_readlane_b32 s51, v15, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v187 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v187, v187
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v190 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v16, v16, v19
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v189 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v20, v20, v20
	v_max_f32_e32 v22, v22, v22
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s67, v16, 31
	v_mov_b32_dpp v16, v188 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v15, v17, v15 :: v_dual_max_f32 v16, v16, v16
	v_max_f32_e32 v17, v21, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v19, v27, v22 :: v_dual_max_f32 v16, v18, v16
	v_max_f32_e32 v18, v26, v20
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v15 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v22, v17 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v27, v19 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v21, v16 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v26, v18 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v27, v27, v27
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v15, v15, v20
	v_max_f32_e32 v17, v17, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v19, v19, v27 :: v_dual_max_f32 v16, v16, v21
	v_max_f32_e32 v18, v18, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v15 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v22, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v27, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v21, v16 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v26, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v27, v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v26, v26, v26
	v_max_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v17, v17, v22
	v_dual_max_f32 v19, v19, v27 :: v_dual_max_f32 v16, v16, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v18, v18, v26
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v15 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v22, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v27, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v21, v16 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v26, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v27, v27, v27
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v15, v15, v20
	v_max_f32_e32 v17, v17, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v19, v19, v27 :: v_dual_max_f32 v16, v16, v21
	v_max_f32_e32 v18, v18, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v20, v15, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v22, v17, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v27, v19, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v21, v16, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v26, v18, -1, -1 op_sel:[1,0]
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v27, v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v26, v26, v26
	v_max_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v17, v17, v22
	v_dual_max_f32 v19, v19, v27 :: v_dual_max_f32 v16, v16, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v18, v18, v26
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s88, v15, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s90, v17, 31
	v_readlane_b32 s92, v19, 31
	v_readlane_b32 s89, v16, 31
	v_readlane_b32 s91, v18, 31
	v_dual_mov_b32 v15, s51 :: v_dual_mov_b32 v16, s67
	v_dual_mov_b32 v17, s87 :: v_dual_mov_b32 v18, s88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v19, s89 :: v_dual_mov_b32 v20, s90
	v_dual_mov_b32 v21, s91 :: v_dual_mov_b32 v22, s92
	ds_store_b128 v87, v[15:18]
	ds_store_b128 v87, v[19:22] offset:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v88
	ds_load_b128 v[19:22], v88 offset:32
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v27, v197, v12
	v_max_f32_e32 v202, v185, v186
.Ltmp59:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s51, 0xff800000, v176
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s67, s75
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v27, v27, v14, v192
	v_max3_f32 v192, v194, v195, v196
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v27, v27, v193, v192
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v26, v15
	v_dual_mov_b32 v28, v16 :: v_dual_mov_b32 v193, v18
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v194, v201, v184, v202
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v195, v19 :: v_dual_mov_b32 v196, v20
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v28, v28 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v26, v26, v26
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v192, v17
.Ltmp71:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v72, v72, v18, v193
	v_max3_f32 v73, v73, v19, v195
	v_max3_f32 v70, v70, v16, v28
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v26
	v_max3_f32 v26, v198, v199, v200
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v198, v22 :: v_dual_max_f32 v199, v175, v175
	v_mov_b32_dpp v192, v192 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v18, v24, v70
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v26, v27, v26, v194
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v194, v21
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v71, v71, v17, v192
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_permlanex16_b32 v27, v26, s85, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v76, v76, v22, v198
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v19, v25, v71
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v74, v74, v20, v196
	v_max3_f32 v27, v176, v26, v27
	v_max_f32_e32 v26, v199, v15
	v_dual_max_f32 v77, v77, v15 :: v_dual_sub_f32 v22, v191, v76
	v_max3_f32 v75, v75, v21, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v15, v176, v27 :: v_dual_sub_f32 v16, v175, v26
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v17, v23, v77 :: v_dual_sub_f32 v20, v189, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_sub_f32_e32 v21, v190, v75
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v16, v16
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v190, v11, v27
	v_sub_f32_e32 v189, v10, v27
	v_sub_f32_e32 v191, v9, v27
	v_sub_f32_e32 v192, v29, v27
	v_sub_f32_e32 v194, v31, v27
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v176, 0, v15, s51
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v15, v17
	v_exp_f32_e32 v17, v18
	v_exp_f32_e32 v18, v19
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v19, v188, v73 :: v_dual_sub_f32 v188, v14, v27
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s51, 0xff800000, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v193, v30, v27 :: v_dual_mul_f32 v4, v4, v176
	v_dual_sub_f32 v195, v32, v27 :: v_dual_mul_f32 v6, v6, v176
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s48
	v_cndmask_b32_e64 v17, 0, v17, s49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v18, 0, v18, s50
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v28, 0, v16, s51
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v16, v187, v72 :: v_dual_sub_f32 v187, v12, v27
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v14, v17, v17 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v15, v15 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v18, v18 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v21
	v_exp_f32_e32 v18, v22
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v11, v14, v14 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v12, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v15, v15 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v15, v19
	v_exp_f32_e32 v14, v16
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v16, v20
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s43
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v18, 0, v18, s45
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s44
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v20, v11, -1, -1 op_sel:[1,0]
.Ltmp94:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v14, 0, v14, s47
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v19, v10, -1, -1 op_sel:[1,0]
.Ltmp96:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v16, 0, v16, s46
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v21, v12, -1, -1 op_sel:[1,0]
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v11, v11, v20
.Ltmp99:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v175, v197, v27
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v188, v188
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v13, v13, v27 :: v_dual_mul_f32 v2, v2, v176
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp100:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s44, v11, 31
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v11, v15, v15 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v12, v12, v21
	v_add_f32_dpp v15, v18, v18 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp102:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v175, v175
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v33, v33, v27 :: v_dual_mul_f32 v8, v8, v176
.Ltmp103:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s45, v12, 31
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v12, v16, v16 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp106:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v36, v36, v27 :: v_dual_mul_f32 v1, v1, v176
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v12, v12, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp108:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v175, 0, v175, s41
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v38, v38, v27 :: v_dual_mul_f32 v3, v3, v176
.Ltmp109:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v10, v10, v19
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp110:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v40, v40, v27 :: v_dual_mul_f32 v5, v5, v176
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s43, v10, 31
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v10, v14, v14 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v17, v17 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v17, v11, -1, -1 op_sel:[1,0]
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v20, v15, -1, -1 op_sel:[1,0]
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v14, v14 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v11, v11, v17
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v18, v12, -1, -1 op_sel:[1,0]
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v15, v15, v20
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v14, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s47, v11, 31
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v12, v12, v18
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s50, v15, 31
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v14, v14, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v15, s44
	v_readlane_b32 s48, v12, 31
	v_dual_mov_b32 v18, s47 :: v_dual_mov_b32 v21, s50
	v_permlanex16_b32 v16, v10, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v19, v14, -1, -1 op_sel:[1,0]
.Ltmp124:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v189, v189
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v44, v44, v27 :: v_dual_mul_f32 v7, v7, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp125:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v10, v10, v16
	v_add_f32_e32 v14, v14, v19
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v16, s45 :: v_dual_mov_b32 v19, s48
.Ltmp127:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v187, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s46, v10, 31
	v_mad_u64_u32 v[10:11], null, s66, s71, v[47:48]
	v_readlane_b32 s49, v14, 31
	v_dual_mov_b32 v14, s43 :: v_dual_mov_b32 v17, s46
.Ltmp129:
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s66, s74
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v190, v190
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v20, s49
.Ltmp131:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v11, v10, s83, 1
	v_lshlrev_b32_e32 v9, 1, v10
	v_add_lshl_u32 v12, v10, s71, 1
	v_add_lshl_u32 v10, v10, s84, 1
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_store_b128 v87, v[14:17]
	ds_store_b128 v87, v[18:21] offset:32
.Ltmp133:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	v_cndmask_b32_e64 v14, 0x80000000, v10, s0
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp135:
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_b128 v[22:25], v11, s[64:67], 0 offen
	buffer_load_b128 v[18:21], v9, s[64:67], 0 offen
	buffer_load_b128 v[9:12], v12, s[64:67], 0 offen
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[29:32], v88
.Ltmp137:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[14:17], v14, s[64:67], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	s_waitcnt lgkmcnt(0)
	v_exp_f32_e32 v32, v193
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v187, 0, v187, s42
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v30, v191
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v176, 0, v189, s40
	v_cndmask_b32_e64 v188, 0, v188, s39
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s39, v187, v187
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v31, v192
	v_exp_f32_e32 v192, v195
	v_exp_f32_e32 v33, v33
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v32, s33
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v30, s38
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s35
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v31, s36
.Ltmp138:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v193, v29
.Ltmp139:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v191, v194
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v194.l, v175.h
	v_mov_b16_e64 v194.h, v43.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v178, v178, v27
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp141:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v27
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v30, v30
	v_and_b32_e32 v189, 1, v194
	v_mov_b16_e64 v194.l, v188.h
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v29, v29, v193
.Ltmp143:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v193.l, v187.h
	v_mov_b16_e64 v193.h, v43.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v42, v27
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v189, v175, v189, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v27
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v13, v13
	v_and_b32_e32 v193, 1, v193
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v32, v32
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v193, v187, v193, 0x7fff
	v_mov_b16_e64 v187.l, v176.h
	v_mov_b16_e64 v187.h, v43.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v178, v178
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v29, v83, v28
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v193.h, 0x7fff, v193.h, s39
	v_cmp_o_f32_e64 s39, v175, v175
	v_and_b32_e32 v187, 1, v187
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v175, 0, v190, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v190, 1, v194
	v_cmp_o_f32_e64 s37, v176, v176
	v_mov_b16_e64 v194.l, v30.h
	v_add3_u32 v187, v176, v187, 0x7fff
	v_mov_b16_e64 v176.l, v175.h
	v_mov_b16_e64 v176.h, v43.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v37, v27
	v_sub_f32_e32 v39, v39, v27
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v193.l, 0x7fff, v189.h, s39
	v_add3_u32 v189, v188, v190, 0x7fff
	v_and_b32_e32 v176, 1, v176
	v_and_b32_e32 v190, 1, v194
	v_cndmask_b16 v187.h, 0x7fff, v187.h, s37
	v_cmp_o_f32_e64 s37, v188, v188
	v_cmp_o_f32_e64 s36, v175, v175
	v_add3_u32 v176, v175, v176, 0x7fff
	v_add3_u32 v188, v30, v190, 0x7fff
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v30.h, v43.l
	v_mov_b16_e64 v190.l, v13.h
	v_mov_b16_e64 v190.h, v43.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v41, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v177, v177, v27 :: v_dual_and_b32 v30, 1, v30
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v175.h, 0x7fff, v188.h, s35
	v_and_b32_e32 v188, 1, v190
	v_cndmask_b16 v175.l, 0x7fff, v176.h, s36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v176, 0, v191, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v30, v31, v30, 0x7fff
	v_cmp_o_f32_e64 s34, v31, v31
	v_add3_u32 v31, v13, v188, 0x7fff
	v_mov_b16_e64 v188.h, v43.l
	v_mov_b16_e64 v188.l, v176.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v179, v179, v27
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v187.l, 0x7fff, v189.h, s37
	v_cndmask_b16 v189.h, 0x7fff, v30.h, s34
	v_mov_b16_e32 v13.l, v32.h
	v_mov_b16_e32 v13.h, v43.l
	v_and_b32_e32 v30, 1, v188
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v188, 0, v192, s30
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v180, v180, v27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v176, v176
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v30, v176, v30, 0x7fff
	v_mov_b16_e64 v190.l, v188.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v181, v181, v27
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v189.l, 0x7fff, v31.h, s33
	v_mov_b16_e32 v31.l, v33.h
	v_mov_b16_e32 v31.h, v43.l
	v_add3_u32 v13, v32, v13, 0x7fff
	v_and_b32_e32 v32, 1, v190
	v_cndmask_b16 v176.h, 0x7fff, v30.h, s30
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v35, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v31, 1, v31
	v_cndmask_b16 v176.l, 0x7fff, v13.h, s31
	v_add3_u32 v13, v188, v32, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v34, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v30.h
	v_mov_b16_e32 v34.h, v43.l
	v_cmp_o_f32_e64 s29, v188, v188
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v183, v183, v27
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v31, v33, v31, 0x7fff
	v_cmp_o_f32_e64 s28, v33, v33
	v_mov_b16_e32 v33.l, v32.h
	v_mov_b16_e32 v33.h, v43.l
	v_and_b32_e32 v34, 1, v34
	v_cndmask_b16 v188.l, 0x7fff, v13.h, s29
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v37, s27
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v182, v182, v27
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v188.h, 0x7fff, v31.h, s28
	v_and_b32_e32 v31, 1, v33
	v_add3_u32 v33, v30, v34, 0x7fff
	v_mov_b16_e32 v34.l, v13.h
	v_mov_b16_e32 v34.h, v43.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v185, v185, v27
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v30, v30
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v36, s26
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v31, v32, v31, 0x7fff
	v_cndmask_b16 v190.h, 0x7fff, v33.h, s27
	v_mov_b16_e32 v33.l, v30.h
	v_mov_b16_e32 v33.h, v43.l
	v_cmp_o_f32_e64 s26, v32, v32
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v39, s25
	v_cndmask_b32_e64 v35, 0, v38, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v13, v34, 0x7fff
	v_cmp_o_f32_e64 s24, v13, v13
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v184, v184, v27 :: v_dual_and_b32 v33, 1, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v13.l, v32.h
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e32 v36.h, v43.l
	v_mov_b16_e32 v13.h, v43.l
	v_cndmask_b16 v191.h, 0x7fff, v34.h, s24
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v40, s22
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v186, v186, v27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v190.l, 0x7fff, v31.h, s26
	v_add3_u32 v31, v30, v33, 0x7fff
	v_and_b32_e32 v33, 1, v36
	v_and_b32_e32 v13, 1, v13
	v_cmp_o_f32_e64 s22, v30, v30
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v41, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.l, v34.h
	v_add3_u32 v33, v35, v33, 0x7fff
	v_add3_u32 v13, v32, v13, 0x7fff
	v_mov_b16_e32 v37.h, v43.l
	v_mov_b16_e32 v37.l, v30.h
	v_cmp_o_f32_e64 s23, v32, v32
	v_cmp_o_f32_e64 s24, v35, v35
	v_and_b32_e32 v32, 1, v36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v177, v177
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v191.l, 0x7fff, v31.h, s22
	v_and_b32_e32 v31, 1, v37
	v_cndmask_b16 v40.h, 0x7fff, v13.h, s23
	v_cndmask_b16 v40.l, 0x7fff, v33.h, s24
	v_add3_u32 v13, v34, v32, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v44, s21
	v_cndmask_b32_e64 v33, 0, v42, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v31, v30, v31, 0x7fff
	v_cmp_o_f32_e64 s20, v30, v30
	v_cmp_o_f32_e64 s21, v34, v34
	v_mov_b16_e32 v30.l, v32.h
	v_mov_b16_e32 v30.h, v43.l
	v_mov_b16_e32 v34.l, v33.h
	v_mov_b16_e32 v34.h, v43.l
	v_cndmask_b16 v41.l, 0x7fff, v13.h, s21
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v179, v179
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v13, 1, v30
	v_cndmask_b16 v41.h, 0x7fff, v31.h, s20
	v_and_b32_e32 v30, 1, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v177, s18
	v_cndmask_b32_e64 v31, 0, v178, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v13, v32, v13, 0x7fff
	v_cmp_o_f32_e64 s18, v32, v32
	v_mov_b16_e32 v32.h, v43.l
	v_mov_b16_e32 v32.l, v34.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v180, v180
	v_exp_f32_e32 v182, v182
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v31.h
	v_mov_b16_e32 v35.h, v43.l
	v_add3_u32 v30, v33, v30, 0x7fff
	v_cmp_o_f32_e64 s19, v33, v33
	v_cndmask_b16 v42.h, 0x7fff, v13.h, s18
	v_and_b32_e32 v13, 1, v32
	v_and_b32_e32 v35, 1, v35
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v181, v181
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v42.l, 0x7fff, v30.h, s19
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v179, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v13, v34, v13, 0x7fff
	v_cmp_o_f32_e64 s17, v34, v34
	v_add3_u32 v32, v31, v35, 0x7fff
	v_cmp_o_f32_e64 s18, v31, v31
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v180, s16
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v183, v183
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v44.l, 0x7fff, v13.h, s17
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v182, s15
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v185, v185
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v44.h, 0x7fff, v32.h, s18
	v_mov_b16_e32 v32.l, v30.h
	v_mov_b16_e32 v32.h, v43.l
	v_mov_b16_e32 v33.l, v31.h
	v_mov_b16_e32 v33.h, v43.l
	v_mov_b16_e32 v35.l, v13.h
	v_mov_b16_e32 v35.h, v43.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v184, v184
	v_exp_f32_e32 v186, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v32, 1, v32
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v181, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v35, 1, v35
	v_cmp_o_f32_e64 s14, v31, v31
	v_add3_u32 v32, v30, v32, 0x7fff
	v_mov_b16_e32 v36.l, v34.h
	v_add3_u32 v33, v31, v33, 0x7fff
	v_cmp_o_f32_e64 s15, v30, v30
	v_add3_u32 v31, v13, v35, 0x7fff
	v_cmp_o_f32_e64 s16, v13, v13
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v183, s13
	v_cndmask_b32_e64 v35, 0, v185, s10
	v_dual_mov_b32 v83, v29 :: v_dual_and_b32 v30, 1, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v207.h, 0x7fff, v33.h, s14
	v_cndmask_b16 v207.l, 0x7fff, v32.h, s15
	v_cndmask_b16 v43.h, 0x7fff, v31.h, s16
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v184, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v32.l, v13.h
	v_mov_b16_e32 v32.h, v43.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v186, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.l, v35.h
	v_mov_b16_e32 v38.h, v43.l
	v_add3_u32 v30, v34, v30, 0x7fff
	v_mov_b16_e32 v36.l, v31.h
	v_and_b32_e32 v32, 1, v32
	v_mov_b16_e32 v37.l, v33.h
	v_cmp_o_f32_e64 s10, v34, v34
	v_and_b32_e32 v34, 1, v38
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v32, v13, v32, 0x7fff
	v_and_b32_e32 v37, 1, v37
	v_cmp_o_f32_e64 s12, v13, v13
	v_add3_u32 v13, v35, v34, 0x7fff
	v_cmp_o_f32_e64 s14, v35, v35
	v_add3_u32 v36, v31, v36, 0x7fff
	v_cmp_o_f32_e64 s11, v31, v31
	v_add3_u32 v31, v33, v37, 0x7fff
	v_cmp_o_f32_e64 s13, v33, v33
	v_cndmask_b16 v209.l, 0x7fff, v13.h, s14
	v_permlanex16_b32 v13, v193, s85, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v43.l, 0x7fff, v30.h, s10
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v209.h, 0x7fff, v31.h, s13
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v30, v13, v193, v64
	v_perm_b32 v31, v13, v193, v172
	v_permlanex16_b32 v182, v191, s85, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v187, s85, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v175, s85, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v189, s85, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v208.h, 0x7fff, v36.h, s11
	v_perm_b32 v181, v182, v191, v64
	v_perm_b32 v182, v182, v191, v172
	v_cndmask_b16 v208.l, 0x7fff, v32.h, s12
	v_permlanex16_b32 v177, v176, s85, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v178, v188, s85, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v180, v190, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v32, v33, v187, v64
	v_perm_b32 v33, v33, v187, v172
	v_perm_b32 v34, v35, v175, v64
	v_perm_b32 v35, v35, v175, v172
	v_perm_b32 v36, v37, v189, v64
	v_perm_b32 v37, v37, v189, v172
	v_permlanex16_b32 v184, v40, s85, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v186, v41, s85, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v210, v42, s85, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v211, v44, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v175, v177, v176, v64
	v_perm_b32 v176, v177, v176, v172
	v_perm_b32 v177, v178, v188, v64
	v_perm_b32 v178, v178, v188, v172
	v_perm_b32 v179, v180, v190, v64
	v_perm_b32 v180, v180, v190, v172
	v_permlanex16_b32 v212, v207, s85, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v213, v43, s85, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v214, v208, s85, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v215, v209, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v183, v184, v40, v64
	v_perm_b32 v184, v184, v40, v172
	v_perm_b32 v185, v186, v41, v64
	v_perm_b32 v186, v186, v41, v172
	v_perm_b32 v187, v210, v42, v64
	v_perm_b32 v188, v210, v42, v172
	v_perm_b32 v189, v211, v44, v64
	v_perm_b32 v190, v211, v44, v172
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v39.l, v22.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v38.l, v18.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v38.h, v9.l
	v_mov_b16_e32 v9.l, v18.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v39.h, v14.l
	v_add_nc_u32_e32 v18, 0, v86
	v_mov_b16_e32 v14.l, v22.h
	v_mov_b32_e32 v13, v9
	ds_store_b64 v18, v[38:39]
	ds_store_b64 v158, v[13:14]
	v_mov_b16_e32 v38.h, v10.l
	v_mov_b16_e32 v10.l, v19.h
	v_mov_b16_e32 v39.l, v23.l
	v_mov_b16_e32 v39.h, v15.l
	v_mov_b16_e32 v38.l, v19.l
	v_mov_b16_e32 v9.h, v11.l
	v_mov_b16_e32 v11.l, v20.h
	v_mov_b16_e32 v15.l, v23.h
	v_mov_b32_e32 v14, v10
	v_mov_b16_e32 v10.l, v24.l
	v_mov_b16_e32 v10.h, v16.l
	v_mov_b16_e32 v9.l, v20.l
	ds_store_b64 v159, v[38:39]
	ds_store_b64 v160, v[14:15]
	v_mov_b16_e32 v16.l, v24.h
	v_mov_b32_e32 v15, v11
	v_mov_b16_e32 v19.h, v17.l
	v_mov_b16_e32 v17.l, v25.h
	v_mov_b16_e32 v19.l, v25.l
	v_mov_b16_e32 v18.l, v21.l
	v_mov_b16_e32 v18.h, v12.l
	ds_store_b64 v161, v[9:10]
	ds_store_b64 v162, v[15:16]
	v_add_nc_u32_e32 v9, 0, v106
	v_mov_b16_e32 v12.l, v21.h
	v_mov_b32_e32 v13, v17
	ds_store_b64 v163, v[18:19]
	ds_store_b64 v164, v[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v9
	ds_load_b128 v[13:16], v165
	ds_load_b128 v[17:20], v166
	ds_load_b128 v[21:24], v167
	ds_load_b128 v[191:194], v168
	ds_load_b128 v[195:198], v169
	ds_load_b128 v[199:202], v170
	ds_load_b128 v[203:206], v171
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[30:37], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_perm_b32 v9, v212, v207, v64
	v_perm_b32 v10, v212, v207, v172
	v_perm_b32 v11, v213, v43, v64
	v_perm_b32 v12, v213, v43, v172
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[175:182], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v13, v214, v208, v64
	v_perm_b32 v14, v214, v208, v172
	v_perm_b32 v15, v215, v209, v64
	v_perm_b32 v16, v215, v209, v172
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[191:198], v[183:190], v[1:8]
	v_dual_mov_b32 v176, v27 :: v_dual_mov_b32 v175, v26
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[199:206], v[9:16], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_20
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v9, 1, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s66, s80, s82
	v_or_b32_e32 v15, 2, v79
	v_or_b32_e32 v16, 4, v79
	v_or_b32_e32 v17, 6, v79
	v_or_b32_e32 v9, s66, v9
	v_or_b32_e32 v18, 8, v79
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v216, s59 :: v_dual_add_nc_u32 v13, 0, v78
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v14, s80, v79, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[9:10], null, v9, s70, v[46:47]
	v_or_b32_e32 v19, 10, v79
	v_or_b32_e32 v20, 12, v79
	v_or_b32_e32 v21, 14, v79
	v_or_b32_e32 v22, 16, v79
	v_or_b32_e32 v23, 18, v79
	v_or_b32_e32 v24, 20, v79
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_or_b32_e32 v25, 22, v79
	v_or_b32_e32 v26, 24, v79
	v_or_b32_e32 v27, 26, v79
	v_or_b32_e32 v28, 28, v79
	buffer_load_b128 v[9:12], v9, s[60:63], 0 offen
	v_or_b32_e32 v29, 30, v79
	v_or_b32_e32 v30, 32, v79
	v_or_b32_e32 v31, 34, v79
	v_or_b32_e32 v32, 36, v79
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v15, v15, s80, 1
	v_add_lshl_u32 v16, v16, s80, 1
	v_add_lshl_u32 v17, v17, s80, 1
	v_add_lshl_u32 v208, v174, s80, 1
	v_add_lshl_u32 v18, v18, s80, 1
	v_add_lshl_u32 v33, v89, s80, 1
	v_add_lshl_u32 v34, v90, s80, 1
	v_add_lshl_u32 v35, v91, s80, 1
	v_add_lshl_u32 v36, v92, s80, 1
	v_add_lshl_u32 v37, v93, s80, 1
	v_add_lshl_u32 v38, v94, s80, 1
	v_add_lshl_u32 v39, v95, s80, 1
	v_add_lshl_u32 v40, v96, s80, 1
	v_add_lshl_u32 v41, v97, s80, 1
	v_add_lshl_u32 v42, v98, s80, 1
	v_add_lshl_u32 v43, v99, s80, 1
	v_add_lshl_u32 v44, v100, s80, 1
	v_add_lshl_u32 v19, v19, s80, 1
	v_add_lshl_u32 v20, v20, s80, 1
	v_add_lshl_u32 v21, v21, s80, 1
	v_add_lshl_u32 v22, v22, s80, 1
	v_add_lshl_u32 v23, v23, s80, 1
	v_add_lshl_u32 v24, v24, s80, 1
	v_add_lshl_u32 v25, v25, s80, 1
	v_add_lshl_u32 v26, v26, s80, 1
	v_add_lshl_u32 v27, v27, s80, 1
	v_add_lshl_u32 v28, v28, s80, 1
	v_add_lshl_u32 v29, v29, s80, 1
	v_add_lshl_u32 v30, v30, s80, 1
	v_add_lshl_u32 v31, v31, s80, 1
	v_add_lshl_u32 v32, v32, s80, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v215, s58 :: v_dual_mov_b32 v214, s57
	v_dual_mov_b32 v213, s56 :: v_dual_mov_b32 v212, s55
	v_dual_mov_b32 v211, s54 :: v_dual_mov_b32 v210, s53
	v_mov_b32_e32 v209, s52
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s12, s86, s80
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v13, v[9:10]
	ds_store_b64 v107, v[11:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v207, v14, s[72:75], 0 offen
	buffer_load_u16 v206, v15, s[72:75], 0 offen
	buffer_load_u16 v205, v16, s[72:75], 0 offen
	buffer_load_u16 v204, v17, s[72:75], 0 offen
	buffer_load_u16 v203, v18, s[72:75], 0 offen
	buffer_load_u16 v202, v19, s[72:75], 0 offen
	buffer_load_u16 v201, v20, s[72:75], 0 offen
	buffer_load_u16 v200, v21, s[72:75], 0 offen
	buffer_load_u16 v199, v22, s[72:75], 0 offen
	buffer_load_u16 v198, v23, s[72:75], 0 offen
	buffer_load_u16 v197, v24, s[72:75], 0 offen
	buffer_load_u16 v196, v25, s[72:75], 0 offen
	buffer_load_u16 v195, v26, s[72:75], 0 offen
	buffer_load_u16 v194, v27, s[72:75], 0 offen
	buffer_load_u16 v193, v28, s[72:75], 0 offen
	buffer_load_u16 v192, v29, s[72:75], 0 offen
	buffer_load_u16 v191, v30, s[72:75], 0 offen
	buffer_load_u16 v190, v31, s[72:75], 0 offen
	buffer_load_u16 v189, v32, s[72:75], 0 offen
	buffer_load_u16 v188, v33, s[72:75], 0 offen
	buffer_load_u16 v187, v34, s[72:75], 0 offen
	buffer_load_u16 v186, v35, s[72:75], 0 offen
	buffer_load_u16 v185, v36, s[72:75], 0 offen
	buffer_load_u16 v184, v37, s[72:75], 0 offen
	buffer_load_u16 v183, v38, s[72:75], 0 offen
	buffer_load_u16 v182, v39, s[72:75], 0 offen
	buffer_load_u16 v181, v40, s[72:75], 0 offen
	buffer_load_u16 v180, v41, s[72:75], 0 offen
	buffer_load_u16 v179, v42, s[72:75], 0 offen
	buffer_load_u16 v178, v43, s[72:75], 0 offen
	buffer_load_u16 v177, v44, s[72:75], 0 offen
	buffer_load_u16 v208, v208, s[72:75], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v82 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v101 offset1:1
	ds_load_2addr_stride64_b64 v[41:44], v82 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[217:220], v102 offset1:1
	ds_load_2addr_stride64_b64 v[221:224], v101 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[225:228], v102 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[229:232], v103 offset1:1
	ds_load_2addr_stride64_b64 v[233:236], v103 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[55:56], v[209:216] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[11:12], v[55:56], v[209:216] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[55:56], v[209:216] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[13:14], v[57:58], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[15:16], v[57:58], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[55:56], v[209:216] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[221:222], v[57:58], v[17:24] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v209, s80, v45
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[217:218], v[59:60], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[223:224], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[219:220], v[59:60], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[225:226], v[59:60], v[17:24] neg_lo:[1,1,0]
	v_mov_b16_e32 v41.l, 0
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v209, v104
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[9:16], v[227:228], v[59:60], v[9:16] neg_lo:[1,1,0]
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v209, v105
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[229:230], v[61:62], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[231:232], v[61:62], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[233:234], v[61:62], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[235:236], v[61:62], v[9:16] neg_lo:[1,1,0]
	v_mov_b16_e32 v42.l, v41.l
	.loc	1 866 21                        ; attention.py:866:21
	s_and_b32 s10, s1, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s11, s10
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s11, s18
	s_cbranch_execz .LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v42, s12, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v43, 31, v42
	v_add_co_u32 v42, s10, s76, v42
	v_add_co_ci_u32_e64 v43, null, s77, v43, s10
	global_load_d16_u8 v42, v[42:43], off
.LBB0_5:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v209, v130
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v209, v137
	.loc	1 866 21                        ; attention.py:866:21
	s_and_b32 s10, s2, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s11, s10
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s11, s19
	s_cbranch_execz .LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v41, s12, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v44, 31, v41
	v_add_co_u32 v43, s10, s76, v41
	v_add_co_ci_u32_e64 v44, null, s77, v44, s10
	global_load_d16_u8 v41, v[43:44], off
.LBB0_7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	v_mov_b16_e32 v43.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v209, v131
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v209, v138
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v42.h, v43.l
	.loc	1 866 21                        ; attention.py:866:21
	s_and_b32 s10, s4, s10
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s11, s20
	s_cbranch_execz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v44, s12, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v211, 31, v44
	v_add_co_u32 v210, s10, s76, v44
	v_add_co_ci_u32_e64 v211, null, s77, v211, s10
	global_load_d16_hi_u8 v42, v[210:211], off
.LBB0_9:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v209, v132
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v209, v139
	.loc	1 866 21                        ; attention.py:866:21
	s_and_b32 s10, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s11, s10
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s11, s21
	s_cbranch_execz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v43, s12, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, s10, s76, v43
	v_add_co_ci_u32_e64 v44, null, s77, v44, s10
	global_load_d16_u8 v43, v[43:44], off
.LBB0_11:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v43.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v209, v133
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v209, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v44.l, v43.h
	.loc	1 866 21                        ; attention.py:866:21
	s_and_b32 s10, s6, s10
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s11, s22
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v44, s12, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v211, 31, v44
	v_add_co_u32 v210, s10, s76, v44
	v_add_co_ci_u32_e64 v211, null, s77, v211, s10
	global_load_d16_u8 v44, v[210:211], off
.LBB0_13:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v209, v134
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v209, v141
	.loc	1 866 21                        ; attention.py:866:21
	s_and_b32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s11, s10
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s11, s23
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v210, s12, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v211, 31, v210
	v_add_co_u32 v210, s10, s76, v210
	v_add_co_ci_u32_e64 v211, null, s77, v211, s10
	global_load_d16_hi_u8 v43, v[210:211], off
.LBB0_15:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	v_mov_b16_e32 v41.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v209, v135
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v209, v142
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v44.h, v41.h
	.loc	1 866 21                        ; attention.py:866:21
	s_and_b32 s10, s8, s10
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s11, s24
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v210, s12, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v211, 31, v210
	v_add_co_u32 v210, s10, s76, v210
	v_add_co_ci_u32_e64 v211, null, s77, v211, s10
	global_load_d16_hi_u8 v44, v[210:211], off
.LBB0_17:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v209, v136
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v209, v143
	.loc	1 866 21                        ; attention.py:866:21
	s_and_b32 s10, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s11, s10
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s11, s25
	s_cbranch_execz .LBB0_2
; %bb.18:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v209, s12, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v210, 31, v209
	v_add_co_u32 v209, s10, s76, v209
	v_add_co_ci_u32_e64 v210, null, s77, v210, s10
	global_load_d16_hi_u8 v41, v[209:210], off
	s_branch .LBB0_2
.LBB0_19:
	.loc	1 0 34                          ; attention.py:0:34
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v10, v8
	s_branch .LBB0_21
.LBB0_20:                               ; %._crit_edge.loopexit
.Ltmp144:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v26, v26 :: v_dual_add_f32 v10, 0, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v9, 0xff800000, v9
.Ltmp145:
.LBB0_21:                               ; %._crit_edge
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e64 s0, 0, v68
.Ltmp146:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v11, 4, v69
.Ltmp147:
	.loc	1 1028 26                       ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v69
.Ltmp148:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v12, v67, 2, 0
	s_waitcnt lgkmcnt(0)
.Ltmp149:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v2, 0, v2, s0
.Ltmp150:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v11, 0, v11
.Ltmp151:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v9 :: v_dual_cndmask_b32 v10, 0, v10
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v2
.Ltmp153:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_barrier
.Ltmp154:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v16, 0, v4, s0
.Ltmp155:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v11, v9
	s_waitcnt lgkmcnt(0)
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v13, v1
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_barrier
	ds_load_b32 v9, v12
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v14 :: v_dual_mov_b32 v15, v3
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp161:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_barrier
	ds_store_b32 v11, v10
	s_waitcnt lgkmcnt(0)
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp163:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_barrier
.Ltmp164:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v13
.Ltmp165:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v10, v3, v15
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	ds_load_b32 v3, v12
.Ltmp168:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v2
.Ltmp169:
	.loc	1 1025 31 is_stmt 1             ; attention.py:1025:31
	s_mul_i32 s78, s78, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s1, s71, 2
.Ltmp170:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v10
.Ltmp171:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s2, s79, s78
.Ltmp172:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v11, v1
.Ltmp173:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s2, s2, s1
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s1, exec_lo
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v8
.Ltmp175:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v12
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v2
.Ltmp177:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v12, v3
.Ltmp178:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp179:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v11
.Ltmp180:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v11, v9
.Ltmp181:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp182:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp183:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v10, v13 :: v_dual_mov_b32 v13, v1
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp185:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v2, v14
.Ltmp186:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v14, 0, v6, s0
.Ltmp187:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v20
.Ltmp188:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v20, v8 :: v_dual_add_f32 v1, v1, v13
	v_mov_b32_e32 v15, v10
.Ltmp189:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v13, 0, v5, s0
.Ltmp190:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v19, v7 :: v_dual_mov_b32 v2, v1
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v17, v13 :: v_dual_add_f32 v14, v14, v18
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp191:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v10, v15 :: v_dual_mov_b32 v15, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp192:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp193:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v7, v19 :: v_dual_mov_b32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp194:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v4 :: v_dual_mov_b32 v6, v10
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp195:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
.Ltmp196:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v16, v15
.Ltmp198:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v13
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp199:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v18
	v_add_f32_e32 v8, v8, v20
.Ltmp200:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v15
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp201:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v16 :: v_dual_add_f32 v16, v13, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp202:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v18, v16 :: v_dual_add_f32 v17, v7, v19
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v7, v15
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v8
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp203:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp204:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp205:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v15, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v7, v16, v18 :: v_dual_add_f32 v16, v17, v20
.Ltmp206:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v18, v14 :: v_dual_add_f32 v17, v8, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v15, v13 :: v_dual_mov_b32 v8, v7
	v_mov_b32_e32 v19, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp207:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_23
; %bb.22:
.Ltmp208:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v0, v11, v11 :: v_dual_max_f32 v9, v9, v9
.Ltmp209:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s3, s2, 31
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v12, v3, v12
.Ltmp211:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[2:3], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp212:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v9, v0 :: v_dual_mov_b32 v0, 0
.Ltmp213:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s68, s4
	s_addc_u32 s5, s69, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v0, v[11:12], s[4:5]
.LBB0_23:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s1
.Ltmp214:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v1, v2 :: v_dual_and_b32 v0, 0xc0, v65
.Ltmp215:
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e64 s0, s71, v45
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v13, v15 :: v_dual_add_f32 v11, v10, v6
	v_dual_add_f32 v10, v4, v5 :: v_dual_and_b32 v3, 0xe0, v66
.Ltmp217:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v66
	v_lshlrev_b32_e32 v2, 5, v67
	s_and_b32 vcc_lo, vcc_lo, s0
	v_add_nc_u32_e32 v0, 0, v0
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v20, v17, v20 :: v_dual_add_f32 v19, v16, v19
	v_dual_add_f32 v18, v14, v18 :: v_dual_add_nc_u32 v3, 0, v3
	v_add_f32_e32 v17, v7, v8
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp219:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v0, v0, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[9:12]
	ds_store_b128 v3, v[17:20] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s2, v45
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s69, s69, 0xffff
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v1, v1, 2, 8
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[68:71], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp220:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 237
		.amdhsa_next_free_sgpr 93
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 237
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 93
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12512
; TotalNumSgprs: 95
; NumVgprs: 237
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 95
; NumVGPRsForWavesPerEU: 237
; Occupancy: 6
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0xc5 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x9f DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xb8:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp210                        ; DW_AT_low_pc
	.long	.Ltmp211-.Ltmp210               ; DW_AT_high_pc
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     95
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     237
    .vgpr_spill_count: 0
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
