	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
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
	s_load_b64 s[20:21], s[0:1], 0x20
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
	s_add_i32 s4, s23, 0x1ff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s22, 63
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
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s27, s7
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
	s_ashr_i32 s29, s18, 31
	s_mul_hi_u32 s12, s14, s12
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s12, s17
	s_add_i32 s18, s12, 1
	s_sub_i32 s14, s14, s19
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s26, s6
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
	s_xor_b32 s33, s12, s29
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s30, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s13, s14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s12, s33, s29
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s31, s3, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s3, s12, s16
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mul_lo_u32 v3, s31, v65
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s3
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v1, s30, v68
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s15
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mul_lo_u32 v4, s31, v66
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s22, s2, 6
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v2, s30, v67
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s2, s22, s31
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mul_lo_u32 v5, s31, v82
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v80, v3, v68, s2
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s12, 9
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s13, 1
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_mul_i32 s2, s3, s31
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s28, -1, 0
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_add_i32 s12, s2, s30
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v1, s30, v80
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s31, v2
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add3_u32 v79, v4, v67, s12
	v_add3_u32 v78, v5, v67, s12
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s28, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s28, s2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_and_b32 s25, s25, 0xffff
	v_dual_cndmask_b32 v2, 0x80000000, v79 :: v_dual_cndmask_b32 v3, 0x80000000, v78
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_lshlrev_b32_e32 v70, 1, v0
	buffer_load_u16 v81, v1, s[4:7], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[76:77], v2, s[24:27], 0 offen
	buffer_load_b64 v[83:84], v3, s[24:27], 0 offen
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
	v_sub_nc_u32_e32 v76, s31, v67
	v_sub_nc_u32_e32 v77, s31, v68
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s1, s30, 16
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
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s1, s31, 15
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
	buffer_load_b64 v[103:104], v2, s[24:27], 0 offen
	buffer_load_b64 v[105:106], v3, s[24:27], 0 offen
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
	s_lshl_b32 s2, s33, 9
	v_add_nc_u32_e32 v83, s22, v65
	v_or_b32_e32 v66, s2, v66
	v_or_b32_e32 v82, s2, v82
	s_lshl_b32 s2, s29, 9
	s_add_i32 s12, s1, -2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_subrev_nc_u32_e32 v66, s2, v66
	v_subrev_nc_u32_e32 v82, s2, v82
	s_add_i32 s2, s30, 32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[65:66], null, s31, v66, v[67:68]
	v_mad_u64_u32 v[66:67], null, s31, v82, v[67:68]
	v_mad_u64_u32 v[67:68], null, s31, v83, v[68:69]
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
	buffer_load_b64 v[106:107], v82, s[24:27], 0 offen
	buffer_load_b64 v[108:109], v83, s[24:27], 0 offen
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
	s_and_not1_b32 vcc_lo, exec_lo, s28
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
	v_and_b32_e32 v81, 15, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	.loc	1 128 22 is_stmt 0              ; generate_amdgcn.py:128:22
	v_or_b32_e32 v65, s22, v81
	.loc	1 129 22 is_stmt 1              ; generate_amdgcn.py:129:22
	v_or_b32_e32 v66, s3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v0, 0x1f0, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v79, v10
	v_cvt_f32_i32_e32 v78, v11
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_lshlrev_b32_e32 v65, 1, v65
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v77, v12
	v_cvt_f32_i32_e32 v10, v40
	v_cvt_f32_i32_e32 v11, v41
	v_cvt_f32_i32_e32 v12, v42
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_or_b32_e32 v67, 32, v65
	v_or_b32_e32 v68, 64, v65
	v_or_b32_e32 v71, 0x60, v65
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v40, v54
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x3
	buffer_load_u16 v82, v65, s[4:7], 0 offen
	buffer_load_u16 v83, v67, s[4:7], 0 offen
	buffer_load_u16 v84, v68, s[4:7], 0 offen
	buffer_load_u16 v85, v71, s[4:7], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v41, v55
	v_cvt_f32_i32_e32 v42, v56
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_and_b32_e32 v54, 28, v70
	v_lshlrev_b32_e32 v55, 5, v69
	v_lshl_add_u32 v56, v0, 2, 0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v67, v37
	v_cvt_f32_i32_e32 v37, v51
	v_cvt_f32_i32_e32 v51, v1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s5, s11, 0xffff
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_add3_u32 v1, v56, v55, v54
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v55, v5
	v_cvt_f32_i32_e32 v56, v6
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_mov_b32 s4, s10
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v65, v38
	v_cvt_f32_i32_e32 v38, v52
	v_cvt_f32_i32_e32 v52, v2
	v_cvt_f32_i32_e32 v54, v4
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshl_add_u32 v4, v0, 1, 0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v74, v15
	v_cvt_f32_i32_e32 v73, v16
	v_cvt_f32_i32_e32 v72, v33
	v_cvt_f32_i32_e32 v71, v34
	v_cvt_f32_i32_e32 v15, v45
	v_cvt_f32_i32_e32 v16, v46
	v_cvt_f32_i32_e32 v33, v47
	v_cvt_f32_i32_e32 v34, v48
	v_cvt_f32_i32_e32 v45, v59
	v_cvt_f32_i32_e32 v46, v60
	v_cvt_f32_i32_e32 v47, v61
	v_cvt_f32_i32_e32 v48, v62
	v_cvt_f32_i32_e32 v80, v9
	v_cvt_f32_i32_e32 v75, v14
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v76, v13
	v_cvt_f32_i32_e32 v68, v35
	v_cvt_f32_i32_e32 v35, v49
	v_cvt_f32_i32_e32 v49, v63
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v63, v8
	v_cvt_f32_i32_e32 v9, v39
	v_cvt_f32_i32_e32 v14, v44
	v_cvt_f32_i32_e32 v39, v53
	v_cvt_f32_i32_e32 v44, v58
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v53, v3
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.h, 0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v13, v43
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.h, v3.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	s_mul_i32 s22, s22, s23
	.loc	1 127 15 is_stmt 1              ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v58.h, v3.h
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v43, v57
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.h, v3.h
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v141.h, v3.h
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v142.h, v3.h
	v_mov_b16_e64 v140.h, v3.h
	v_mov_b16_e64 v139.h, v3.h
	s_mov_b32 s1, 0x76543210
	s_and_b32 s21, s21, 0xffff
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v84
	v_lshlrev_b32_e32 v5, 16, v83
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v66, 1, v66
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v69, 16, v85
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v86, v66, s[4:7], 0 offen
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v66, v36
	v_cvt_f32_i32_e32 v36, v50
	v_cvt_f32_i32_e32 v50, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v64.h, v3.h
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v86
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	ds_store_b32 v1, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[59:62], v4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v0, s23, v81
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v2, 16, v82
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	ds_load_b128 v[81:84], v4 offset:16
	ds_load_b128 v[85:88], v4 offset:1024
	ds_load_b128 v[89:92], v4 offset:1040
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v93, v61, v2
	v_dual_mul_f32 v100, v60, v6 :: v_dual_mul_f32 v97, v61, v5
	v_dual_mul_f32 v98, v62, v5 :: v_dual_mul_f32 v101, v61, v6
	v_dual_mul_f32 v61, v61, v69 :: v_dual_mul_f32 v4, v59, v2
	v_mul_f32_e32 v70, v60, v2
	v_dual_mul_f32 v94, v62, v2 :: v_dual_mul_f32 v95, v59, v5
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v103, v81, v2 :: v_dual_mul_f32 v96, v60, v5
	v_mul_f32_e32 v99, v59, v6
	v_dual_mul_f32 v102, v62, v6 :: v_dual_mul_f32 v59, v59, v69
	v_dual_mul_f32 v60, v60, v69 :: v_dual_mul_f32 v105, v83, v2
	v_dual_mul_f32 v62, v62, v69 :: v_dual_mul_f32 v111, v81, v6
	v_dual_mul_f32 v104, v82, v2 :: v_dual_mul_f32 v107, v81, v5
	v_dual_mul_f32 v106, v84, v2 :: v_dual_mul_f32 v109, v83, v5
	v_dual_mul_f32 v108, v82, v5 :: v_dual_mul_f32 v113, v83, v6
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v110, v84, v5 :: v_dual_mul_f32 v115, v85, v2
	v_dual_mul_f32 v112, v82, v6 :: v_dual_mul_f32 v81, v81, v69
	v_dual_mul_f32 v114, v84, v6 :: v_dual_mul_f32 v83, v83, v69
	v_dual_mul_f32 v82, v82, v69 :: v_dual_mul_f32 v117, v87, v2
	v_dual_mul_f32 v84, v84, v69 :: v_dual_mul_f32 v123, v85, v6
	v_dual_mul_f32 v116, v86, v2 :: v_dual_mul_f32 v119, v85, v5
	v_dual_mul_f32 v118, v88, v2 :: v_dual_mul_f32 v121, v87, v5
	v_dual_mul_f32 v120, v86, v5 :: v_dual_mul_f32 v125, v87, v6
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v122, v88, v5 :: v_dual_mul_f32 v127, v89, v2
	v_dual_mul_f32 v124, v86, v6 :: v_dual_mul_f32 v85, v85, v69
	v_dual_mul_f32 v126, v88, v6 :: v_dual_mul_f32 v87, v87, v69
	v_dual_mul_f32 v86, v86, v69 :: v_dual_mul_f32 v129, v91, v2
	v_dual_mul_f32 v88, v88, v69 :: v_dual_mul_f32 v135, v89, v6
	v_dual_mul_f32 v128, v90, v2 :: v_dual_mul_f32 v131, v89, v5
	v_dual_mul_f32 v130, v92, v2 :: v_dual_mul_f32 v133, v91, v5
	v_dual_mul_f32 v132, v90, v5 :: v_dual_mul_f32 v137, v91, v6
	v_dual_mul_f32 v136, v90, v6 :: v_dual_mul_f32 v89, v89, v69
	v_dual_mul_f32 v138, v92, v6 :: v_dual_mul_f32 v91, v91, v69
	v_dual_mul_f32 v90, v90, v69 :: v_dual_mul_f32 v75, v104, v75
	v_dual_mul_f32 v69, v92, v69 :: v_dual_mul_f32 v70, v70, v79
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v80, v4, v80 :: v_dual_mul_f32 v77, v94, v77
	v_dual_mul_f32 v78, v93, v78 :: v_dual_mul_f32 v73, v106, v73
	v_dual_mul_f32 v28, v126, v28 :: v_dual_mul_f32 v19, v61, v19
	v_dual_mul_f32 v18, v60, v18 :: v_dual_mul_f32 v51, v85, v51
	v_dual_mul_f32 v56, v90, v56 :: v_dual_max_f32 v61, 0, v70
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_dual_max_f32 v60, 0, v80 :: v_dual_max_f32 v73, 0, v73
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v76, v103, v76 :: v_dual_mul_f32 v71, v116, v71
	v_dual_mul_f32 v26, v124, v26 :: v_dual_mul_f32 v17, v59, v17
	v_dual_mul_f32 v20, v62, v20 :: v_dual_mul_f32 v53, v87, v53
	v_dual_mul_f32 v52, v86, v52 :: v_dual_mul_f32 v59, v69, v63
	v_dual_mul_f32 v54, v88, v54 :: v_dual_max_f32 v63, 0, v77
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v62, 0, v78 :: v_dual_max_f32 v69, 0, v76
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v60, v60, v60 :: v_dual_mul_f32 v61, v61, v61
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v74, v105, v74 :: v_dual_mul_f32 v65, v128, v65
	v_dual_mul_f32 v44, v100, v44 :: v_dual_mul_f32 v25, v123, v25
	v_dual_mul_f32 v48, v112, v48 :: v_dual_mul_f32 v29, v135, v29
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v70, 0, v75 :: v_dual_max_f32 v65, 0, v65
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v62, v62, v62 :: v_dual_mul_f32 v63, v63, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v61.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v72, v115, v72 :: v_dual_mul_f32 v9, v129, v9
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v74, 0, v74 :: v_dual_max_f32 v71, 0, v71
	v_dual_max_f32 v48, 0, v48 :: v_dual_max_f32 v25, 0, v25
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v69, v69, v69 :: v_dual_mul_f32 v70, v70, v70
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v75, 1, v3
	v_mov_b16_e32 v3.l, v63.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v134, v92, v5 :: v_dual_mul_f32 v67, v127, v67
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v66, v118, v66 :: v_dual_mul_f32 v13, v97, v13
	v_dual_mul_f32 v30, v136, v30 :: v_dual_mul_f32 v21, v81, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_dual_max_f32 v72, 0, v72 :: v_dual_max_f32 v67, 0, v67
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v74, v74, v74 :: v_dual_mul_f32 v73, v73, v73
	v_dual_mul_f32 v25, v25, v25 :: v_dual_and_b32 v76, 1, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v70.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v68, v117, v68 :: v_dual_mul_f32 v11, v95, v11
	v_dual_mul_f32 v22, v82, v22 :: v_dual_mul_f32 v55, v89, v55
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v66, 0, v66
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v17, 0, v17
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v72, v72, v72 :: v_dual_mul_f32 v71, v71, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v82, 1, v3
	v_mov_b16_e32 v3.l, v73.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v10, v130, v10 :: v_dual_mul_f32 v33, v109, v33
	v_dual_mul_f32 v40, v132, v40 :: v_dual_mul_f32 v47, v111, v47
	v_dual_mul_f32 v24, v84, v24 :: v_dual_mul_f32 v7, v91, v7
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v21, 0, v21 :: v_dual_mul_f32 v66, v66, v66
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v65, v65, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.l, v60.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v21, v21, v21 :: v_dual_and_b32 v86, 1, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v71.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add3_u32 v4, s22, s3, v1
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v12, v96, v12 :: v_dual_mul_f32 v35, v119, v35
	v_dual_mul_f32 v42, v134, v42 :: v_dual_mul_f32 v49, v113, v49
	v_dual_mul_f32 v46, v102, v46 :: v_dual_mul_f32 v27, v125, v27
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v68, 0, v68 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v44, 0, v44 :: v_dual_max_f32 v47, 0, v47
	v_dual_max_f32 v54, 0, v54 :: v_dual_max_f32 v7, 0, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v58.l, v69.h
	v_and_b32_e32 v8, 1, v8
	v_and_b32_e32 v91, 1, v3
	v_mov_b16_e32 v3.l, v66.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mad_u64_u32 v[1:2], null, s23, 48, v[0:1]
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v92.h, v3.h
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v15, v107, v15 :: v_dual_add_nc_u32 v2, 0x100, v4
	v_dual_mul_f32 v14, v98, v14 :: v_dual_mul_f32 v37, v121, v37
	v_dual_mul_f32 v50, v114, v50 :: v_dual_mul_f32 v31, v137, v31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v46, 0, v46 :: v_dual_max_f32 v49, 0, v49
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v9, v9, v9 :: v_dual_mul_f32 v10, v10, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.l, v62.h
	v_mov_b16_e32 v64.l, v74.h
	v_mov_b16_e32 v92.l, v72.h
	v_and_b32_e32 v58, 1, v58
	v_add3_u32 v8, v60, v8, 0x7fff
	v_add3_u32 v60, v61, v75, 0x7fff
	v_and_b32_e32 v61, 1, v3
	v_mov_b16_e32 v3.l, v65.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v16, v108, v16 :: v_dual_mul_f32 v39, v131, v39
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v33, 0, v33
	v_dual_max_f32 v50, 0, v50 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v29, 0, v29
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v11, v11, v11 :: v_dual_mul_f32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v26, v26, v26 :: v_dual_and_b32 v57, 1, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v64, 1, v64
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v30, v30, v30 :: v_dual_and_b32 v77, 1, v92
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v58, v69, v58, 0x7fff
	v_and_b32_e32 v69, 1, v3
	v_mov_b16_e32 v3.l, v10.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v34, v110, v34 :: v_dual_mul_f32 v41, v133, v41
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v56, 0, v56 :: v_dual_max_f32 v59, 0, v59
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v13, v13, v13 :: v_dual_mul_f32 v14, v14, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v62, v57, 0x7fff
	v_add3_u32 v62, v74, v64, 0x7fff
	v_add3_u32 v64, v72, v77, 0x7fff
	v_and_b32_e32 v72, 1, v3
	v_mov_b16_e32 v3.l, v12.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v36, v120, v36 :: v_dual_mul_f32 v43, v99, v43
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v37, 0, v37
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v15, v15, v15 :: v_dual_mul_f32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v74, 1, v3
	v_mov_b16_e32 v3.l, v14.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v38, v122, v38 :: v_dual_mul_f32 v45, v101, v45
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v39, 0, v39
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v33, v33, v33 :: v_dual_mul_f32 v34, v34, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v60.l, v8.h
	v_add3_u32 v8, v63, v76, 0x7fff
	v_and_b32_e32 v63, 1, v3
	v_mov_b16_e32 v3.l, v16.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v41, 0, v41
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v35, v35, v35 :: v_dual_mul_f32 v36, v36, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v141.l, v9.h
	v_mov_b16_e32 v8.l, v57.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v17, v17, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v70, v82, 0x7fff
	v_and_b32_e32 v70, 1, v3
	v_mov_b16_e32 v3.l, v34.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v32, v138, v32 :: v_dual_mul_f32 v23, v83, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v142.l, v11.h
	v_mov_b16_e32 v57.l, v58.h
	v_add3_u32 v58, v73, v86, 0x7fff
	v_mov_b16_e32 v79.h, v3.h
	v_mov_b16_e32 v79.l, v13.h
	v_mov_b16_e32 v58.l, v62.h
	v_add3_u32 v62, v71, v91, 0x7fff
	v_mov_b16_e32 v93.h, v3.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v40, 0, v40 :: v_dual_max_f32 v43, 0, v43
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v31, 0, v31
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v37, v37, v37 :: v_dual_mul_f32 v38, v38, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v93.l, v15.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v28, v28, v28 :: v_dual_and_b32 v81, 1, v141
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v62.l, v64.h
	v_and_b32_e32 v64, 1, v3
	v_mov_b16_e32 v3.l, v36.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v19, 0, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v83, 1, v142
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v18, v18, v18 :: v_dual_and_b32 v79, 1, v79
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v94.h, v3.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v42, 0, v42 :: v_dual_max_f32 v45, 0, v45
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v39, v39, v39 :: v_dual_mul_f32 v40, v40, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v94.l, v33.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v31, v31, v31 :: v_dual_and_b32 v84, 1, v93
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v9, v81, 0x7fff
	v_add3_u32 v61, v66, v61, 0x7fff
	v_and_b32_e32 v66, 1, v3
	v_mov_b16_e32 v3.l, v38.h
	v_add3_u32 v11, v11, v83, 0x7fff
	v_add3_u32 v13, v13, v79, 0x7fff
	v_add3_u32 v10, v10, v72, 0x7fff
	v_mov_b16_e32 v104.h, v3.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v23, 0, v23
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v41, v41, v41 :: v_dual_mul_f32 v42, v42, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v104.l, v37.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v20, v20, v20 :: v_dual_and_b32 v85, 1, v94
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v15, v84, 0x7fff
	v_mov_b16_e32 v10.l, v9.h
	v_add3_u32 v9, v12, v74, 0x7fff
	v_and_b32_e32 v12, 1, v3
	v_mov_b16_e32 v3.l, v40.h
	v_mov_b16_e32 v103.h, v3.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v43, v43, v43 :: v_dual_mul_f32 v44, v44, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v103.l, v35.h
	v_mov_b16_e32 v9.l, v11.h
	v_add3_u32 v11, v14, v63, 0x7fff
	v_mov_b16_e32 v11.l, v13.h
	v_add3_u32 v13, v16, v70, 0x7fff
	v_mov_b16_e32 v105.h, v3.h
	v_mov_b16_e32 v105.l, v39.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v19, v19, v19 :: v_dual_and_b32 v88, 1, v104
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v33, v85, 0x7fff
	v_mov_b16_e32 v13.l, v15.h
	v_and_b32_e32 v15, 1, v3
	v_mov_b16_e32 v3.l, v42.h
	v_mov_b16_e32 v115.h, v3.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v51, 0, v51
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v45, v45, v45 :: v_dual_mul_f32 v46, v46, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v115.l, v43.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v22, v22, v22 :: v_dual_and_b32 v87, 1, v103
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v14, v34, v64, 0x7fff
	v_mov_b16_e32 v106.h, v3.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v52, 0, v52 :: v_dual_max_f32 v55, 0, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v106.l, v41.h
	v_and_b32_e32 v89, 1, v105
	v_add3_u32 v37, v37, v88, 0x7fff
	v_mov_b16_e32 v14.l, v33.h
	v_and_b32_e32 v33, 1, v3
	v_mov_b16_e32 v3.l, v44.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v53, 0, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v92, 1, v115
	v_add3_u32 v35, v35, v87, 0x7fff
	v_add3_u32 v16, v36, v66, 0x7fff
	v_mov_b16_e32 v36.l, v45.h
	v_mov_b16_e32 v36.h, v3.h
	v_add3_u32 v12, v38, v12, 0x7fff
	v_and_b32_e32 v90, 1, v106
	v_add3_u32 v39, v39, v89, 0x7fff
	v_mov_b16_e32 v12.l, v37.h
	v_and_b32_e32 v34, 1, v3
	v_mov_b16_e32 v3.l, v46.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v37, v47, v47
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v35.h
	v_add3_u32 v35, v43, v92, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v23, v23, v23 :: v_dual_and_b32 v36, 1, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v40, v15, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v38, v48, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v41, v41, v90, 0x7fff
	v_mov_b16_e32 v15.l, v39.h
	v_and_b32_e32 v39, 1, v3
	v_mov_b16_e32 v40.l, v37.h
	v_mov_b16_e32 v40.h, v3.h
	v_add3_u32 v34, v44, v34, 0x7fff
	v_mov_b16_e32 v34.l, v35.h
	v_add3_u32 v35, v45, v36, 0x7fff
	v_add3_u32 v33, v42, v33, 0x7fff
	v_mov_b16_e32 v3.l, v38.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v68, v68, v68 :: v_dual_mul_f32 v67, v67, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v33.l, v41.h
	v_add3_u32 v36, v46, v39, 0x7fff
	v_and_b32_e32 v39, 1, v40
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v41, v49, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v35.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v35, v50, v50 :: v_dual_and_b32 v40, 1, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v140.l, v67.h
	v_add3_u32 v37, v37, v39, 0x7fff
	v_mov_b16_e32 v39.l, v41.h
	v_mov_b16_e32 v39.h, v3.h
	v_mov_b16_e32 v3.l, v35.h
	v_add3_u32 v38, v38, v40, 0x7fff
	v_mov_b16_e32 v40.l, v25.h
	v_mov_b16_e32 v40.h, v3.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v27, v27, v27 :: v_dual_and_b32 v80, 1, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.l, v37.h
	v_and_b32_e32 v37, 1, v39
	v_and_b32_e32 v39, 1, v3
	v_mov_b16_e32 v3.l, v26.h
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e64 v139.l, v68.h
	v_add3_u32 v37, v41, v37, 0x7fff
	v_mov_b16_e32 v41.l, v27.h
	v_mov_b16_e32 v41.h, v3.h
	v_add3_u32 v35, v35, v39, 0x7fff
	v_and_b32_e32 v39, 1, v3
	v_add3_u32 v25, v25, v40, 0x7fff
	v_mov_b16_e32 v3.l, v28.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v29, v29, v29 :: v_dual_and_b32 v78, 1, v139
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v35.l, v37.h
	v_and_b32_e32 v37, 1, v41
	v_add3_u32 v26, v26, v39, 0x7fff
	v_mov_b16_e32 v26.l, v25.h
	v_and_b32_e32 v25, 1, v3
	v_mov_b16_e32 v3.l, v30.h
	v_add3_u32 v27, v27, v37, 0x7fff
	v_mov_b16_e32 v37.l, v29.h
	v_mov_b16_e32 v37.h, v3.h
	v_add3_u32 v25, v28, v25, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v28, v32, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v32, 1, v3
	v_mov_b16_e32 v39.l, v31.h
	v_and_b32_e32 v37, 1, v37
	v_mov_b16_e32 v39.h, v3.h
	v_mov_b16_e32 v3.l, v28.h
	v_mov_b16_e32 v25.l, v27.h
	v_cndmask_b32_e64 v41, v33, v12, s0
	v_add3_u32 v27, v29, v37, 0x7fff
	v_add3_u32 v29, v30, v32, 0x7fff
	v_and_b32_e32 v30, 1, v39
	v_and_b32_e32 v32, 1, v3
	v_mov_b16_e32 v3.l, v18.h
	v_mov_b16_e32 v29.l, v27.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v37, v59, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v31, v30, 0x7fff
	v_mov_b16_e32 v30.l, v17.h
	v_mov_b16_e32 v30.h, v3.h
	v_add3_u32 v28, v28, v32, 0x7fff
	v_mov_b16_e32 v31.l, v19.h
	v_mov_b16_e32 v28.l, v27.h
	v_mov_b16_e32 v31.h, v3.h
	v_and_b32_e32 v27, 1, v30
	v_and_b32_e32 v30, 1, v3
	v_mov_b16_e32 v3.l, v20.h
	v_mov_b16_e32 v32.h, v3.h
	v_cndmask_b32_e64 v12, v12, v33, s0
	v_add3_u32 v17, v17, v27, 0x7fff
	v_and_b32_e32 v27, 1, v31
	v_add3_u32 v18, v18, v30, 0x7fff
	v_and_b32_e32 v30, 1, v3
	v_mov_b16_e32 v31.l, v21.h
	v_mov_b16_e32 v18.l, v17.h
	v_add3_u32 v19, v19, v27, 0x7fff
	v_mov_b16_e32 v3.l, v22.h
	v_add3_u32 v17, v20, v30, 0x7fff
	v_and_b32_e32 v20, 1, v31
	v_mov_b16_e32 v27.l, v23.h
	v_mov_b16_e32 v17.l, v19.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v19, v24, v24 :: v_dual_and_b32 v24, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v20, v21, v20, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v21, v51, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.h, v3.h
	v_mov_b16_e32 v3.l, v19.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v30, v52, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v22, v22, v24, 0x7fff
	v_mov_b16_e32 v31.l, v21.h
	v_and_b32_e32 v24, 1, v27
	v_and_b32_e32 v27, 1, v3
	v_mov_b16_e32 v3.l, v30.h
	v_mov_b16_e32 v22.l, v20.h
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v20, v23, v24, 0x7fff
	v_add3_u32 v19, v19, v27, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v24, v54, v54 :: v_dual_and_b32 v23, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v21, v21, v31, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v27, v53, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v19.l, v20.h
	v_add3_u32 v20, v30, v23, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v30, v55, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v20.l, v21.h
	v_mov_b16_e32 v3.l, v24.h
	v_mov_b16_e32 v21.l, v27.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v23, v56, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.h, v3.h
	v_mov_b16_e32 v32.l, v30.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v7, v7, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v3
	v_mov_b16_e32 v3.l, v23.h
	v_and_b32_e32 v21, 1, v21
	v_and_b32_e32 v32, 1, v32
	v_mov_b16_e32 v39.l, v7.h
	v_add3_u32 v24, v24, v31, 0x7fff
	v_and_b32_e32 v40, 1, v3
	v_mov_b16_e32 v3.l, v37.h
	v_add3_u32 v21, v27, v21, 0x7fff
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v27, v30, v32, 0x7fff
	v_cndmask_b32_e64 v42, v19, v17, s0
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v24.l, v21.h
	v_add3_u32 v21, v23, v40, 0x7fff
	v_add3_u32 v7, v7, v39, 0x7fff
	v_mov_b16_e32 v21.l, v27.h
	v_add3_u32 v3, v37, v3, 0x7fff
	v_cndmask_b32_e64 v17, v17, v19, s0
	v_cndmask_b32_e64 v27, v58, v8, s0
	v_mov_b16_e32 v3.l, v7.h
	v_cndmask_b32_e64 v7, v60, v57, s0
	v_cndmask_b32_e64 v43, v21, v20, s0
	v_cndmask_b32_e64 v19, v20, v21, s0
	v_mov_b32_e32 v20, 0x5410
	v_mov_b32_e32 v21, 0x7632
	v_cndmask_b32_e64 v8, v8, v58, s0
	v_cndmask_b32_e64 v39, v14, v11, s0
	v_cndmask_b32_e64 v11, v11, v14, s0
	v_cndmask_b32_e64 v33, v38, v34, s0
	v_cndmask_b32_e64 v14, v34, v38, s0
	v_cndmask_b32_e64 v38, v22, v18, s0
	v_cndmask_b32_e64 v18, v18, v22, s0
	v_permlanex16_b32 v22, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, 0x1054, v20, s0
	v_cndmask_b32_e64 v20, 0x3276, v21, s0
	v_permlanex16_b32 v21, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v68, v68, v78, 0x7fff
	v_add3_u32 v67, v67, v80, 0x7fff
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v20, 8, v20
	v_add3_u32 v65, v65, v69, 0x7fff
	v_mov_b16_e32 v61.l, v68.h
	v_mov_b16_e32 v65.l, v67.h
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_cndmask_b32_e64 v37, v13, v9, s0
	v_cndmask_b32_e64 v32, v10, v61, s0
	v_cndmask_b32_e64 v31, v62, v65, s0
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	v_cndmask_b32_e64 v10, v61, v10, s0
	v_cndmask_b32_e64 v9, v9, v13, s0
	v_cndmask_b32_e64 v23, v57, v60, s0
	v_cndmask_b32_e64 v13, v16, v15, s0
	v_and_b32_e32 v50, 0x5040504, v7
	v_and_b32_e32 v51, 0x7060706, v8
	v_cndmask_b32_e64 v30, v65, v62, s0
	v_cndmask_b32_e64 v40, v15, v16, s0
	v_cndmask_b32_e64 v34, v35, v36, s0
	v_cndmask_b32_e64 v15, v36, v35, s0
	v_cndmask_b32_e64 v35, v29, v26, s0
	v_cndmask_b32_e64 v16, v26, v29, s0
	v_cndmask_b32_e64 v44, v3, v24, s0
	v_cndmask_b32_e64 v3, v24, v3, s0
	v_permlanex16_b32 v24, v31, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v10, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_lshl_add_u32 v6, s23, 4, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v36, v28, v25, s0
	v_cndmask_b32_e64 v25, v25, v28, s0
	v_permlanex16_b32 v20, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v11, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_lshl_add_u32 v5, s23, 5, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_permlanex16_b32 v29, v13, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v22, v23, v50
	v_perm_b32 v8, v22, v23, v51
	v_perm_b32 v9, v21, v27, v50
	v_perm_b32 v10, v21, v27, v51
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v0, v4, v0, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_permlanex16_b32 v45, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v15, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v18, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v24, v30, v50
	v_perm_b32 v12, v24, v30, v51
	v_perm_b32 v13, v26, v32, v50
	v_perm_b32 v14, v26, v32, v51
	v_permlanex16_b32 v47, v16, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v25, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v52, v17, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v20, v37, v50
	v_perm_b32 v16, v20, v37, v51
	v_perm_b32 v17, v28, v39, v50
	v_perm_b32 v18, v28, v39, v51
	v_add_lshl_u32 v39, v4, v6, 1
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	v_permlanex16_b32 v53, v19, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v19, v29, v40, v50
	v_perm_b32 v20, v29, v40, v51
	v_perm_b32 v21, v31, v41, v50
	v_perm_b32 v22, v31, v41, v51
	s_clause 0x2
	buffer_store_b128 v[7:10], v0, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v0, s[20:23], 0 offen offset:512
	buffer_store_b128 v[15:18], v39, s[20:23], 0 offen
	v_add_lshl_u32 v0, v2, v6, 1
	v_perm_b32 v23, v45, v33, v50
	v_perm_b32 v24, v45, v33, v51
	v_perm_b32 v25, v46, v34, v50
	v_perm_b32 v26, v46, v34, v51
	v_perm_b32 v31, v49, v38, v50
	v_perm_b32 v32, v49, v38, v51
	v_perm_b32 v37, v3, v44, v50
	v_perm_b32 v38, v3, v44, v51
	v_add_lshl_u32 v3, v4, v5, 1
	v_perm_b32 v27, v47, v35, v50
	v_perm_b32 v28, v47, v35, v51
	v_perm_b32 v29, v48, v36, v50
	v_perm_b32 v30, v48, v36, v51
	v_add_lshl_u32 v5, v2, v5, 1
	v_perm_b32 v33, v52, v42, v50
	v_perm_b32 v34, v52, v42, v51
	v_add_lshl_u32 v4, v4, v1, 1
	v_perm_b32 v35, v53, v43, v50
	v_perm_b32 v36, v53, v43, v51
	v_add_lshl_u32 v1, v2, v1, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v3, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v5, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v4, s[20:23], 0 offen
	buffer_store_b128 v[35:38], v1, s[20:23], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp14:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 143
		.amdhsa_next_free_sgpr 34
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
		.amdhsa_inst_pref_size 50
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 143
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6300
; TotalNumSgprs: 36
; NumVgprs: 143
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 36
; NumVGPRsForWavesPerEU: 143
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     143
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
