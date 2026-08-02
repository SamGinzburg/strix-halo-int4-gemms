	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v65, 2, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_and_b32_e32 v69, 3, v0
	v_and_b32_e32 v71, 1, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v66, 1, v0
	s_load_b64 s[20:21], s[0:1], 0x20
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_bfe_i32 v11, v0, 5, 1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v68, 2, v69
	v_lshlrev_b32_e32 v67, 3, v71
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_bfe_i32 v12, v0, 4, 1
	v_bfe_i32 v72, v0, 3, 1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshlrev_b32_e32 v10, 2, v0
	v_and_b32_e32 v14, 0x88, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_and_b32_e32 v16, 0x88, v12
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v13, 0x37c, v10
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s12, s4, 2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v73, v14, v13
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v73, 0, v73
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s15, s14, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s14, s14, s12
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s15
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s14
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s17, s16
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s27, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_mul_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s6, s18
	s_xor_b32 s18, s2, s16
	s_add_i32 s12, s6, s12
	s_ashr_i32 s29, s18, 31
	s_mul_hi_u32 s12, s14, s12
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s12, s17
	s_add_i32 s18, s12, 1
	s_sub_i32 s14, s14, s19
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s26, s6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s19, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s12, s18, s12
	s_cselect_b32 s14, s19, s14
	s_add_i32 s18, s12, 1
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s12, s18, s12
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s14, s13, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s33, s12, s29
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s30, s3, 4
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s3, s13, s14
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s12, s33, s29
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s31, s3, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s14, s12, s16
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mul_lo_u32 v5, s31, v65
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s14
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v3, s30, v68
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s15
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s3, s12, 8
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s22, s2, 6
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_mad_u64_u32 v[1:2], null, s31, v66, v[67:68]
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s12, s22, s31
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v4, s30, v67
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v80, v5, v68, s12
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s13, 1
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_mul_i32 s12, s3, s31
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_gt_i32_e64 s2, s31, v4
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s28, -1, 0
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_add_i32 s12, s12, s30
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v2, s30, v80
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_lshl_b32 s14, s31, 7
	v_add_nc_u32_e32 v78, s12, v1
	v_add3_u32 v77, s12, s14, v1
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s28, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s28, s2
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_and_b32 s25, s25, 0xffff
	v_dual_cndmask_b32 v2, 0x80000000, v78 :: v_dual_cndmask_b32 v3, 0x80000000, v77
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b32 v83, v1, s[4:7], 0 offen
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_clause 0x1
	buffer_load_b64 v[75:76], v2, s[24:27], 0 offen
	buffer_load_b64 v[81:82], v3, s[24:27], 0 offen
	v_mov_b32_e32 v1, 0
	v_lshlrev_b32_e32 v79, 3, v0
	v_lshlrev_b32_e32 v70, 4, v0
	s_mov_b32 s12, 0
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_lt_i32 s13, 0x102
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v17, v1
	v_dual_mov_b32 v18, v1 :: v_dual_and_b32 v15, 0x778, v79
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_xor_b32_e32 v16, v16, v15
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v74, 0, v16
	v_mov_b32_e32 v16, v1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(2)
	ds_store_b32 v73, v83 offset:4096
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v74, v[75:76], v[81:82] offset1:4
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	v_sub_nc_u32_e32 v75, s31, v67
	v_sub_nc_u32_e32 v76, s31, v68
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	s_add_i32 s0, s30, 0x80
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v75
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v1, s0, v80
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v9, s12 :: v_dual_add_nc_u32 v2, 0x80, v78
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e64 s0, s0, v76
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v12, s15 :: v_dual_add_nc_u32 v3, 0x80, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_mov_b32_e32 v10, s13
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_mov_b32_e32 v11, s14
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b32 v105, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_clause 0x1
	buffer_load_b64 v[101:102], v2, s[24:27], 0 offen
	buffer_load_b64 v[103:104], v3, s[24:27], 0 offen
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v14, s17 :: v_dual_and_b32 v1, 0x70, v70
	v_and_b32_e32 v2, 0x88, v72
	v_dual_mov_b32 v13, s16 :: v_dual_and_b32 v4, 0x700, v79
	v_dual_mov_b32 v16, s19 :: v_dual_mov_b32 v15, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v3, v2, v1
	v_or3_b32 v1, v1, v4, v2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s0, s31, 0x7f
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s0, s0, 7
.Ltmp13:
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v5, 0, v3
	v_xor_b32_e32 v3, 8, v3
	v_add_nc_u32_e32 v78, 0, v1
	v_xor_b32_e32 v1, 8, v1
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_max_u32 s0, s0, 2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v77, 0x1000, v5
	v_add_nc_u32_e32 v2, 0, v3
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[81:84], v78 offset1:4
	v_add_nc_u32_e32 v80, 0, v1
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_eq_u32 s0, 2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[39:42], v77 offset1:32
	v_add_nc_u32_e32 v79, 0x1000, v2
	ds_load_2addr_b64 v[85:88], v77 offset0:64 offset1:96
	ds_load_2addr_b64 v[89:92], v79 offset1:32
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[93:96], v80 offset1:4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[97:100], v79 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v73, v105 offset:4096
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v74, v[101:102], v[103:104] offset1:4
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[39:40], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[39:40], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[83:84], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[81:82], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[83:84], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[89:90], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[95:96], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[93:94], v[91:92], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[95:96], v[91:92], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[93:94], v[97:98], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[95:96], v[97:98], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[93:94], v[99:100], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[95:96], v[99:100], v[9:16] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	v_lshl_or_b32 v66, s33, 8, v66
	s_lshl_b32 s1, s29, 8
	v_add_nc_u32_e32 v82, s22, v65
	s_add_i32 s2, s30, 0x100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_subrev_nc_u32_e32 v66, s1, v66
	s_add_i32 s1, s0, -2
	v_or_b32_e32 v81, 0x80, v66
	v_mad_u64_u32 v[65:66], null, s31, v66, v[67:68]
	s_delay_alu instid0(VALU_DEP_2)
	v_mad_u64_u32 v[66:67], null, s31, v81, v[67:68]
	v_mad_u64_u32 v[67:68], null, s31, v82, v[68:69]
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v68, s2, v67
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v81, s2, v65
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v75
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e64 s0, s2, v76
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v82, s2, v66
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_add_i32 s1, s1, -1
	s_addk_i32 s2, 0x80
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lg_u32 s1, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b32 v68, v68, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_clause 0x1
	buffer_load_b64 v[105:106], v81, s[24:27], 0 offen
	buffer_load_b64 v[107:108], v82, s[24:27], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[81:84], v77 offset1:32
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[85:88], v78 offset1:4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[89:92], v77 offset0:64 offset1:96
	ds_load_2addr_b64 v[93:96], v79 offset1:32
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[97:100], v80 offset1:4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[101:104], v79 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v73, v68 offset:4096
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v74, v[105:106], v[107:108] offset1:4
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[81:82], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[87:88], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[83:84], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[87:88], v[83:84], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[85:86], v[89:90], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[87:88], v[89:90], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[85:86], v[91:92], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[87:88], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[99:100], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[97:98], v[95:96], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[99:100], v[95:96], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[97:98], v[101:102], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[99:100], v[101:102], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[97:98], v[103:104], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[99:100], v[103:104], v[9:16] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	v_and_b32_e32 v73, 32, v0
	v_and_b32_e32 v67, 16, v0
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	v_and_b32_e32 v65, 7, v0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_and_b32_e32 v68, 0xe0, v0
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, s28
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshlrev_b32_e32 v66, 4, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v66, 0x88, v72, v66
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_lshl_or_b32 v72, v68, 3, v66
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v74, 0, v66
	v_xad_u32 v66, v66, 8, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v75, 0, v72
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v82, 0x1000, v74
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_xad_u32 v72, v72, 8, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v66, 0x1000, v66
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[74:77], v75 offset1:4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[78:81], v82 offset1:32
	ds_load_2addr_b64 v[82:85], v82 offset0:64 offset1:96
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[86:89], v72 offset1:4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[90:93], v66 offset1:32
	ds_load_2addr_b64 v[94:97], v66 offset0:64 offset1:96
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[74:75], v[82:83], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[78:79], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[78:79], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[74:75], v[80:81], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[76:77], v[80:81], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[76:77], v[82:83], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[74:75], v[84:85], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[84:85], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[86:87], v[90:91], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[88:89], v[90:91], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[86:87], v[92:93], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[88:89], v[92:93], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[86:87], v[94:95], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[88:89], v[94:95], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[86:87], v[96:97], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[88:89], v[96:97], v[9:16] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_and_or_b32 v72, v0, 15, s22
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	v_or_b32_e32 v66, s3, v0
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_and_b32 s1, s9, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	.loc	1 169 22 is_stmt 0              ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v72, 1, v72
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_mov_b32 s0, s8
	.loc	1 171 9 is_stmt 1               ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v68, 5, v68
	v_lshl_or_b32 v73, v73, 1, v67
	v_lshlrev_b32_e32 v69, 4, v69
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_or_b32_e32 v74, 32, v72
	v_or_b32_e32 v75, 64, v72
	v_or_b32_e32 v76, 0x60, v72
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v67, 2, v67
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_clause 0x3
	buffer_load_u16 v83, v72, s[0:3], 0 offen
	buffer_load_u16 v84, v74, s[0:3], 0 offen
	buffer_load_u16 v85, v75, s[0:3], 0 offen
	buffer_load_u16 v86, v76, s[0:3], 0 offen
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_and_b32_e32 v74, 0xf0, v0
	v_lshlrev_b32_e32 v75, 1, v0
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v0, 6, v0
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_and_b32 s1, s11, 0xffff
	s_mov_b32 s0, s10
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshl_add_u32 v76, v74, 2, 0
	v_lshl_add_u32 v79, v74, 1, 0
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_and_or_b32 v0, 0x300, v0, v68
	.loc	1 168 15 is_stmt 1              ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_or3_b32 v0, v0, v69, v67
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_add_nc_u32_e32 v116, 0, v0
	v_xad_u32 v117, 0x2010, v0, 0
	v_xad_u32 v118, 0x4020, v0, 0
	v_xad_u32 v119, 0x6030, v0, 0
	v_xad_u32 v120, 0x8040, v0, 0
	v_xad_u32 v121, 0xa050, v0, 0
	v_xad_u32 v122, 0xc060, v0, 0
	v_xad_u32 v123, 0xe070, v0, 0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s13, s23, 15
	s_mul_i32 s70, s23, 17
	s_mul_i32 s4, s23, 5
	s_mul_i32 s5, s23, 6
	s_mul_i32 s6, s23, 7
	s_mul_i32 s7, s23, 9
	s_mul_i32 s8, s23, 10
	s_mul_i32 s9, s23, 11
	s_mul_i32 s10, s23, 12
	s_mul_i32 s11, s23, 13
	s_mul_i32 s12, s23, 14
	s_mul_i32 s71, s23, 18
	s_mul_i32 s72, s23, 19
	s_mul_i32 s73, s23, 20
	s_mul_i32 s74, s23, 21
	s_mul_i32 s75, s23, 22
	s_mul_i32 s76, s23, 23
	s_mul_i32 s77, s23, 24
	s_mul_i32 s78, s23, 25
	s_mul_i32 s79, s23, 26
	s_mul_i32 s80, s23, 27
	s_mul_i32 s36, s23, 29
	s_mul_i32 s37, s23, 30
	s_mul_i32 s38, s23, 31
	s_lshl_b32 s39, s23, 5
	s_mul_i32 s40, s23, 33
	s_mul_i32 s41, s23, 34
	s_mul_i32 s42, s23, 35
	s_mul_i32 s43, s23, 36
	s_mul_i32 s44, s23, 37
	s_mul_i32 s45, s23, 38
	s_mul_i32 s46, s23, 39
	s_mul_i32 s47, s23, 40
	s_mul_i32 s48, s23, 41
	s_mul_i32 s49, s23, 42
	s_mul_i32 s50, s23, 43
	s_mul_i32 s51, s23, 44
	s_mul_i32 s52, s23, 45
	s_mul_i32 s53, s23, 46
	s_mul_i32 s54, s23, 47
	s_mul_i32 s55, s23, 48
	s_mul_i32 s56, s23, 49
	s_mul_i32 s57, s23, 50
	s_mul_i32 s58, s23, 51
	s_mul_i32 s59, s23, 52
	s_mul_i32 s60, s23, 53
	s_mul_i32 s61, s23, 54
	s_mul_i32 s62, s23, 55
	s_mul_i32 s63, s23, 56
	s_mul_i32 s64, s23, 57
	s_mul_i32 s65, s23, 58
	s_mul_i32 s66, s23, 59
	s_mul_i32 s67, s23, 60
	s_mul_i32 s68, s23, 61
	s_mul_i32 s69, s23, 62
	s_mul_i32 s31, s23, 63
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 169 14 is_stmt 1              ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v83
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v77, 1, v66
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshlrev_b32_e32 v71, 5, v71
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_and_b32_e32 v70, 0xcf0, v70
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_and_b32_e32 v75, 28, v75
	.loc	1 169 14 is_stmt 1              ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v83, 16, v84
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	buffer_load_u16 v72, v77, s[0:3], 0 offen
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt lgkmcnt(0)
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_xor_b32_e32 v70, v73, v70
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_add3_u32 v68, v76, v71, v75
	s_barrier
	.loc	1 247 23 is_stmt 1              ; generate_amdgcn.py:247:23
	s_mul_i32 s0, s22, s23
	s_mul_i32 s1, s23, 3
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_lshl_or_b32 v65, v65, 13, v70
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_add_i32 s35, s0, s23
	s_lshl1_add_u32 s34, s23, s0
	s_mul_i32 s22, s23, 28
	s_add_i32 s33, s0, s1
	s_lshl2_add_u32 s30, s23, s0
	s_lshl3_add_u32 s26, s23, s0
	s_add_i32 s15, s0, s13
	s_lshl4_add_u32 s14, s23, s0
	s_add_i32 s13, s0, s70
	s_add_i32 s70, s0, s22
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_mov_b32 s22, s2
	s_mov_b32 s23, s3
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_add_i32 s29, s0, s4
	s_add_i32 s28, s0, s5
	s_add_i32 s27, s0, s6
	s_add_i32 s25, s0, s7
	s_add_i32 s24, s0, s8
	s_add_i32 s19, s0, s9
	s_add_i32 s18, s0, s10
	s_add_i32 s17, s0, s11
	s_add_i32 s16, s0, s12
	s_add_i32 s12, s0, s71
	s_add_i32 s11, s0, s72
	s_add_i32 s10, s0, s73
	s_add_i32 s9, s0, s74
	s_add_i32 s8, s0, s75
	s_add_i32 s7, s0, s76
	s_add_i32 s6, s0, s77
	s_add_i32 s4, s0, s78
	s_add_i32 s1, s0, s79
	s_add_i32 s5, s0, s80
	s_add_i32 s36, s0, s36
	s_add_i32 s37, s0, s37
	s_add_i32 s38, s0, s38
	s_add_i32 s39, s0, s39
	s_add_i32 s40, s0, s40
	s_add_i32 s41, s0, s41
	s_add_i32 s42, s0, s42
	s_add_i32 s43, s0, s43
	s_add_i32 s44, s0, s44
	s_add_i32 s45, s0, s45
	s_add_i32 s46, s0, s46
	s_add_i32 s47, s0, s47
	s_add_i32 s48, s0, s48
	s_add_i32 s49, s0, s49
	s_add_i32 s50, s0, s50
	s_add_i32 s51, s0, s51
	s_add_i32 s52, s0, s52
	s_add_i32 s53, s0, s53
	s_add_i32 s54, s0, s54
	s_add_i32 s55, s0, s55
	s_add_i32 s56, s0, s56
	s_add_i32 s57, s0, s57
	s_add_i32 s58, s0, s58
	s_add_i32 s59, s0, s59
	s_add_i32 s60, s0, s60
	s_add_i32 s61, s0, s61
	s_add_i32 s62, s0, s62
	s_add_i32 s63, s0, s63
	s_add_i32 s64, s0, s64
	s_add_i32 s65, s0, s65
	s_add_i32 s66, s0, s66
	s_add_i32 s67, s0, s67
	s_add_i32 s68, s0, s68
	s_add_i32 s69, s0, s69
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v71, 16, v72
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	ds_store_b32 v68, v71
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v79
	ds_load_b128 v[71:74], v79 offset:16
	ds_load_b128 v[75:78], v79 offset:512
	ds_load_b128 v[79:82], v79 offset:528
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v84, 16, v85
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v131, v67, v84
	.loc	1 169 14 is_stmt 1              ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v85, 16, v86
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v86, v67, v0
	v_mul_f32_e32 v87, v68, v0
	v_mul_f32_e32 v88, v69, v0
	v_mul_f32_e32 v98, v79, v0
	v_dual_mul_f32 v102, v82, v0 :: v_dual_mul_f32 v147, v67, v85
	v_mul_f32_e32 v148, v68, v85
	v_dual_mul_f32 v104, v67, v83 :: v_dual_mul_f32 v89, v70, v0
	v_dual_mul_f32 v91, v72, v0 :: v_dual_mul_f32 v108, v70, v83
	v_dual_mul_f32 v93, v74, v0 :: v_dual_mul_f32 v110, v72, v83
	v_dual_mul_f32 v95, v76, v0 :: v_dual_mul_f32 v112, v73, v83
	v_mul_f32_e32 v106, v69, v83
	v_dual_mul_f32 v126, v78, v83 :: v_dual_mul_f32 v133, v69, v84
	v_dual_mul_f32 v128, v80, v83 :: v_dual_mul_f32 v135, v71, v84
	v_dual_mul_f32 v132, v68, v84 :: v_dual_mul_f32 v149, v69, v85
	v_dual_mul_f32 v140, v76, v84 :: v_dual_mul_f32 v157, v77, v85
	v_mul_f32_e32 v90, v71, v0
	v_mul_f32_e32 v96, v77, v0
	v_dual_mul_f32 v97, v78, v0 :: v_dual_mul_f32 v114, v75, v83
	v_dual_mul_f32 v100, v80, v0 :: v_dual_mul_f32 v129, v81, v83
	v_dual_mul_f32 v109, v71, v83 :: v_dual_mul_f32 v134, v70, v84
	v_mul_f32_e32 v151, v71, v85
	v_dual_mul_f32 v141, v77, v84 :: v_dual_mul_f32 v152, v72, v85
	v_mul_f32_e32 v92, v73, v0
	v_dual_mul_f32 v101, v81, v0 :: v_dual_mul_f32 v124, v76, v83
	v_dual_mul_f32 v130, v82, v83 :: v_dual_mul_f32 v137, v73, v84
	v_dual_mul_f32 v136, v72, v84 :: v_dual_mul_f32 v153, v73, v85
	v_dual_mul_f32 v143, v79, v84 :: v_dual_mul_f32 v154, v74, v85
	v_dual_mul_f32 v94, v75, v0 :: v_dual_add_nc_u32 v115, 0, v65
	v_dual_mul_f32 v127, v79, v83 :: v_dual_mul_f32 v138, v74, v84
	v_mul_f32_e32 v155, v75, v85
	v_dual_mul_f32 v139, v75, v84 :: v_dual_mul_f32 v150, v70, v85
	v_dual_mul_f32 v142, v78, v84 :: v_dual_mul_f32 v159, v79, v85
	v_dual_mul_f32 v145, v81, v84 :: v_dual_mul_f32 v156, v76, v85
	v_mul_f32_e32 v105, v68, v83
	v_mul_f32_e32 v113, v74, v83
	v_dual_mul_f32 v125, v77, v83 :: v_dual_mul_f32 v144, v80, v84
	v_dual_mul_f32 v161, v81, v85 :: v_dual_mul_f32 v146, v82, v84
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v67, v87, v2 :: v_dual_mul_f32 v158, v78, v85
	v_mul_f32_e32 v71, v88, v3
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v160, v80, v85 :: v_dual_mul_f32 v79, v91, v6
	v_dual_mul_f32 v162, v82, v85 :: v_dual_mul_f32 v83, v92, v7
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v0, v86, v1 :: v_dual_mul_f32 v87, v93, v8
	v_mul_f32_e32 v1, v104, v25
	v_dual_mul_f32 v2, v131, v41 :: v_dual_mul_f32 v85, v137, v47
	v_mul_f32_e32 v3, v147, v57
	v_dual_mul_f32 v91, v95, v18 :: v_dual_mul_f32 v72, v106, v27
	v_dual_mul_f32 v104, v128, v38 :: v_dual_mul_f32 v73, v133, v43
	v_dual_mul_f32 v93, v140, v50 :: v_dual_mul_f32 v74, v149, v59
	v_dual_mul_f32 v4, v89, v4 :: v_dual_mul_f32 v75, v90, v5
	v_dual_mul_f32 v95, v96, v19 :: v_dual_mul_f32 v76, v109, v29
	v_dual_mul_f32 v99, v97, v20 :: v_dual_mul_f32 v80, v110, v30
	v_dual_mul_f32 v5, v108, v28 :: v_dual_mul_f32 v108, v129, v39
	v_mul_f32_e32 v77, v135, v45
	v_dual_mul_f32 v97, v141, v51 :: v_dual_mul_f32 v78, v151, v61
	v_dual_mul_f32 v21, v98, v21 :: v_dual_mul_f32 v84, v112, v31
	v_dual_mul_f32 v107, v101, v23 :: v_dual_mul_f32 v18, v114, v33
	v_dual_mul_f32 v23, v143, v53 :: v_dual_mul_f32 v86, v153, v63
	v_dual_mul_f32 v17, v94, v17 :: v_dual_mul_f32 v68, v105, v26
	v_dual_mul_f32 v103, v100, v22 :: v_dual_mul_f32 v88, v113, v32
	v_dual_mul_f32 v111, v102, v24 :: v_dual_mul_f32 v92, v124, v34
	v_mul_f32_e32 v22, v127, v37
	v_dual_mul_f32 v6, v134, v44 :: v_dual_mul_f32 v19, v139, v49
	v_dual_mul_f32 v109, v145, v55 :: v_dual_mul_f32 v20, v155, v9
	v_dual_mul_f32 v7, v150, v60 :: v_dual_mul_f32 v24, v159, v13
	v_xad_u32 v65, v65, 32, 0
	v_mul_f32_e32 v96, v125, v35
	v_dual_mul_f32 v100, v126, v36 :: v_dual_mul_f32 v69, v132, v42
	v_dual_mul_f32 v112, v130, v40 :: v_dual_mul_f32 v81, v136, v46
	v_dual_mul_f32 v89, v138, v48 :: v_dual_mul_f32 v70, v148, v58
	v_dual_mul_f32 v101, v142, v52 :: v_dual_mul_f32 v82, v152, v62
	v_dual_mul_f32 v105, v144, v54 :: v_dual_mul_f32 v90, v154, v64
	v_dual_mul_f32 v113, v146, v56 :: v_dual_mul_f32 v94, v156, v10
	v_mul_f32_e32 v98, v157, v11
	v_mul_f32_e32 v102, v158, v12
	v_mul_f32_e32 v106, v160, v14
	v_mul_f32_e32 v110, v161, v15
	v_mul_f32_e32 v114, v162, v16
	ds_store_b128 v115, v[0:3]
	ds_store_b128 v115, v[71:74] offset:256
	ds_store_b128 v115, v[75:78] offset:512
	ds_store_b128 v115, v[83:86] offset:768
	ds_store_b128 v115, v[17:20] offset:4096
	ds_store_b128 v115, v[95:98] offset:4352
	ds_store_b128 v115, v[21:24] offset:4608
	ds_store_b128 v115, v[107:110] offset:4864
	ds_store_b128 v65, v[67:70]
	ds_store_b128 v65, v[4:7] offset:256
	ds_store_b128 v65, v[79:82] offset:512
	ds_store_b128 v65, v[87:90] offset:768
	ds_store_b128 v65, v[91:94] offset:4096
	ds_store_b128 v65, v[99:102] offset:4352
	ds_store_b128 v65, v[103:106] offset:4608
	ds_store_b128 v65, v[111:114] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v116
	ds_load_b128 v[4:7], v116 offset:128
	ds_load_b128 v[8:11], v117
	ds_load_b128 v[12:15], v117 offset:128
	ds_load_b128 v[16:19], v118
	ds_load_b128 v[20:23], v118 offset:128
	ds_load_b128 v[24:27], v119
	ds_load_b128 v[28:31], v119 offset:128
	ds_load_b128 v[32:35], v120
	ds_load_b128 v[36:39], v120 offset:128
	ds_load_b128 v[40:43], v121
	ds_load_b128 v[44:47], v121 offset:128
	ds_load_b128 v[48:51], v122
	ds_load_b128 v[52:55], v122 offset:128
	ds_load_b128 v[56:59], v123
	ds_load_b128 v[60:63], v123 offset:128
	.loc	1 247 9 is_stmt 1               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v64, s0, v66, 2
	v_add_lshl_u32 v65, s35, v66, 2
	v_add_lshl_u32 v67, s34, v66, 2
	v_add_lshl_u32 v68, s33, v66, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v64, s[20:23], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v65, s[20:23], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v16, v67, s[20:23], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v24, v68, s[20:23], 0 offen
	v_add_lshl_u32 v0, s30, v66, 2
	v_add_lshl_u32 v8, s29, v66, 2
	v_add_lshl_u32 v16, s28, v66, 2
	v_add_lshl_u32 v24, s27, v66, 2
	v_add_lshl_u32 v64, s26, v66, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v32, v0, s[20:23], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v40, v8, s[20:23], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v48, v16, s[20:23], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v56, v24, s[20:23], 0 offen
	buffer_atomic_add_f32 v4, v64, s[20:23], 0 offen
	v_add_lshl_u32 v0, s25, v66, 2
	v_add_lshl_u32 v4, s24, v66, 2
	v_add_lshl_u32 v8, s19, v66, 2
	v_add_lshl_u32 v16, s18, v66, 2
	v_add_lshl_u32 v24, s17, v66, 2
	s_clause 0x4
	buffer_atomic_add_f32 v12, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v20, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v28, v8, s[20:23], 0 offen
	buffer_atomic_add_f32 v36, v16, s[20:23], 0 offen
	buffer_atomic_add_f32 v44, v24, s[20:23], 0 offen
	v_add_lshl_u32 v0, s16, v66, 2
	v_add_lshl_u32 v4, s15, v66, 2
	v_add_lshl_u32 v8, s14, v66, 2
	v_add_lshl_u32 v12, s13, v66, 2
	v_add_lshl_u32 v16, s12, v66, 2
	buffer_atomic_add_f32 v52, v0, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v60, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v1, v8, s[20:23], 0 offen
	buffer_atomic_add_f32 v9, v12, s[20:23], 0 offen
	buffer_atomic_add_f32 v17, v16, s[20:23], 0 offen
	v_add_lshl_u32 v0, s11, v66, 2
	v_add_lshl_u32 v1, s10, v66, 2
	v_add_lshl_u32 v4, s9, v66, 2
	v_add_lshl_u32 v8, s8, v66, 2
	v_add_lshl_u32 v9, s7, v66, 2
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v33, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v41, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v49, v8, s[20:23], 0 offen
	buffer_atomic_add_f32 v57, v9, s[20:23], 0 offen
	v_add_lshl_u32 v0, s6, v66, 2
	v_add_lshl_u32 v1, s4, v66, 2
	v_add_lshl_u32 v4, s1, v66, 2
	v_add_lshl_u32 v8, s5, v66, 2
	v_add_lshl_u32 v9, s70, v66, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v13, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v21, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v29, v8, s[20:23], 0 offen
	buffer_atomic_add_f32 v37, v9, s[20:23], 0 offen
	v_add_lshl_u32 v0, s36, v66, 2
	v_add_lshl_u32 v1, s37, v66, 2
	v_add_lshl_u32 v4, s38, v66, 2
	v_add_lshl_u32 v5, s39, v66, 2
	v_add_lshl_u32 v8, s40, v66, 2
	s_clause 0x4
	buffer_atomic_add_f32 v45, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v53, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v61, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v2, v5, s[20:23], 0 offen
	buffer_atomic_add_f32 v10, v8, s[20:23], 0 offen
	v_add_lshl_u32 v0, s41, v66, 2
	v_add_lshl_u32 v1, s42, v66, 2
	v_add_lshl_u32 v2, s43, v66, 2
	v_add_lshl_u32 v4, s44, v66, 2
	v_add_lshl_u32 v5, s45, v66, 2
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v26, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v34, v2, s[20:23], 0 offen
	buffer_atomic_add_f32 v42, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v50, v5, s[20:23], 0 offen
	v_add_lshl_u32 v0, s46, v66, 2
	v_add_lshl_u32 v1, s47, v66, 2
	v_add_lshl_u32 v2, s48, v66, 2
	v_add_lshl_u32 v4, s49, v66, 2
	v_add_lshl_u32 v5, s50, v66, 2
	s_clause 0x4
	buffer_atomic_add_f32 v58, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v6, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v14, v2, s[20:23], 0 offen
	buffer_atomic_add_f32 v22, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v30, v5, s[20:23], 0 offen
	v_add_lshl_u32 v0, s51, v66, 2
	v_add_lshl_u32 v1, s52, v66, 2
	v_add_lshl_u32 v2, s53, v66, 2
	v_add_lshl_u32 v4, s54, v66, 2
	v_add_lshl_u32 v5, s55, v66, 2
	s_clause 0x4
	buffer_atomic_add_f32 v38, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v46, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v54, v2, s[20:23], 0 offen
	buffer_atomic_add_f32 v62, v4, s[20:23], 0 offen
	buffer_atomic_add_f32 v3, v5, s[20:23], 0 offen
	v_add_lshl_u32 v0, s56, v66, 2
	v_add_lshl_u32 v1, s57, v66, 2
	v_add_lshl_u32 v2, s58, v66, 2
	v_add_lshl_u32 v3, s59, v66, 2
	v_add_lshl_u32 v4, s60, v66, 2
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v19, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v27, v2, s[20:23], 0 offen
	buffer_atomic_add_f32 v35, v3, s[20:23], 0 offen
	buffer_atomic_add_f32 v43, v4, s[20:23], 0 offen
	v_add_lshl_u32 v0, s61, v66, 2
	v_add_lshl_u32 v1, s62, v66, 2
	v_add_lshl_u32 v2, s63, v66, 2
	v_add_lshl_u32 v3, s64, v66, 2
	v_add_lshl_u32 v4, s65, v66, 2
	s_clause 0x4
	buffer_atomic_add_f32 v51, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v59, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v7, v2, s[20:23], 0 offen
	buffer_atomic_add_f32 v15, v3, s[20:23], 0 offen
	buffer_atomic_add_f32 v23, v4, s[20:23], 0 offen
	v_add_lshl_u32 v0, s66, v66, 2
	v_add_lshl_u32 v1, s67, v66, 2
	.loc	1 247 23 is_stmt 0              ; generate_amdgcn.py:247:23
	s_add_i32 s0, s0, s31
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v2, s68, v66, 2
	v_add_lshl_u32 v3, s69, v66, 2
	v_add_lshl_u32 v4, s0, v66, 2
	s_clause 0x4
	buffer_atomic_add_f32 v31, v0, s[20:23], 0 offen
	buffer_atomic_add_f32 v39, v1, s[20:23], 0 offen
	buffer_atomic_add_f32 v47, v2, s[20:23], 0 offen
	buffer_atomic_add_f32 v55, v3, s[20:23], 0 offen
	buffer_atomic_add_f32 v63, v4, s[20:23], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp14:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
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
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 81
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
		.amdhsa_inst_pref_size 42
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_vgpr, 163
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5268
; TotalNumSgprs: 83
; NumVgprs: 163
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     163
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
