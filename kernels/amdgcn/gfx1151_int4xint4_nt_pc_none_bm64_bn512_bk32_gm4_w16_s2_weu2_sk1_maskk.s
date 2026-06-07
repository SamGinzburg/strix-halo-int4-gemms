	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v65, 3, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v71, 7, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v66, 1, v0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v72, 16, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v69, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v68, 1, v71
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v82, 0x100, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v10, v9
	v_dual_mov_b32 v12, v9 :: v_dual_lshlrev_b32 v67, 3, v69
	s_load_b64 s[40:41], s[0:1], 0x20
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v6, v0, 6, 1
	v_dual_mov_b32 v16, v9 :: v_dual_lshlrev_b32 v73, 3, v0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_bfe_i32 v7, v0, 4, 1
	v_mov_b32_e32 v11, v9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0x1ff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s24, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 23
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 9
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s12, s4, 2
	v_dual_mov_b32 v36, v9 :: v_dual_and_b32 v85, 0x88, v6
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s12
	v_dual_mov_b32 v38, v9 :: v_dual_and_b32 v87, 0x88, v7
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v86, 0xf78, v73
	v_bfe_i32 v74, v0, 3, 1
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v33, v9
	v_mov_b32_e32 v35, v9
	v_mov_b32_e32 v37, v9
	v_mov_b32_e32 v39, v9
	v_mov_b32_e32 v41, v9
	v_mov_b32_e32 v43, v9
	v_dual_mov_b32 v44, v9 :: v_dual_and_b32 v73, 0xf00, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v45, v9
	v_mov_b32_e32 v46, v9
	v_mov_b32_e32 v47, v9
	v_mov_b32_e32 v48, v9
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v49, v9
	v_mov_b32_e32 v50, v9
	v_mov_b32_e32 v51, v9
	s_cvt_u32_f32 s5, s5
	v_mov_b32_e32 v52, v9
	v_mov_b32_e32 v53, v9
	v_mov_b32_e32 v54, v9
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v55, v9
	s_mul_hi_u32 s8, s5, s8
	v_mov_b32_e32 v56, v9
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_mov_b32_e32 v57, v9
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v58, v9
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v59, v9
	s_cselect_b32 s4, s9, s5
	v_mov_b32_e32 v60, v9
	s_xor_b32 s4, s4, s8
	v_mov_b32_e32 v61, v9
	s_sub_i32 s14, s4, s8
	v_mov_b32_e32 v62, v9
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s15, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s12
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s15
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s17, s16
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s18, s17
	v_mov_b32_e32 v63, v9
	v_mov_b32_e32 v64, v9
	v_mov_b32_e32 v25, v9
	v_rcp_iflag_f32_e32 v1, s18
	v_mov_b32_e32 v26, v9
	v_mov_b32_e32 v27, v9
	v_mov_b32_e32 v28, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v32, v9
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v18, v9
	v_readfirstlane_b32 s18, v1
	v_mov_b32_e32 v19, v9
	v_mov_b32_e32 v20, v9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s23, s7
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v22, v9
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v24, v9
	s_mul_i32 s18, s18, s6
	v_mov_b32_e32 v6, v9
	s_mul_hi_u32 s12, s6, s18
	s_xor_b32 s18, s2, s16
	s_add_i32 s12, s6, s12
	s_ashr_i32 s27, s18, 31
	s_mul_hi_u32 s12, s14, s12
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s12, s17
	s_add_i32 s18, s12, 1
	s_sub_i32 s14, s14, s19
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s22, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s19, s14, s17
	s_cmp_ge_u32 s14, s17
	v_mov_b32_e32 v7, v9
	s_cselect_b32 s12, s18, s12
	s_cselect_b32 s14, s19, s14
	s_add_i32 s18, s12, 1
	s_cmp_ge_u32 s14, s17
	v_mov_b32_e32 v8, v9
	s_cselect_b32 s12, s18, s12
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s14, s13, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s30, s12, s27
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s28, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s13, s14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s12, s30, s27
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s29, s3, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s3, s12, s16
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mul_lo_u32 v3, s29, v65
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s3
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v1, s28, v68
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s15
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mul_lo_u32 v4, s29, v66
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s24, s2, 6
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v2, s28, v67
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s2, s24, s29
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mul_lo_u32 v5, s29, v82
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v80, v3, v68, s2
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s12, 9
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s13, 1
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_mul_i32 s2, s3, s29
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s26, -1, 0
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_add_i32 s12, s2, s28
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v1, s28, v80
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s29, v2
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add3_u32 v79, v4, v67, s12
	v_add3_u32 v78, v5, v67, s12
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s26, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s26, s2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_and_b32 s21, s21, 0xffff
	v_dual_cndmask_b32 v2, 0x80000000, v79 :: v_dual_cndmask_b32 v3, 0x80000000, v78
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_lshlrev_b32_e32 v70, 1, v0
	buffer_load_u16 v81, v1, s[4:7], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[76:77], v2, s[20:23], 0 offen
	buffer_load_b64 v[83:84], v3, s[20:23], 0 offen
	v_mov_b32_e32 v34, v9
	v_dual_mov_b32 v40, v9 :: v_dual_lshlrev_b32 v71, 4, v71
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v75, 0x37e, v70
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_xor_b32_e32 v75, v85, v75
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v85, v87, v86
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v42, v9
	v_mov_b32_e32 v5, v9
	v_cmp_eq_u32_e64 s0, 0, v72
	v_and_b32_e32 v72, 0x88, v74
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v74, 0, v75
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v75, 0, v85
	s_mov_b32 s12, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s13, 34
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(2)
	ds_store_b16 v74, v81 offset:8192
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v75, v[76:77], v[83:84] offset1:8
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	v_sub_nc_u32_e32 v76, s29, v67
	v_sub_nc_u32_e32 v77, s29, v68
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s1, s28, 16
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s1, v76
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v1, s1, v80
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v2, 16, v79
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s1, s1, v77
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v3, 16, v78
	.loc	1 115 22 is_stmt 0              ; generate_amdgcn.py:115:22
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s1, s29, 15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s1, s1, 4
.Ltmp13:
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	buffer_load_u16 v107, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[103:104], v2, s[20:23], 0 offen
	buffer_load_b64 v[105:106], v3, s[20:23], 0 offen
	v_or_b32_e32 v1, v72, v71
	v_or3_b32 v3, v71, v73, v72
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_max_u32 s1, s1, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_cmp_eq_u32 s1, 2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v2, 0, v1
	v_xor_b32_e32 v1, 8, v1
	v_add_nc_u32_e32 v79, 0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v78, 0x2000, v2
	v_xor_b32_e32 v2, 8, v3
	v_add_nc_u32_e32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v81, 0, v2
	v_add_nc_u32_e32 v80, 0x2000, v1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_mov_b32_e32 v1, s12
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[87:90], v78 offset0:64 offset1:96
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_mov_b32_e32 v6, s17
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[17:20], v78 offset1:32
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[83:86], v79 offset1:8
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_mov_b32_e32 v7, s18
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[91:94], v80 offset1:32
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[95:98], v81 offset1:8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[99:102], v80 offset0:64 offset1:96
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_mov_b32_e32 v8, s19
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b16 v74, v107 offset:8192
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v75, v[103:104], v[105:106] offset1:8
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[85:86], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[19:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[85:86], v[19:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[83:84], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[89:90], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[89:90], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[95:96], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[97:98], v[91:92], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[95:96], v[93:94], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[97:98], v[93:94], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[95:96], v[99:100], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[97:98], v[99:100], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[95:96], v[101:102], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[101:102], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	s_lshl_b32 s2, s30, 9
	v_add_nc_u32_e32 v83, s24, v65
	v_or_b32_e32 v66, s2, v66
	v_or_b32_e32 v82, s2, v82
	s_lshl_b32 s2, s27, 9
	s_add_i32 s12, s1, -2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_subrev_nc_u32_e32 v66, s2, v66
	v_subrev_nc_u32_e32 v82, s2, v82
	s_add_i32 s2, s28, 32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[65:66], null, s29, v66, v[67:68]
	v_mad_u64_u32 v[66:67], null, s29, v82, v[67:68]
	v_mad_u64_u32 v[67:68], null, s29, v83, v[68:69]
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v68, s2, v67
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v82, s2, v65
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v76
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s1, s2, v77
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v83, s2, v66
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s12, s12, -1
	s_add_i32 s2, s2, 16
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v68, 0x80000000, v68, s1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s12, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[106:107], v82, s[20:23], 0 offen
	buffer_load_b64 v[108:109], v83, s[20:23], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[82:85], v78 offset1:32
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[86:89], v79 offset1:8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[90:93], v78 offset0:64 offset1:96
	ds_load_2addr_b64 v[94:97], v80 offset1:32
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[98:101], v81 offset1:8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[102:105], v80 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b16 v74, v68 offset:8192
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v75, v[106:107], v[108:109] offset1:8
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[86:87], v[82:83], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[88:89], v[82:83], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[86:87], v[84:85], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[88:89], v[84:85], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[86:87], v[90:91], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[88:89], v[90:91], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[86:87], v[92:93], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[88:89], v[92:93], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[100:101], v[94:95], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[96:97], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[100:101], v[96:97], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[98:99], v[102:103], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[102:103], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[104:105], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[100:101], v[104:105], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s26
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_or_b32_e32 v65, v72, v71
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_or3_b32 v75, v71, v73, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v66, 0, v65
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v67, 0, v75
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xad_u32 v77, v65, 8, 0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xad_u32 v79, v75, 8, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v76, 0x2000, v66
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[65:68], v67 offset1:8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[71:74], v76 offset1:32
	v_add_nc_u32_e32 v87, 0x2000, v77
	ds_load_2addr_b64 v[75:78], v76 offset0:64 offset1:96
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[79:82], v79 offset1:8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[83:86], v87 offset1:32
	ds_load_2addr_b64 v[87:90], v87 offset0:64 offset1:96
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[71:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[71:72], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[67:68], v[73:74], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[75:76], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[75:76], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[77:78], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[79:80], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[83:84], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[79:80], v[85:86], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[85:86], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[79:80], v[87:88], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[87:88], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[79:80], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[89:90], v[1:8] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v65, 15, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s36, s8
	.loc	1 128 22 is_stmt 0              ; generate_amdgcn.py:128:22
	v_or_b32_e32 v66, s24, v65
	.loc	1 129 22 is_stmt 1              ; generate_amdgcn.py:129:22
	v_or_b32_e32 v67, s3, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v73, v9
	v_cvt_f32_i32_e32 v74, v10
	v_cvt_f32_i32_e32 v75, v11
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_lshlrev_b32_e32 v66, 1, v66
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v89, v3
	v_cvt_f32_i32_e32 v83, v21
	v_cvt_f32_i32_e32 v87, v1
	v_cvt_f32_i32_e32 v76, v12
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_or_b32_e32 v68, 32, v66
	v_or_b32_e32 v71, 64, v66
	v_or_b32_e32 v72, 0x60, v66
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v77, v13
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x3
	buffer_load_u16 v66, v66, s[36:39], 0 offen
	buffer_load_u16 v68, v68, s[36:39], 0 offen
	buffer_load_u16 v71, v71, s[36:39], 0 offen
	buffer_load_u16 v72, v72, s[36:39], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v78, v14
	v_cvt_f32_i32_e32 v79, v15
	v_cvt_f32_i32_e32 v80, v16
	v_cvt_f32_i32_e32 v81, v19
	v_cvt_f32_i32_e32 v82, v20
	v_cvt_f32_i32_e32 v84, v22
	v_cvt_f32_i32_e32 v85, v23
	v_cvt_f32_i32_e32 v86, v24
	v_cvt_f32_i32_e32 v88, v2
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s24, s24, s25
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v90, v4
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v67, 1, v67
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v0, 0x1f0, v0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshlrev_b32_e32 v10, 5, v69
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v69, v17
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v67, v67, s[36:39], 0 offen
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshl_add_u32 v11, v0, 2, 0
	v_lshl_add_u32 v21, v0, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v67
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v67, 16, v68
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_and_b32_e32 v9, 28, v70
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v70, v18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_add3_u32 v1, v11, v10, v9
	ds_store_b32 v1, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v21
	ds_load_b128 v[13:16], v21 offset:16
	ds_load_b128 v[17:20], v21 offset:1024
	ds_load_b128 v[21:24], v21 offset:1040
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v97, v12, v67
	v_mul_f32_e32 v91, v10, v66
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v0, 1, v0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v103, v14, v66 :: v_dual_lshlrev_b32 v68, 16, v71
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v71, 16, v72
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v72, v9, v66
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v2, s25, v65
	v_add3_u32 v3, s24, s3, v0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v95, v10, v67
	v_mul_f32_e32 v99, v10, v68
	v_mul_f32_e32 v10, v10, v71
	v_dual_mul_f32 v108, v15, v67 :: v_dual_mul_f32 v111, v14, v68
	v_mul_f32_e32 v92, v11, v66
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mad_u64_u32 v[0:1], null, s25, 48, v[2:3]
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v100, v11, v68 :: v_dual_add_nc_u32 v1, 0x100, v3
	v_dual_mul_f32 v93, v12, v66 :: v_dual_mul_f32 v94, v9, v67
	v_mul_f32_e32 v96, v11, v67
	v_mul_f32_e32 v98, v9, v68
	v_dual_mul_f32 v101, v12, v68 :: v_dual_mul_f32 v102, v13, v66
	v_dual_mul_f32 v9, v9, v71 :: v_dual_mul_f32 v104, v15, v66
	v_dual_mul_f32 v11, v11, v71 :: v_dual_mul_f32 v110, v13, v68
	v_dual_mul_f32 v105, v16, v66 :: v_dual_mul_f32 v106, v13, v67
	v_dual_mul_f32 v107, v14, v67 :: v_dual_mul_f32 v112, v15, v68
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v109, v16, v67 :: v_dual_mul_f32 v114, v17, v66
	v_dual_mul_f32 v113, v16, v68 :: v_dual_mul_f32 v14, v14, v71
	v_dual_mul_f32 v13, v13, v71 :: v_dual_mul_f32 v116, v19, v66
	v_dual_mul_f32 v15, v15, v71 :: v_dual_mul_f32 v122, v17, v68
	v_dual_mul_f32 v16, v16, v71 :: v_dual_mul_f32 v115, v18, v66
	v_dual_mul_f32 v117, v20, v66 :: v_dual_mul_f32 v118, v17, v67
	v_dual_mul_f32 v119, v18, v67 :: v_dual_mul_f32 v124, v19, v68
	v_dual_mul_f32 v120, v19, v67 :: v_dual_mul_f32 v123, v18, v68
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v121, v20, v67 :: v_dual_mul_f32 v126, v21, v66
	v_dual_mul_f32 v125, v20, v68 :: v_dual_mul_f32 v18, v18, v71
	v_dual_mul_f32 v17, v17, v71 :: v_dual_mul_f32 v128, v23, v66
	v_mul_f32_e32 v19, v19, v71
	v_dual_mul_f32 v20, v20, v71 :: v_dual_mul_f32 v127, v22, v66
	v_mul_f32_e32 v66, v24, v66
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v65, v5
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v12, v12, v71
	v_dual_mul_f32 v129, v21, v67 :: v_dual_mul_f32 v134, v23, v68
	v_mul_f32_e32 v130, v22, v67
	v_dual_mul_f32 v131, v23, v67 :: v_dual_mul_f32 v132, v21, v68
	v_mul_f32_e32 v67, v24, v67
	v_mul_f32_e32 v133, v22, v68
	v_dual_mul_f32 v68, v24, v68 :: v_dual_mul_f32 v21, v21, v71
	v_dual_mul_f32 v22, v22, v71 :: v_dual_mul_f32 v53, v129, v53
	v_mul_f32_e32 v23, v23, v71
	v_mul_f32_e32 v24, v24, v71
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v71, v72, v73
	v_dual_mul_f32 v47, v108, v47 :: v_dual_mul_f32 v50, v119, v50
	v_dual_mul_f32 v39, v128, v39 :: v_dual_mul_f32 v40, v66, v40
	v_mul_f32_e32 v73, v92, v75
	v_mul_f32_e32 v75, v102, v77
	v_dual_mul_f32 v77, v104, v79 :: v_dual_mul_f32 v34, v115, v34
	v_dual_mul_f32 v33, v114, v33 :: v_dual_mul_f32 v36, v117, v36
	v_dual_mul_f32 v41, v94, v41 :: v_dual_mul_f32 v44, v97, v44
	v_dual_mul_f32 v45, v106, v45 :: v_dual_mul_f32 v48, v109, v48
	v_dual_mul_f32 v49, v118, v49 :: v_dual_mul_f32 v52, v121, v52
	v_dual_mul_f32 v61, v110, v61 :: v_dual_mul_f32 v62, v111, v62
	v_dual_mul_f32 v21, v21, v65 :: v_dual_mul_f32 v6, v22, v6
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_bfe_u32 v22, v71, 16, 1
	v_bfe_u32 v92, v47, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v37, v126, v37 :: v_dual_mul_f32 v42, v95, v42
	v_dual_mul_f32 v15, v15, v85 :: v_dual_mul_f32 v16, v16, v86
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v85, v40, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v72, v91, v74
	v_dual_mul_f32 v74, v93, v76 :: v_dual_mul_f32 v43, v96, v43
	v_dual_mul_f32 v46, v107, v46 :: v_dual_mul_f32 v63, v112, v63
	v_mul_f32_e32 v64, v113, v64
	v_dual_mul_f32 v9, v9, v69 :: v_dual_mul_f32 v10, v10, v70
	v_dual_mul_f32 v11, v11, v81 :: v_dual_mul_f32 v12, v12, v82
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_bfe_u32 v70, v33, 16, 1
	v_bfe_u32 v79, v34, 16, 1
	v_bfe_u32 v81, v36, 16, 1
	v_bfe_u32 v86, v41, 16, 1
	v_cmp_o_f32_e64 s22, v47, v47
	v_bfe_u32 v93, v48, 16, 1
	v_bfe_u32 v94, v49, 16, 1
	v_bfe_u32 v95, v50, 16, 1
	v_bfe_u32 v107, v62, 16, 1
	v_add3_u32 v22, v71, v22, 0x7fff
	v_add3_u32 v47, v47, v92, 0x7fff
	v_bfe_u32 v82, v37, 16, 1
	v_cmp_o_f32_e64 s15, v40, v40
	v_add3_u32 v40, v40, v85, 0x7fff
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_lshl_add_u32 v5, s25, 4, v2
	v_lshl_add_u32 v4, s25, 5, v2
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v76, v103, v78 :: v_dual_mul_f32 v51, v120, v51
	v_mul_f32_e32 v54, v130, v54
	v_dual_mul_f32 v25, v122, v25 :: v_dual_mul_f32 v26, v123, v26
	v_dual_mul_f32 v7, v23, v7 :: v_dual_mul_f32 v8, v24, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v23, v72, 16, 1
	v_bfe_u32 v24, v73, 16, 1
	v_cmp_o_f32_e64 s8, v33, v33
	v_cmp_o_f32_e64 s9, v34, v34
	v_cmp_o_f32_e64 s11, v36, v36
	v_cmp_o_f32_e64 s16, v41, v41
	v_cmp_o_f32_e64 s23, v48, v48
	v_cmp_o_f32_e64 s24, v49, v49
	v_cmp_o_f32_e64 s25, v50, v50
	v_add3_u32 v33, v33, v70, 0x7fff
	v_add3_u32 v34, v34, v79, 0x7fff
	v_add3_u32 v36, v36, v81, 0x7fff
	v_add3_u32 v41, v41, v86, 0x7fff
	v_add3_u32 v48, v48, v93, 0x7fff
	v_add3_u32 v49, v49, v94, 0x7fff
	v_add3_u32 v50, v50, v95, 0x7fff
	v_add3_u32 v70, v62, v107, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v40.l, 0x7fff, v47.h, s22
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_bfe_u32 v47, v63, 16, 1
	v_cmp_o_f32_e64 s12, v37, v37
	v_add3_u32 v37, v37, v82, 0x7fff
	v_cmp_o_f32_e64 s1, v72, v72
	v_cmp_o_f32_e64 s2, v73, v73
	v_bfe_u32 v96, v51, 16, 1
	v_add3_u32 v23, v72, v23, 0x7fff
	v_add3_u32 v24, v73, v24, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s8
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s9
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s11
	v_cndmask_b16 v36.h, 0x7fff, v40.h, s15
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s16
	v_cndmask_b16 v40.h, 0x7fff, v48.h, s23
	v_cndmask_b16 v41.l, 0x7fff, v49.h, s24
	v_cndmask_b16 v41.h, 0x7fff, v50.h, s25
	v_bfe_u32 v49, v64, 16, 1
	v_cndmask_b16 v48.h, 0x7fff, v70.h, vcc_lo
	v_bfe_u32 v50, v25, 16, 1
	v_add3_u32 v47, v63, v47, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v17, v17, v87 :: v_dual_mul_f32 v18, v18, v88
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v87, v42, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v27, v124, v27 :: v_dual_mul_f32 v28, v125, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s26, v51, v51
	v_add3_u32 v51, v51, v96, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s1
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s2
	v_add3_u32 v49, v64, v49, 0x7fff
	v_cmp_o_f32_e64 s1, v64, v64
	v_add3_u32 v50, v25, v50, 0x7fff
	v_cmp_o_f32_e64 s2, v25, v25
	v_cndmask_b16 v25.l, 0x7fff, v47.h, vcc_lo
	v_bfe_u32 v47, v26, 16, 1
	v_cmp_o_f32_e64 s17, v42, v42
	v_add3_u32 v42, v42, v87, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v29, v132, v29 :: v_dual_mul_f32 v30, v133, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.l, 0x7fff, v51.h, s26
	v_cndmask_b16 v25.h, 0x7fff, v49.h, s1
	v_bfe_u32 v49, v27, 16, 1
	v_bfe_u32 v51, v28, 16, 1
	v_add3_u32 v47, v26, v47, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s2
	v_add3_u32 v26, v27, v49, 0x7fff
	v_cmp_o_f32_e64 s1, v27, v27
	v_add3_u32 v27, v28, v51, 0x7fff
	v_cmp_o_f32_e64 s2, v28, v28
	v_cndmask_b16 v50.h, 0x7fff, v47.h, vcc_lo
	v_bfe_u32 v28, v29, 16, 1
	v_bfe_u32 v47, v30, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v31, v134, v31 :: v_dual_mul_f32 v32, v68, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v28, v29, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_add3_u32 v29, v30, v47, 0x7fff
	v_cmp_o_f32_e64 s1, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s2
	v_bfe_u32 v27, v31, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, vcc_lo
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s1
	v_bfe_u32 v29, v9, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s2, v31, v31
	v_bfe_u32 v31, v10, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v13, v13, v83 :: v_dual_mul_f32 v14, v14, v84
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_add3_u32 v29, v9, v29, 0x7fff
	v_cmp_o_f32_e64 s1, v9, v9
	v_add3_u32 v9, v10, v31, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s2
	v_cmp_o_f32_e64 s2, v10, v10
	v_cndmask_b16 v27.h, 0x7fff, v30.h, vcc_lo
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v29.h, s1
	v_bfe_u32 v29, v12, 16, 1
	v_bfe_u32 v30, v13, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s2
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v11, v12, v29, 0x7fff
	v_cmp_o_f32_e64 s1, v12, v12
	v_add3_u32 v12, v13, v30, 0x7fff
	v_cmp_o_f32_e64 s2, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s1
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v29, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v78, v105, v80 :: v_dual_mul_f32 v35, v116, v35
	v_mul_f32_e32 v38, v127, v38
	v_dual_mul_f32 v19, v19, v89 :: v_dual_mul_f32 v20, v20, v90
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s2
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v15, v15
	v_add3_u32 v14, v16, v29, 0x7fff
	v_cmp_o_f32_e64 s2, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, vcc_lo
	v_bfe_u32 v13, v17, 16, 1
	v_bfe_u32 v15, v18, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v56, v67, v56 :: v_dual_mul_f32 v57, v98, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v65, v74, 16, 1
	v_bfe_u32 v66, v75, 16, 1
	v_bfe_u32 v67, v76, 16, 1
	v_bfe_u32 v68, v77, 16, 1
	v_bfe_u32 v69, v78, 16, 1
	v_bfe_u32 v80, v35, 16, 1
	v_bfe_u32 v83, v38, 16, 1
	v_bfe_u32 v84, v39, 16, 1
	v_bfe_u32 v88, v43, 16, 1
	v_bfe_u32 v89, v44, 16, 1
	v_bfe_u32 v90, v45, 16, 1
	v_bfe_u32 v91, v46, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s2
	v_bfe_u32 v14, v19, 16, 1
	v_add3_u32 v13, v17, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_add3_u32 v15, v18, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v18, v18
	v_cmp_o_f32_e64 s3, v74, v74
	v_cmp_o_f32_e64 s4, v75, v75
	v_cmp_o_f32_e64 s5, v76, v76
	v_cmp_o_f32_e64 s6, v77, v77
	v_cmp_o_f32_e64 s7, v78, v78
	v_cmp_o_f32_e64 s10, v35, v35
	v_cmp_o_f32_e64 s13, v38, v38
	v_cmp_o_f32_e64 s14, v39, v39
	v_cmp_o_f32_e64 s18, v43, v43
	v_cmp_o_f32_e64 s19, v44, v44
	v_cmp_o_f32_e64 s20, v45, v45
	v_cmp_o_f32_e64 s21, v46, v46
	v_add3_u32 v65, v74, v65, 0x7fff
	v_add3_u32 v66, v75, v66, 0x7fff
	v_add3_u32 v67, v76, v67, 0x7fff
	v_add3_u32 v68, v77, v68, 0x7fff
	v_add3_u32 v69, v78, v69, 0x7fff
	v_add3_u32 v35, v35, v80, 0x7fff
	v_add3_u32 v38, v38, v83, 0x7fff
	v_add3_u32 v39, v39, v84, 0x7fff
	v_add3_u32 v43, v43, v88, 0x7fff
	v_add3_u32 v44, v44, v89, 0x7fff
	v_add3_u32 v45, v45, v90, 0x7fff
	v_add3_u32 v46, v46, v91, 0x7fff
	v_add3_u32 v14, v19, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v19, v19
	v_bfe_u32 v16, v20, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s1
	v_bfe_u32 v15, v21, 16, 1
	v_bfe_u32 v17, v6, 16, 1
	v_bfe_u32 v18, v7, 16, 1
	v_bfe_u32 v19, v8, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v65.h, s3
	v_cndmask_b16 v24.l, 0x7fff, v66.h, s4
	v_cndmask_b16 v24.h, 0x7fff, v67.h, s5
	v_cndmask_b16 v65.l, 0x7fff, v68.h, s6
	v_cndmask_b16 v65.h, 0x7fff, v69.h, s7
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s10
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s12
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s13
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s14
	v_cndmask_b16 v37.h, 0x7fff, v42.h, s17
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s18
	v_cndmask_b16 v38.h, 0x7fff, v44.h, s19
	v_cndmask_b16 v39.l, 0x7fff, v45.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v46.h, s21
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s2
	v_add3_u32 v16, v20, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v15, v21, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v21, v21
	v_add3_u32 v17, v6, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v6, v6
	v_add3_u32 v6, v7, v18, 0x7fff
	v_cmp_o_f32_e64 s3, v7, v7
	v_add3_u32 v7, v8, v19, 0x7fff
	v_cmp_o_f32_e64 s4, v8, v8
	v_cndmask_b16 v14.h, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v8.l, 0x7fff, v15.h, s1
	v_cndmask_b16 v8.h, 0x7fff, v17.h, s2
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s3
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s4
	v_cndmask_b32_e64 v7, v24, v22, s0
	v_cndmask_b32_e64 v15, v22, v24, s0
	v_cndmask_b32_e64 v16, v65, v23, s0
	v_cndmask_b32_e64 v17, v23, v65, s0
	v_cndmask_b32_e64 v22, v39, v37, s0
	v_cndmask_b32_e64 v23, v37, v39, s0
	v_cndmask_b32_e64 v24, v40, v38, s0
	v_cndmask_b32_e64 v29, v38, v40, s0
	v_cndmask_b32_e64 v39, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b32_e64 v40, v11, v10, s0
	v_cndmask_b32_e64 v10, v10, v11, s0
	v_mov_b32_e32 v11, 0x5410
	v_dual_mov_b32 v12, 0x7632 :: v_dual_mul_f32 v55, v131, v55
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v60, v101, v60
	v_dual_mul_f32 v58, v99, v58 :: v_dual_mul_f32 v59, v100, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v11, 0x1054, v11, s0
	v_cndmask_b32_e64 v12, 0x3276, v12, s0
	v_bfe_u32 v97, v52, 16, 1
	v_bfe_u32 v98, v53, 16, 1
	v_bfe_u32 v99, v54, 16, 1
	v_bfe_u32 v100, v55, 16, 1
	v_bfe_u32 v101, v56, 16, 1
	v_bfe_u32 v102, v57, 16, 1
	v_bfe_u32 v103, v58, 16, 1
	v_bfe_u32 v106, v61, 16, 1
	v_lshl_or_b32 v11, v11, 8, v11
	v_lshl_or_b32 v12, v12, 8, v12
	v_bfe_u32 v104, v59, 16, 1
	v_bfe_u32 v105, v60, 16, 1
	v_cmp_o_f32_e64 s27, v52, v52
	v_cmp_o_f32_e64 s28, v53, v53
	v_cmp_o_f32_e64 s29, v54, v54
	v_cmp_o_f32_e64 s30, v55, v55
	v_cmp_o_f32_e64 s31, v56, v56
	v_cmp_o_f32_e64 s33, v57, v57
	v_cmp_o_f32_e64 s34, v58, v58
	v_cmp_o_f32_e64 s37, v61, v61
	v_add3_u32 v52, v52, v97, 0x7fff
	v_add3_u32 v53, v53, v98, 0x7fff
	v_add3_u32 v54, v54, v99, 0x7fff
	v_add3_u32 v55, v55, v100, 0x7fff
	v_add3_u32 v56, v56, v101, 0x7fff
	v_add3_u32 v57, v57, v102, 0x7fff
	v_add3_u32 v58, v58, v103, 0x7fff
	v_add3_u32 v61, v61, v106, 0x7fff
	v_and_b32_e32 v11, 0x540054, v11
	v_and_b32_e32 v12, 0x760076, v12
	v_cmp_o_f32_e64 s35, v59, v59
	v_cmp_o_f32_e64 s36, v60, v60
	v_add3_u32 v59, v59, v104, 0x7fff
	v_add3_u32 v60, v60, v105, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v52.h, s27
	v_cndmask_b16 v43.l, 0x7fff, v53.h, s28
	v_cndmask_b16 v43.h, 0x7fff, v54.h, s29
	v_cndmask_b16 v44.l, 0x7fff, v55.h, s30
	v_cndmask_b16 v44.h, 0x7fff, v56.h, s31
	v_cndmask_b16 v45.l, 0x7fff, v57.h, s33
	v_cndmask_b16 v45.h, 0x7fff, v58.h, s34
	v_cndmask_b16 v48.l, 0x7fff, v61.h, s37
	v_lshl_or_b32 v11, v11, 4, v11
	v_lshl_or_b32 v12, v12, 4, v12
	v_cndmask_b16 v46.l, 0x7fff, v59.h, s35
	v_cndmask_b16 v46.h, 0x7fff, v60.h, s36
	v_cndmask_b32_e64 v19, v33, v35, s0
	v_cndmask_b32_e64 v21, v34, v36, s0
	v_cndmask_b32_e64 v18, v35, v33, s0
	v_cndmask_b32_e64 v31, v41, v43, s0
	v_cndmask_b32_e64 v33, v42, v44, s0
	v_cndmask_b32_e64 v35, v45, v48, s0
	v_cndmask_b32_e64 v37, v28, v50, s0
	v_cndmask_b32_e64 v28, v50, v28, s0
	v_cndmask_b32_e64 v38, v27, v26, s0
	v_cndmask_b32_e64 v26, v26, v27, s0
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v30, v43, v41, s0
	v_cndmask_b32_e64 v32, v44, v42, s0
	v_cndmask_b32_e64 v41, v8, v13, s0
	v_cndmask_b32_e64 v8, v13, v8, s0
	v_cndmask_b32_e64 v42, v6, v14, s0
	v_cndmask_b32_e64 v6, v14, v6, s0
	v_permlanex16_b32 v13, v15, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v17, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v43, 0x5040504, v11
	v_and_b32_e32 v44, 0x7060706, v12
	v_cndmask_b32_e64 v20, v36, v34, s0
	v_cndmask_b32_e64 v36, v25, v46, s0
	v_cndmask_b32_e64 v25, v46, v25, s0
	v_permlanex16_b32 v15, v19, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v21, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v34, v48, v45, s0
	v_permlanex16_b32 v19, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v29, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v31, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v33, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v35, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v26, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v13, v7, v43
	v_perm_b32 v7, v13, v7, v44
	v_perm_b32 v8, v14, v16, v43
	v_perm_b32 v9, v14, v16, v44
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v2, v3, v2, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_permlanex16_b32 v25, v25, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v10, v15, v18, v43
	v_perm_b32 v11, v15, v18, v44
	v_perm_b32 v12, v17, v20, v43
	v_perm_b32 v13, v17, v20, v44
	v_perm_b32 v14, v19, v22, v43
	v_perm_b32 v15, v19, v22, v44
	v_perm_b32 v16, v21, v24, v43
	v_perm_b32 v17, v21, v24, v44
	v_perm_b32 v18, v23, v30, v43
	v_perm_b32 v19, v23, v30, v44
	v_perm_b32 v20, v27, v32, v43
	v_perm_b32 v21, v27, v32, v44
	v_perm_b32 v22, v29, v34, v43
	v_perm_b32 v23, v29, v34, v44
	v_perm_b32 v26, v28, v37, v43
	v_perm_b32 v27, v28, v37, v44
	v_perm_b32 v28, v31, v38, v43
	v_perm_b32 v29, v31, v38, v44
	v_add_lshl_u32 v38, v3, v5, 1
	s_clause 0x2
	buffer_store_b128 v[6:9], v2, s[40:43], 0 offen
	buffer_store_b128 v[10:13], v2, s[40:43], 0 offen offset:512
	buffer_store_b128 v[14:17], v38, s[40:43], 0 offen
	v_add_lshl_u32 v2, v1, v5, 1
	v_perm_b32 v24, v25, v36, v43
	v_perm_b32 v25, v25, v36, v44
	v_add_lshl_u32 v5, v3, v4, 1
	v_add_lshl_u32 v4, v1, v4, 1
	v_perm_b32 v30, v33, v39, v43
	v_perm_b32 v31, v33, v39, v44
	v_perm_b32 v32, v35, v40, v43
	v_perm_b32 v33, v35, v40, v44
	v_add_lshl_u32 v3, v3, v0, 1
	v_perm_b32 v34, v45, v41, v43
	v_perm_b32 v35, v45, v41, v44
	v_perm_b32 v36, v46, v42, v43
	v_perm_b32 v37, v46, v42, v44
	v_add_lshl_u32 v0, v1, v0, 1
	s_clause 0x4
	buffer_store_b128 v[18:21], v2, s[40:43], 0 offen
	buffer_store_b128 v[22:25], v5, s[40:43], 0 offen
	buffer_store_b128 v[26:29], v4, s[40:43], 0 offen
	buffer_store_b128 v[30:33], v3, s[40:43], 0 offen
	buffer_store_b128 v[34:37], v0, s[40:43], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp14:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 135
		.amdhsa_next_free_sgpr 44
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
		.amdhsa_inst_pref_size 53
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 135
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6708
; TotalNumSgprs: 46
; NumVgprs: 135
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 135
; Occupancy: 10
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
	.byte	5                               ; Abbreviation Code
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
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x64 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x3e DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     135
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
