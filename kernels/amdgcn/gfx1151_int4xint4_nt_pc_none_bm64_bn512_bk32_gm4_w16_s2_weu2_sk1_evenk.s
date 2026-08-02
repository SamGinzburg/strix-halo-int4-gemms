	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b64 s[12:13], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
	s_load_b64 s[36:37], s[0:1], 0x20
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v82, 3, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_bfe_i32 v73, v0, 6, 1
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_or_b32_e32 v74, 0x200, v0
	v_or_b32_e32 v75, 0x600, v0
	v_or_b32_e32 v76, 0xa00, v0
	v_or_b32_e32 v77, 0xe00, v0
	v_or_b32_e32 v78, 0x1200, v0
	v_or_b32_e32 v79, 0x1600, v0
	v_or_b32_e32 v80, 0x1a00, v0
	v_or_b32_e32 v81, 0x1e00, v0
	v_bfe_i32 v69, v0, 3, 1
	v_lshrrev_b32_e32 v70, 1, v0
	v_mov_b32_e32 v8, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshlrev_b32_e32 v68, 1, v0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v72, 0, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v89, 0x88, v73
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s13, 0x1ff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s12, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 23
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 9
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s14, s4, 2
	v_mov_b32_e32 v7, v8
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s14
	v_mov_b32_e32 v6, v8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v5, v8
	v_dual_mov_b32 v4, v8 :: v_dual_add_nc_u32 v73, 0, v74
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	s_cvt_u32_f32 s5, s5
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v27, v8
	s_mul_hi_u32 s8, s5, s8
	v_mov_b32_e32 v26, v8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s14
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_mov_b32_e32 v25, v8
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v40, v8
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v39, v8
	s_cselect_b32 s4, s9, s5
	v_mov_b32_e32 v38, v8
	s_xor_b32 s4, s4, s8
	v_mov_b32_e32 v37, v8
	s_sub_i32 s12, s4, s8
	v_mov_b32_e32 v36, v8
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s15, s12, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s12, s12, s14
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s15
	v_mov_b32_e32 v35, v8
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s20, s4, 4
	v_mov_b32_e32 v34, v8
	.loc	1 121 13 is_stmt 1              ; generate_amdgcn.py:121:13
	s_abs_i32 s18, s20
	v_mov_b32_e32 v33, v8
	s_cvt_f32_u32 s4, s18
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v54, v8
	v_rcp_iflag_f32_e32 v1, s4
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_readfirstlane_b32 s4, v1
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	s_mul_f32 s4, s4, 0x4f7ffffe
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	s_cvt_u32_f32 s17, s4
	s_load_b256 s[4:11], s[0:1], 0x0
	s_sub_i32 s0, 0, s18
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s1, s2, s12
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_i32 s0, s0, s17
	s_abs_i32 s2, s1
	s_mul_hi_u32 s0, s17, s0
	s_xor_b32 s12, s1, s20
	s_add_i32 s17, s17, s0
	v_mov_b32_e32 v45, v8
	s_mul_hi_u32 s0, s2, s17
	s_ashr_i32 s17, s12, 31
	s_mul_i32 s14, s0, s18
	s_add_i32 s12, s0, 1
	s_sub_i32 s2, s2, s14
	v_mov_b32_e32 v44, v8
	s_sub_i32 s14, s2, s18
	s_cmp_ge_u32 s2, s18
	v_mov_b32_e32 v43, v8
	s_cselect_b32 s0, s12, s0
	s_cselect_b32 s2, s14, s2
	s_add_i32 s12, s0, 1
	s_cmp_ge_u32 s2, s18
	v_mov_b32_e32 v42, v8
	s_cselect_b32 s0, s12, s0
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s2, s16, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s19, s0, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s0, s16, s2
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s2, s19, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s18, s0, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s0, s2, s20
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s14, s2, 9
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s0, s1, s0
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s12, s3, 4
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s0, s0, s15
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	v_or_b32_e32 v67, s14, v0
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s15, s0, 6
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s16, 1
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s2, s15, s18
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_and_b32_e32 v71, 7, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[0:1], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s3, s7
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v65, 1, v71
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_and_b32 s1, s1, 0xffff
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_and_b32 s5, s5, 0xffff
	v_mov_b32_e32 v41, v8
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lt_i32 s16, 34
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mad_u64_u32 v[1:2], null, s18, v82, v[65:66]
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_mad_u64_u32 v[2:3], null, v67, s18, s[12:13]
	v_dual_mov_b32 v3, v8 :: v_dual_and_b32 v88, 0x37e, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v66, 15, v0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v74, 0, v75
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v1, s12, s2, v1
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s2, s6
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v88, v89, v88
	v_dual_mov_b32 v12, v8 :: v_dual_lshlrev_b32 v71, 4, v71
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	buffer_load_b128 v[83:86], v2, s[0:3], 0 offen
	v_dual_mov_b32 v2, v8 :: v_dual_add_nc_u32 v75, 0, v76
	v_mov_b32_e32 v10, v8
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_u16 v87, v1, s[4:7], 0 offen
	v_dual_mov_b32 v1, v8 :: v_dual_add_nc_u32 v76, 0, v77
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v77, 0, v78
	v_add_nc_u32_e32 v78, 0, v79
	v_add_nc_u32_e32 v79, 0, v80
	v_add_nc_u32_e32 v80, 0, v81
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v81, 0, v88
	s_waitcnt vmcnt(0)
	ds_store_b16 v81, v87 offset:8192
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_store_b8 v72, v83
	ds_store_b8_d16_hi v72, v83 offset:1024
	ds_store_b8 v72, v84 offset:2048
	ds_store_b8_d16_hi v72, v84 offset:3072
	ds_store_b8 v72, v85 offset:4096
	ds_store_b8_d16_hi v72, v85 offset:5120
	ds_store_b8 v72, v86 offset:6144
	v_lshrrev_b32_e32 v88, 8, v83
	v_lshrrev_b32_e32 v89, 24, v83
	v_lshrrev_b32_e32 v90, 8, v84
	v_lshrrev_b32_e32 v91, 24, v84
	v_lshrrev_b32_e32 v92, 8, v85
	v_lshrrev_b32_e32 v93, 24, v85
	v_lshrrev_b32_e32 v83, 8, v86
	v_lshrrev_b32_e32 v84, 24, v86
	ds_store_b8 v73, v88
	ds_store_b8 v74, v89
	ds_store_b8 v75, v90
	ds_store_b8 v76, v91
	ds_store_b8 v77, v92
	ds_store_b8 v78, v93
	ds_store_b8 v79, v83
	ds_store_b8_d16_hi v72, v86 offset:7168
	ds_store_b8 v80, v84
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_lshl_or_b32 v1, s19, 9, v0
	s_lshl_b32 s3, s17, 9
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v2, s15, v82
	v_and_or_b32 v4, 0x88, v69, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v1, s3, v1
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s2, s18, 15
	v_dual_mov_b32 v42, v41 :: v_dual_add_nc_u32 v3, 0, v66
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s2, s2, 4
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp13:
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	v_mul_lo_u32 v6, s18, v1
	v_mad_u64_u32 v[1:2], null, s18, v2, s[12:13]
	v_xor_b32_e32 v2, 8, v4
	v_sub_nc_u32_e64 v5, s2, 2 clamp
	v_dual_mov_b32 v44, v41 :: v_dual_and_b32 v7, 0xf0, v70
	v_dual_mov_b32 v43, v41 :: v_dual_add_nc_u32 v4, 0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v45, v41 :: v_dual_add_nc_u32 v2, 0, v2
	v_readfirstlane_b32 s2, v5
	v_add3_u32 v82, v6, s12, 16
	v_add3_u32 v65, v1, v65, 16
	v_dual_mov_b32 v46, v41 :: v_dual_add_nc_u32 v83, v3, v7
	v_dual_mov_b32 v47, v41 :: v_dual_add_nc_u32 v84, 0x2000, v4
	v_dual_mov_b32 v48, v41 :: v_dual_add_nc_u32 v85, 0x2000, v2
	v_mov_b32_e32 v57, v41
	v_mov_b32_e32 v58, v41
	v_mov_b32_e32 v59, v41
	v_mov_b32_e32 v60, v41
	v_mov_b32_e32 v61, v41
	v_mov_b32_e32 v62, v41
	v_mov_b32_e32 v63, v41
	v_mov_b32_e32 v64, v41
	v_mov_b32_e32 v49, v41
	v_mov_b32_e32 v50, v41
	v_mov_b32_e32 v51, v41
	v_mov_b32_e32 v52, v41
	v_mov_b32_e32 v53, v41
	v_mov_b32_e32 v54, v41
	v_mov_b32_e32 v55, v41
	v_mov_b32_e32 v56, v41
	v_mov_b32_e32 v33, v41
	v_mov_b32_e32 v34, v41
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v39, v41
	v_mov_b32_e32 v40, v41
	v_mov_b32_e32 v25, v41
	v_mov_b32_e32 v26, v41
	v_mov_b32_e32 v27, v41
	v_mov_b32_e32 v28, v41
	v_mov_b32_e32 v29, v41
	v_mov_b32_e32 v30, v41
	v_mov_b32_e32 v31, v41
	v_mov_b32_e32 v32, v41
	v_mov_b32_e32 v17, v41
	v_mov_b32_e32 v18, v41
	v_mov_b32_e32 v19, v41
	v_mov_b32_e32 v20, v41
	v_mov_b32_e32 v21, v41
	v_mov_b32_e32 v22, v41
	v_mov_b32_e32 v23, v41
	v_mov_b32_e32 v24, v41
	v_mov_b32_e32 v9, v41
	v_mov_b32_e32 v10, v41
	v_mov_b32_e32 v11, v41
	v_mov_b32_e32 v12, v41
	v_mov_b32_e32 v13, v41
	v_mov_b32_e32 v14, v41
	v_mov_b32_e32 v15, v41
	v_mov_b32_e32 v16, v41
	v_mov_b32_e32 v1, v41
	v_mov_b32_e32 v2, v41
	v_mov_b32_e32 v3, v41
	v_mov_b32_e32 v4, v41
	v_mov_b32_e32 v5, v41
	v_mov_b32_e32 v6, v41
	v_mov_b32_e32 v7, v41
	v_mov_b32_e32 v8, v41
	s_add_i32 s12, s2, 1
	s_mov_b32 s2, s6
	s_mov_b32 s3, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_u16 v114, v65, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	buffer_load_b128 v[86:89], v82, s[0:3], 0 offen
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v106, v83 offset:2560
	ds_load_u8 v107, v83 offset:2048
	ds_load_u8 v108, v83 offset:3584
	ds_load_u8 v109, v83 offset:3072
	ds_load_u8 v110, v83 offset:3840
	ds_load_u8 v111, v83 offset:3328
	ds_load_u8 v112, v83 offset:2816
	ds_load_u8 v113, v83 offset:2304
	ds_load_u8 v115, v83 offset:512
	ds_load_u8 v116, v83
	ds_load_u8 v117, v83 offset:1792
	ds_load_u8 v118, v83 offset:1280
	ds_load_u8 v119, v83 offset:768
	ds_load_u8 v120, v83 offset:1536
	ds_load_u8 v121, v83 offset:1024
	ds_load_u8 v122, v83 offset:256
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[90:93], v84 offset1:32
	ds_load_2addr_b64 v[94:97], v84 offset0:64 offset1:96
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v123, v83 offset:6656
	ds_load_u8 v124, v83 offset:6144
	ds_load_u8 v125, v83 offset:7680
	ds_load_u8 v126, v83 offset:7168
	ds_load_u8 v127, v83 offset:7936
	ds_load_u8 v128, v83 offset:7424
	ds_load_u8 v129, v83 offset:6912
	ds_load_u8 v130, v83 offset:6400
	ds_load_u8 v131, v83 offset:4608
	ds_load_u8 v132, v83 offset:4096
	ds_load_u8 v133, v83 offset:5888
	ds_load_u8 v134, v83 offset:5376
	ds_load_u8 v135, v83 offset:4864
	ds_load_u8 v136, v83 offset:5632
	ds_load_u8 v137, v83 offset:5120
	ds_load_u8 v138, v83 offset:4352
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[98:101], v85 offset1:32
	ds_load_2addr_b64 v[102:105], v85 offset0:64 offset1:96
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v107, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v108, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v109, v121, v120, 0xc0c0004
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v111, v122, v119, 0xc0c0004
	v_perm_b32 v113, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v115, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v116, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v119, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v117, v132, v131, 0xc0c0004
	v_perm_b32 v120, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v122, v134, v133, 0xc0c0004
	v_lshl_or_b32 v107, v107, 16, v106
	v_lshl_or_b32 v106, v109, 16, v108
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v118, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v121, v138, v135, 0xc0c0004
	v_lshl_or_b32 v109, v110, 16, v112
	v_lshl_or_b32 v108, v113, 16, v111
	v_lshl_or_b32 v111, v116, 16, v115
	v_lshl_or_b32 v110, v118, 16, v117
	v_lshl_or_b32 v113, v120, 16, v119
	v_lshl_or_b32 v112, v122, 16, v121
	v_wmma_i32_16x16x16_iu4 v[41:48], v[106:107], v[90:91], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[108:109], v[90:91], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[106:107], v[92:93], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[108:109], v[92:93], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[106:107], v[94:95], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[106:107], v[96:97], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[108:109], v[94:95], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[108:109], v[96:97], v[1:8] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v82, 16, v82
	v_add_nc_u32_e32 v65, 16, v65
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[110:111], v[98:99], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[112:113], v[98:99], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[110:111], v[100:101], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[112:113], v[100:101], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[110:111], v[102:103], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[102:103], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[104:105], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[104:105], v[1:8] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_add_i32 s12, s12, -1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lg_u32 s12, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v81, v114 offset:8192
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	ds_store_b8 v72, v86
	ds_store_b8_d16_hi v72, v86 offset:1024
	ds_store_b8 v72, v87 offset:2048
	ds_store_b8_d16_hi v72, v87 offset:3072
	ds_store_b8 v72, v88 offset:4096
	ds_store_b8_d16_hi v72, v88 offset:5120
	ds_store_b8 v72, v89 offset:6144
	v_lshrrev_b32_e32 v90, 8, v86
	v_lshrrev_b32_e32 v91, 24, v86
	v_lshrrev_b32_e32 v92, 8, v87
	v_lshrrev_b32_e32 v93, 24, v87
	v_lshrrev_b32_e32 v94, 8, v88
	v_lshrrev_b32_e32 v95, 24, v88
	v_lshrrev_b32_e32 v86, 8, v89
	v_lshrrev_b32_e32 v87, 24, v89
	ds_store_b8 v73, v90
	ds_store_b8 v74, v91
	ds_store_b8 v75, v92
	ds_store_b8 v76, v93
	ds_store_b8 v77, v94
	ds_store_b8 v78, v95
	ds_store_b8 v79, v86
	ds_store_b8_d16_hi v72, v89 offset:7168
	ds_store_b8 v80, v87
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_and_b32_e32 v65, 0xf0, v70
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_or_b32 v69, 0x88, v69, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add3_u32 v65, 0, v65, v66
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v70, v69, 8, 0
	v_add_nc_u32_e32 v69, 0, v69
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v73, v65 offset:2560
	ds_load_u8 v74, v65 offset:2048
	ds_load_u8 v75, v65 offset:3584
	ds_load_u8 v76, v65 offset:3072
	ds_load_u8 v77, v65 offset:512
	ds_load_u8 v78, v65
	ds_load_u8 v79, v65 offset:1536
	ds_load_u8 v80, v65 offset:1024
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v81, 0x2000, v70
	v_add_nc_u32_e32 v82, 0x2000, v69
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v87, v65 offset:6656
	ds_load_u8 v88, v65 offset:6144
	ds_load_u8 v89, v65 offset:3840
	ds_load_u8 v90, v65 offset:3328
	ds_load_u8 v91, v65 offset:2816
	ds_load_u8 v92, v65 offset:2304
	ds_load_u8 v93, v65 offset:1792
	ds_load_u8 v94, v65 offset:1280
	ds_load_u8 v95, v65 offset:768
	ds_load_u8 v96, v65 offset:256
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[69:72], v82 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v97, v65 offset:4608
	ds_load_u8 v98, v65 offset:4096
	ds_load_u8 v99, v65 offset:5632
	ds_load_u8 v100, v65 offset:5120
	ds_load_u8 v101, v65 offset:7680
	ds_load_u8 v102, v65 offset:7168
	ds_load_u8 v103, v65 offset:7936
	ds_load_u8 v104, v65 offset:7424
	ds_load_u8 v105, v65 offset:6912
	ds_load_u8 v106, v65 offset:6400
	ds_load_u8 v107, v65 offset:5888
	ds_load_u8 v108, v65 offset:5376
	ds_load_u8 v109, v65 offset:4864
	ds_load_u8 v65, v65 offset:4352
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v110, v88, v87, 0xc0c0004
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_perm_b32 v74, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v88, v90, v89, 0xc0c0004
	v_perm_b32 v75, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v87, v92, v91, 0xc0c0004
	v_perm_b32 v76, v80, v79, 0xc0c0004
	v_lshl_or_b32 v86, v74, 16, v73
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v89, v96, v95, 0xc0c0004
	v_perm_b32 v90, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v91, v102, v101, 0xc0c0004
	v_lshl_or_b32 v85, v76, 16, v75
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[73:76], v81 offset0:64 offset1:96
	ds_load_2addr_b64 v[77:80], v81 offset1:32
	ds_load_2addr_b64 v[81:84], v82 offset0:64 offset1:96
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v92, v98, v97, 0xc0c0004
	v_perm_b32 v93, v100, v99, 0xc0c0004
	v_lshl_or_b32 v88, v88, 16, v87
	v_lshl_or_b32 v87, v90, 16, v89
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v94, v106, v105, 0xc0c0004
	v_perm_b32 v95, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v65, v65, v109, 0xc0c0004
	v_perm_b32 v96, v108, v107, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[85:86], v[69:70], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v90, v91, 16, v110
	v_lshl_or_b32 v89, v93, 16, v92
	v_wmma_i32_16x16x16_iu4 v[57:64], v[87:88], v[69:70], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v70, v95, 16, v94
	v_lshl_or_b32 v69, v96, 16, v65
	v_wmma_i32_16x16x16_iu4 v[49:56], v[85:86], v[71:72], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[87:88], v[71:72], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[89:90], v[77:78], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[87:88], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[87:88], v[83:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[69:70], v[77:78], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[89:90], v[79:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[79:80], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[75:76], v[1:8] neg_lo:[1,1,0]
.LBB0_5:                                ; %._crit_edge._crit_edge
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or_b32_e32 v65, s15, v66
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v67, 1, v67
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_and_b32 s41, s9, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 169 22 is_stmt 0              ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v65, 1, v65
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_mov_b32 s40, s8
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_and_b32_e32 v72, 0x1f0, v0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v73, v17
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshlrev_b32_e32 v17, 5, v0
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_or_b32_e32 v69, 32, v65
	v_or_b32_e32 v70, 64, v65
	v_or_b32_e32 v71, 0x60, v65
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v74, v18
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_clause 0x3
	buffer_load_u16 v65, v65, s[40:43], 0 offen
	buffer_load_u16 v69, v69, s[40:43], 0 offen
	buffer_load_u16 v70, v70, s[40:43], 0 offen
	buffer_load_u16 v71, v71, s[40:43], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s41, s11, 0xffff
	s_mov_b32 s40, s10
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_and_b32_e32 v18, 28, v68
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	buffer_load_u16 v67, v67, s[40:43], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v80, v9
	v_cvt_f32_i32_e32 v81, v10
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_and_b32_e32 v9, 32, v17
	v_lshl_add_u32 v10, v72, 2, 0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v77, v21
	v_cvt_f32_i32_e32 v88, v1
	v_cvt_f32_i32_e32 v89, v2
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshl_add_u32 v21, v72, 1, 0
	v_add3_u32 v1, v10, v9, v18
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v82, v11
	v_cvt_f32_i32_e32 v83, v12
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v75, v19
	v_cvt_f32_i32_e32 v76, v20
	v_cvt_f32_i32_e32 v68, v22
	v_cvt_f32_i32_e32 v78, v23
	v_cvt_f32_i32_e32 v79, v24
	v_cvt_f32_i32_e32 v84, v13
	v_cvt_f32_i32_e32 v85, v14
	v_cvt_f32_i32_e32 v86, v15
	v_cvt_f32_i32_e32 v87, v16
	v_cvt_f32_i32_e32 v90, v3
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v3, s13, v66
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v91, v6
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v6, 1, v72
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	s_mul_i32 s15, s15, s13
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v66, v5
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_lshl_add_u32 v5, s13, 4, v3
	.loc	1 245 9 is_stmt 0               ; generate_amdgcn.py:245:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s38, s42
	s_mov_b32 s39, s43
	v_and_b32_e32 v0, 16, v0
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v67
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v67, v4
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_lshl_add_u32 v4, s13, 5, v3
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	ds_store_b32 v1, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v21
	ds_load_b128 v[13:16], v21 offset:16
	ds_load_b128 v[17:20], v21 offset:1024
	ds_load_b128 v[21:24], v21 offset:1040
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mad_u64_u32 v[1:2], null, s13, 48, v[3:4]
	v_add3_u32 v2, s15, s14, v6
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v6, 16, v65
	v_lshlrev_b32_e32 v65, 16, v69
	v_lshlrev_b32_e32 v69, 16, v70
	v_lshlrev_b32_e32 v70, 16, v71
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v71, v9, v6
	v_mul_f32_e32 v98, v9, v65
	v_mul_f32_e32 v106, v9, v69
	v_dual_mul_f32 v9, v9, v70 :: v_dual_mul_f32 v108, v11, v69
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v117, v20, v6
	v_mul_f32_e32 v72, v10, v6
	v_mul_f32_e32 v92, v11, v6
	v_mul_f32_e32 v96, v15, v6
	v_mul_f32_e32 v97, v16, v6
	v_mul_f32_e32 v99, v10, v65
	v_dual_mul_f32 v107, v10, v69 :: v_dual_mul_f32 v116, v19, v6
	v_dual_mul_f32 v109, v12, v69 :: v_dual_mul_f32 v10, v10, v70
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v130, v21, v65 :: v_dual_mul_f32 v43, v92, v43
	v_dual_mul_f32 v132, v23, v65 :: v_dual_mul_f32 v47, v96, v47
	v_dual_mul_f32 v93, v12, v6 :: v_dual_mul_f32 v100, v11, v65
	v_dual_mul_f32 v105, v16, v65 :: v_dual_mul_f32 v114, v17, v6
	v_dual_mul_f32 v113, v16, v69 :: v_dual_mul_f32 v126, v21, v6
	v_dual_mul_f32 v120, v19, v65 :: v_dual_mul_f32 v129, v24, v6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v27, v108, v27 :: v_dual_mul_f32 v32, v113, v32
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v103, v14, v65 :: v_dual_mul_f32 v16, v16, v70
	v_dual_mul_f32 v104, v15, v65 :: v_dual_mul_f32 v115, v18, v6
	v_mul_f32_e32 v110, v13, v69
	v_mul_f32_e32 v111, v14, v69
	v_mul_f32_e32 v112, v15, v69
	v_mul_f32_e32 v15, v15, v70
	v_dual_mul_f32 v119, v18, v65 :: v_dual_mul_f32 v128, v23, v6
	v_mul_f32_e32 v121, v20, v65
	v_mul_f32_e32 v122, v17, v69
	v_mul_f32_e32 v123, v18, v69
	v_dual_mul_f32 v125, v20, v69 :: v_dual_mul_f32 v18, v18, v70
	v_dual_mul_f32 v20, v20, v70 :: v_dual_mul_f32 v135, v23, v69
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v48, v97, v48 :: v_dual_mul_f32 v23, v23, v70
	v_dual_mul_f32 v41, v71, v41 :: v_dual_mul_f32 v60, v117, v60
	v_dual_mul_f32 v37, v130, v37 :: v_dual_mul_f32 v26, v107, v26
	v_dual_mul_f32 v39, v132, v39 :: v_dual_mul_f32 v28, v109, v28
	v_dual_mul_f32 v25, v106, v25 :: v_dual_mul_f32 v30, v111, v30
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v94, v13, v6 :: v_dual_mul_f32 v101, v12, v65
	v_dual_mul_f32 v102, v13, v65 :: v_dual_mul_f32 v11, v11, v70
	v_mul_f32_e32 v13, v13, v70
	v_dual_mul_f32 v118, v17, v65 :: v_dual_mul_f32 v127, v22, v6
	v_dual_mul_f32 v131, v22, v65 :: v_dual_mul_f32 v42, v72, v42
	v_dual_mul_f32 v65, v24, v65 :: v_dual_mul_f32 v44, v93, v44
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v51, v100, v51 :: v_dual_mul_f32 v56, v105, v56
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v35, v120, v35 :: v_dual_mul_f32 v40, v65, v40
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_bfe_u32 v105, v27, 16, 1
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v95, v14, v6
	v_mul_f32_e32 v12, v12, v70
	v_mul_f32_e32 v124, v19, v69
	v_mul_f32_e32 v19, v19, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v133, v21, v69 :: v_dual_mul_f32 v46, v95, v46
	v_dual_mul_f32 v134, v22, v69 :: v_dual_mul_f32 v59, v116, v59
	v_dual_mul_f32 v69, v24, v69 :: v_dual_mul_f32 v58, v115, v58
	v_mul_f32_e32 v21, v21, v70
	v_mul_f32_e32 v22, v22, v70
	v_dual_mul_f32 v24, v24, v70 :: v_dual_mul_f32 v61, v126, v61
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v50, v99, v50 :: v_dual_mul_f32 v49, v98, v49
	v_dual_mul_f32 v54, v103, v54 :: v_dual_mul_f32 v55, v104, v55
	v_dual_mul_f32 v36, v121, v36 :: v_dual_mul_f32 v29, v110, v29
	v_mul_f32_e32 v7, v23, v7
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_bfe_u32 v23, v41, 16, 1
	v_bfe_u32 v99, v37, 16, 1
	v_bfe_u32 v103, v25, 16, 1
	v_bfe_u32 v104, v26, 16, 1
	v_bfe_u32 v106, v28, 16, 1
	v_bfe_u32 v97, v35, 16, 1
	v_cmp_o_f32_e64 s34, v27, v27
	v_add3_u32 v27, v27, v105, 0x7fff
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v14, v14, v70
	v_mul_f32_e32 v17, v17, v70
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v31, v112, v31 :: v_dual_add_nc_u32 v6, 0x100, v2
	v_mul_f32_e32 v72, v125, v76
	v_mul_f32_e32 v70, v123, v74
	v_dual_mul_f32 v19, v19, v90 :: v_dual_mul_f32 v8, v24, v8
	v_mul_f32_e32 v21, v21, v66
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_bfe_u32 v24, v42, 16, 1
	v_bfe_u32 v66, v43, 16, 1
	v_cmp_o_f32_e64 s27, v37, v37
	v_cmp_o_f32_e64 s31, v25, v25
	v_cmp_o_f32_e64 s33, v26, v26
	v_cmp_o_f32_e64 s35, v28, v28
	v_bfe_u32 v107, v29, 16, 1
	v_add3_u32 v23, v41, v23, 0x7fff
	v_add3_u32 v37, v37, v99, 0x7fff
	v_add3_u32 v25, v25, v103, 0x7fff
	v_add3_u32 v26, v26, v104, 0x7fff
	v_add3_u32 v28, v28, v106, 0x7fff
	v_cmp_o_f32_e64 s25, v35, v35
	v_add3_u32 v35, v35, v97, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s34
	v_bfe_u32 v27, v30, 16, 1
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v65, v122, v73 :: v_dual_mul_f32 v74, v135, v78
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v42, v42
	v_cmp_o_f32_e64 s1, v43, v43
	v_add3_u32 v24, v42, v24, 0x7fff
	v_add3_u32 v41, v43, v66, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s27
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s31
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s33
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s35
	v_bfe_u32 v28, v31, 16, 1
	v_add3_u32 v37, v29, v107, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_bfe_u32 v29, v32, 16, 1
	v_add3_u32 v27, v30, v27, 0x7fff
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v33, v118, v33 :: v_dual_mul_f32 v38, v131, v38
	v_dual_mul_f32 v71, v124, v75 :: v_dual_mul_f32 v68, v134, v68
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s0
	v_cndmask_b16 v24.l, 0x7fff, v41.h, s1
	v_cmp_o_f32_e64 s0, v30, v30
	v_add3_u32 v28, v31, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v31, v31
	v_cndmask_b16 v27.l, 0x7fff, v37.h, vcc_lo
	v_bfe_u32 v30, v65, 16, 1
	v_bfe_u32 v31, v70, 16, 1
	v_add3_u32 v29, v32, v29, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v53, v102, v53 :: v_dual_mul_f32 v34, v119, v34
	v_dual_mul_f32 v73, v133, v77 :: v_dual_mul_f32 v12, v12, v83
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_bfe_u32 v100, v38, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s0
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s1
	v_add3_u32 v30, v65, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v65, v65
	v_add3_u32 v31, v70, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v70, v70
	v_cndmask_b16 v28.h, 0x7fff, v29.h, vcc_lo
	v_bfe_u32 v29, v71, 16, 1
	v_bfe_u32 v32, v72, 16, 1
	v_bfe_u32 v96, v34, 16, 1
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v69, v69, v79 :: v_dual_mul_f32 v10, v10, v81
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s28, v38, v38
	v_add3_u32 v38, v38, v100, 0x7fff
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s0
	v_cndmask_b16 v30.h, 0x7fff, v31.h, s1
	v_bfe_u32 v31, v73, 16, 1
	v_add3_u32 v29, v71, v29, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_add3_u32 v32, v72, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v72, v72
	v_cmp_o_f32_e64 s24, v34, v34
	v_add3_u32 v34, v34, v96, 0x7fff
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v63, v128, v63 :: v_dual_mul_f32 v52, v101, v52
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_bfe_u32 v101, v39, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s25
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s28
	v_add3_u32 v31, v73, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v73, v73
	v_cndmask_b16 v29.l, 0x7fff, v29.h, vcc_lo
	v_bfe_u32 v37, v68, 16, 1
	v_cndmask_b16 v29.h, 0x7fff, v32.h, s0
	v_bfe_u32 v32, v74, 16, 1
	v_bfe_u32 v38, v69, 16, 1
	v_bfe_u32 v98, v36, 16, 1
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v9, v9, v80 :: v_dual_mul_f32 v14, v14, v85
	v_dual_mul_f32 v11, v11, v82 :: v_dual_mul_f32 v16, v16, v87
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s29, v39, v39
	v_add3_u32 v39, v39, v101, 0x7fff
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s1
	v_add3_u32 v37, v68, v37, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_add3_u32 v32, v74, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v74, v74
	v_add3_u32 v38, v69, v38, 0x7fff
	v_cmp_o_f32_e64 s1, v69, v69
	v_cmp_o_f32_e64 s26, v36, v36
	v_add3_u32 v36, v36, v98, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s29
	v_cndmask_b16 v31.h, 0x7fff, v37.h, vcc_lo
	v_bfe_u32 v37, v9, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s0
	v_bfe_u32 v39, v10, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v38.h, s1
	v_bfe_u32 v38, v11, 16, 1
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v13, v13, v84 :: v_dual_mul_f32 v18, v18, v89
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v37, v9, v37, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v9, v10, v39, 0x7fff
	v_cmp_o_f32_e64 s0, v10, v10
	v_add3_u32 v10, v11, v38, 0x7fff
	v_cmp_o_f32_e64 s1, v11, v11
	v_bfe_u32 v11, v12, 16, 1
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v45, v94, v45 :: v_dual_mul_f32 v62, v127, v62
	v_dual_mul_f32 v15, v15, v86 :: v_dual_mul_f32 v20, v20, v67
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v9.l, 0x7fff, v37.h, vcc_lo
	v_bfe_u32 v37, v13, 16, 1
	v_bfe_u32 v38, v14, 16, 1
	v_add3_u32 v11, v12, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_bfe_u32 v75, v45, 16, 1
	v_bfe_u32 v95, v33, 16, 1
	v_bfe_u32 v102, v40, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s0
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_add3_u32 v12, v13, v37, 0x7fff
	v_cmp_o_f32_e64 s0, v13, v13
	v_add3_u32 v13, v14, v38, 0x7fff
	v_cmp_o_f32_e64 s1, v14, v14
	v_cndmask_b16 v10.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v14, v16, 16, 1
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v17, v17, v88 :: v_dual_mul_f32 v22, v22, v91
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v45, v45
	v_cmp_o_f32_e64 s23, v33, v33
	v_cmp_o_f32_e64 s30, v40, v40
	v_add3_u32 v43, v45, v75, 0x7fff
	v_add3_u32 v33, v33, v95, 0x7fff
	v_add3_u32 v40, v40, v102, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s0
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_add3_u32 v14, v16, v14, 0x7fff
	v_cmp_o_f32_e64 s0, v16, v16
	v_cndmask_b16 v41.l, 0x7fff, v43.h, s3
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s23
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s24
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s26
	v_cndmask_b16 v36.h, 0x7fff, v40.h, s30
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s1
	v_bfe_u32 v13, v17, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v15, v18, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s0
	v_cmp_eq_u32_e64 s3, 0, v0
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v57, v114, v57 :: v_dual_mul_f32 v64, v129, v64
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v13, v17, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v17, v17
	v_bfe_u32 v14, v19, 16, 1
	v_bfe_u32 v16, v20, 16, 1
	v_add3_u32 v15, v18, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_cndmask_b32_e64 v38, v35, v33, s3
	v_cndmask_b32_e64 v33, v33, v35, s3
	v_cndmask_b32_e64 v35, v36, v34, s3
	v_cndmask_b32_e64 v34, v34, v36, s3
	v_cndmask_b32_e64 v36, v27, v25, s3
	v_cndmask_b32_e64 v25, v25, v27, s3
	v_cndmask_b32_e64 v27, v28, v26, s3
	v_cndmask_b32_e64 v26, v26, v28, s3
	v_cndmask_b32_e64 v28, v31, v30, s3
	v_cndmask_b32_e64 v30, v30, v31, s3
	v_cndmask_b32_e64 v31, v32, v29, s3
	v_cndmask_b32_e64 v29, v29, v32, s3
	v_cndmask_b32_e64 v32, v12, v9, s3
	v_cndmask_b32_e64 v9, v9, v12, s3
	v_cndmask_b32_e64 v39, v11, v10, s3
	v_cndmask_b32_e64 v10, v10, v11, s3
	v_mov_b32_e32 v11, 0x5410
	v_mov_b32_e32 v12, 0x7632
	v_bfe_u32 v67, v44, 16, 1
	v_bfe_u32 v76, v46, 16, 1
	v_bfe_u32 v77, v47, 16, 1
	v_bfe_u32 v78, v48, 16, 1
	v_bfe_u32 v79, v57, 16, 1
	v_bfe_u32 v80, v58, 16, 1
	v_bfe_u32 v81, v59, 16, 1
	v_bfe_u32 v82, v60, 16, 1
	v_bfe_u32 v83, v61, 16, 1
	v_bfe_u32 v84, v62, 16, 1
	v_bfe_u32 v85, v63, 16, 1
	v_bfe_u32 v86, v64, 16, 1
	v_bfe_u32 v87, v49, 16, 1
	v_bfe_u32 v88, v50, 16, 1
	v_bfe_u32 v89, v51, 16, 1
	v_bfe_u32 v90, v52, 16, 1
	v_bfe_u32 v91, v53, 16, 1
	v_bfe_u32 v92, v54, 16, 1
	v_bfe_u32 v93, v55, 16, 1
	v_bfe_u32 v94, v56, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s1
	v_add3_u32 v14, v19, v14, 0x7fff
	v_cmp_o_f32_e64 s0, v19, v19
	v_add3_u32 v16, v20, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v20, v20
	v_bfe_u32 v17, v21, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v15.h, vcc_lo
	v_bfe_u32 v15, v22, 16, 1
	v_cndmask_b32_e64 v11, 0x1054, v11, s3
	v_cndmask_b32_e64 v12, 0x3276, v12, s3
	v_cmp_o_f32_e64 s2, v44, v44
	v_cmp_o_f32_e64 s4, v46, v46
	v_cmp_o_f32_e64 s5, v47, v47
	v_cmp_o_f32_e64 s6, v48, v48
	v_cmp_o_f32_e64 s7, v57, v57
	v_cmp_o_f32_e64 s8, v58, v58
	v_cmp_o_f32_e64 s9, v59, v59
	v_cmp_o_f32_e64 s10, v60, v60
	v_cmp_o_f32_e64 s11, v61, v61
	v_cmp_o_f32_e64 s12, v62, v62
	v_cmp_o_f32_e64 s13, v63, v63
	v_cmp_o_f32_e64 s14, v64, v64
	v_cmp_o_f32_e64 s15, v49, v49
	v_cmp_o_f32_e64 s16, v50, v50
	v_cmp_o_f32_e64 s17, v51, v51
	v_cmp_o_f32_e64 s18, v52, v52
	v_cmp_o_f32_e64 s19, v53, v53
	v_cmp_o_f32_e64 s20, v54, v54
	v_cmp_o_f32_e64 s21, v55, v55
	v_cmp_o_f32_e64 s22, v56, v56
	v_add3_u32 v42, v44, v67, 0x7fff
	v_add3_u32 v44, v46, v76, 0x7fff
	v_add3_u32 v45, v47, v77, 0x7fff
	v_add3_u32 v46, v48, v78, 0x7fff
	v_add3_u32 v47, v57, v79, 0x7fff
	v_add3_u32 v48, v58, v80, 0x7fff
	v_add3_u32 v57, v59, v81, 0x7fff
	v_add3_u32 v58, v60, v82, 0x7fff
	v_add3_u32 v59, v61, v83, 0x7fff
	v_add3_u32 v60, v62, v84, 0x7fff
	v_add3_u32 v61, v63, v85, 0x7fff
	v_add3_u32 v62, v64, v86, 0x7fff
	v_add3_u32 v49, v49, v87, 0x7fff
	v_add3_u32 v50, v50, v88, 0x7fff
	v_add3_u32 v51, v51, v89, 0x7fff
	v_add3_u32 v52, v52, v90, 0x7fff
	v_add3_u32 v53, v53, v91, 0x7fff
	v_add3_u32 v54, v54, v92, 0x7fff
	v_add3_u32 v55, v55, v93, 0x7fff
	v_add3_u32 v56, v56, v94, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s0
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s1
	v_add3_u32 v16, v21, v17, 0x7fff
	v_bfe_u32 v17, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v15, v22, v15, 0x7fff
	v_bfe_u32 v18, v8, 16, 1
	v_cmp_o_f32_e64 s0, v22, v22
	v_lshl_or_b32 v11, v11, 8, v11
	v_lshl_or_b32 v12, v12, 8, v12
	v_cndmask_b16 v24.h, 0x7fff, v42.h, s2
	v_cndmask_b16 v41.h, 0x7fff, v44.h, s4
	v_cndmask_b16 v42.l, 0x7fff, v45.h, s5
	v_cndmask_b16 v42.h, 0x7fff, v46.h, s6
	v_cndmask_b16 v43.l, 0x7fff, v47.h, s7
	v_cndmask_b16 v43.h, 0x7fff, v48.h, s8
	v_cndmask_b16 v44.l, 0x7fff, v57.h, s9
	v_cndmask_b16 v44.h, 0x7fff, v58.h, s10
	v_cndmask_b16 v45.l, 0x7fff, v59.h, s11
	v_cndmask_b16 v45.h, 0x7fff, v60.h, s12
	v_cndmask_b16 v46.l, 0x7fff, v61.h, s13
	v_cndmask_b16 v46.h, 0x7fff, v62.h, s14
	v_cndmask_b16 v47.l, 0x7fff, v49.h, s15
	v_cndmask_b16 v47.h, 0x7fff, v50.h, s16
	v_cndmask_b16 v48.l, 0x7fff, v51.h, s17
	v_cndmask_b16 v48.h, 0x7fff, v52.h, s18
	v_cndmask_b16 v49.l, 0x7fff, v53.h, s19
	v_cndmask_b16 v49.h, 0x7fff, v54.h, s20
	v_cndmask_b16 v50.l, 0x7fff, v55.h, s21
	v_cndmask_b16 v50.h, 0x7fff, v56.h, s22
	v_add3_u32 v17, v7, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v7, v7
	v_add3_u32 v7, v8, v18, 0x7fff
	v_cmp_o_f32_e64 s2, v8, v8
	v_cndmask_b16 v0.l, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v15.h, s0
	v_and_b32_e32 v11, 0x540054, v11
	v_and_b32_e32 v12, 0x760076, v12
	v_cndmask_b16 v7.l, 0x7fff, v17.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s2
	v_cndmask_b32_e64 v8, v41, v23, s3
	v_cndmask_b32_e64 v15, v23, v41, s3
	v_cndmask_b32_e64 v17, v24, v42, s3
	v_cndmask_b32_e64 v19, v43, v45, s3
	v_cndmask_b32_e64 v21, v44, v46, s3
	v_cndmask_b32_e64 v23, v47, v49, s3
	v_cndmask_b32_e64 v37, v48, v50, s3
	v_cndmask_b32_e64 v40, v0, v13, s3
	v_cndmask_b32_e64 v0, v13, v0, s3
	v_lshl_or_b32 v11, v11, 4, v11
	v_lshl_or_b32 v12, v12, 4, v12
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e64 v16, v42, v24, s3
	v_cndmask_b32_e64 v18, v45, v43, s3
	v_cndmask_b32_e64 v20, v46, v44, s3
	v_cndmask_b32_e64 v22, v49, v47, s3
	v_cndmask_b32_e64 v24, v50, v48, s3
	v_cndmask_b32_e64 v41, v7, v14, s3
	v_cndmask_b32_e64 v7, v14, v7, s3
	v_permlanex16_b32 v13, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v37, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v34, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v42, 0x5040504, v11
	v_and_b32_e32 v43, 0x7060706, v12
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v13, v8, v42
	v_perm_b32 v8, v13, v8, v43
	v_perm_b32 v9, v14, v16, v42
	v_perm_b32 v10, v14, v16, v43
	v_perm_b32 v11, v15, v18, v42
	v_perm_b32 v12, v15, v18, v43
	v_perm_b32 v13, v17, v20, v42
	v_perm_b32 v14, v17, v20, v43
	v_perm_b32 v15, v19, v22, v42
	v_perm_b32 v16, v19, v22, v43
	v_perm_b32 v17, v21, v24, v42
	v_perm_b32 v18, v21, v24, v43
	v_perm_b32 v19, v23, v38, v42
	v_perm_b32 v20, v23, v38, v43
	v_perm_b32 v21, v33, v35, v42
	v_perm_b32 v22, v33, v35, v43
	v_perm_b32 v23, v25, v36, v42
	v_perm_b32 v24, v25, v36, v43
	v_perm_b32 v35, v0, v40, v42
	v_perm_b32 v36, v0, v40, v43
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v0, v2, v3, 1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_permlanex16_b32 v26, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v3, v2, v5, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v0, s[36:39], 0 offen
	buffer_store_b128 v[11:14], v0, s[36:39], 0 offen offset:512
	buffer_store_b128 v[15:18], v3, s[36:39], 0 offen
	v_add_lshl_u32 v0, v6, v5, 1
	v_perm_b32 v25, v26, v27, v42
	v_perm_b32 v26, v26, v27, v43
	v_add_lshl_u32 v3, v2, v4, 1
	v_perm_b32 v27, v30, v28, v42
	v_perm_b32 v28, v30, v28, v43
	v_perm_b32 v29, v34, v31, v42
	v_perm_b32 v30, v34, v31, v43
	v_add_lshl_u32 v4, v6, v4, 1
	v_perm_b32 v31, v37, v32, v42
	v_perm_b32 v32, v37, v32, v43
	v_perm_b32 v33, v44, v39, v42
	v_perm_b32 v34, v44, v39, v43
	v_add_lshl_u32 v2, v2, v1, 1
	v_perm_b32 v37, v45, v41, v42
	v_perm_b32 v38, v45, v41, v43
	v_add_lshl_u32 v1, v6, v1, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[36:39], 0 offen
	buffer_store_b128 v[23:26], v3, s[36:39], 0 offen
	buffer_store_b128 v[27:30], v4, s[36:39], 0 offen
	buffer_store_b128 v[31:34], v2, s[36:39], 0 offen
	buffer_store_b128 v[35:38], v1, s[36:39], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp14:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 139
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
		.amdhsa_inst_pref_size 62
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 139
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7820
; TotalNumSgprs: 46
; NumVgprs: 139
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 139
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
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     139
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
