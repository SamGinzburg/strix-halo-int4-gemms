	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[16:17], s[0:1], 0x30
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v48, 2, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v45, 3, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v39, 0xe0, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshrrev_b32_e32 v41, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v47, 0x80, v48
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_lshlrev_b32_e32 v10, 4, v0
	v_dual_mov_b32 v4, v8 :: v_dual_and_b32 v11, 56, v0
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v9, 3, v0
	v_dual_mov_b32 v24, v8 :: v_dual_and_b32 v37, 56, v41
	v_lshlrev_b32_e32 v35, 2, v0
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v42, v9, v37
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s16, 63
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
	s_ashr_i32 s12, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s12
	v_mov_b32_e32 v17, v8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v7, v8
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v5, v8 :: v_dual_add_nc_u32 v42, 0, v42
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s14
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s12, s14, s12
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s15, s4, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s12
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s16, s15
	s_cvt_f32_u32 s4, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	s_clause 0x1
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b32 s25, s[0:1], 0x38
	v_readfirstlane_b32 s13, v1
	s_mul_f32 s13, s13, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s13, s13
	s_mul_i32 s18, s18, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s13, s18
	s_abs_i32 s18, s2
	s_add_i32 s13, s13, s12
	s_xor_b32 s12, s2, s15
	s_mul_hi_u32 s19, s18, s13
	s_ashr_i32 s22, s12, 31
	s_mul_i32 s13, s19, s16
	s_add_i32 s20, s19, 1
	s_sub_i32 s18, s18, s13
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_sub_i32 s21, s18, s16
	s_cmp_ge_u32 s18, s16
	s_cselect_b32 s6, s20, s19
	s_cselect_b32 s7, s21, s18
	s_add_i32 s18, s6, 1
	s_cmp_ge_u32 s7, s16
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s6, s18, s6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s18, s25, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s24, s6, s22
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s16, s3, 6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s3, s25, s18
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s18, s24, s22
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s23, s3, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s3, s18, s15
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s20, s18, 8
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s3
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_mul_lo_u32 v3, s23, v47
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s14
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_mul_i32 s3, s20, s23
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s19, s2, 6
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lt_i32 s25, 2
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s2, s19, s23
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s21, -1, 0
	s_cmp_gt_i32 s25, 1
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v40, 7, v0
	v_and_b32_e32 v36, 3, v0
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_add_i32 s3, s3, s16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s14, s6
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v33, 3, v40
	v_lshlrev_b32_e32 v46, 4, v36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s15, s7
	s_and_b32 s13, s13, 0xffff
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_lt_i32 s25, 0x82
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mad_u64_u32 v[1:2], null, s23, v45, v[33:34]
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_mul_lo_u32 v2, s23, v48
	v_add3_u32 v3, v3, v46, s3
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v34, 15, v0
	v_mov_b32_e32 v22, v8
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v1, s16, s2, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 156 30 is_stmt 0              ; generate_amdgcn.py:156:30
	v_add3_u32 v2, v2, v46, s3
	s_load_b128 s[0:3], s[0:1], 0x20
	v_lshlrev_b32_e32 v37, 6, v34
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	buffer_load_b64 v[57:58], v1, s[4:7], 0 offen
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_clause 0x1
	buffer_load_b128 v[49:52], v2, s[12:15], 0 offen
	buffer_load_b128 v[53:56], v3, s[12:15], 0 offen
	v_mov_b32_e32 v3, v8
	v_xor_b32_e32 v38, v10, v11
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v11, v8
	v_xor_b32_e32 v44, 8, v38
	v_mov_b32_e32 v23, v8
	v_dual_mov_b32 v10, v8 :: v_dual_add_nc_u32 v43, 0, v38
	v_lshlrev_b32_e32 v38, 5, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v44, 0, v44
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(2)
	ds_store_b64 v42, v[57:58] offset:16384
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v43, v[49:50], v[53:54] offset1:16
	ds_store_2addr_stride64_b64 v44, v[51:52], v[55:56] offset1:16
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s14, s23, 63
.Ltmp13:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v4, s19, v45
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s14, s14, 6
.Ltmp15:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_lshl_b32 s15, s24, 8
	v_sub_nc_u32_e64 v9, s14, 2 clamp
	v_or_b32_e32 v2, s15, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_readfirstlane_b32 s14, v9
	v_mov_b32_e32 v9, 0
	v_lshlrev_b32_e32 v1, 2, v0
	v_mov_b32_e32 v21, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_or_b32 v5, 0x438, v1, v37
	v_dual_mov_b32 v22, v9 :: v_dual_and_b32 v1, 56, v1
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v24, v9
	v_xor_b32_e32 v12, 40, v5
	v_xor_b32_e32 v6, 8, v5
	v_xor_b32_e32 v7, 16, v5
	v_xor_b32_e32 v8, 24, v5
	v_xor_b32_e32 v11, 32, v5
	v_add_nc_u32_e32 v52, 0, v12
	v_mov_b32_e32 v12, v9
	v_or3_b32 v10, v38, v1, v37
	v_or_b32_e32 v1, s15, v47
	s_lshl_b32 s15, s22, 8
	v_xor_b32_e32 v13, 48, v5
	v_subrev_nc_u32_e32 v2, s15, v2
	v_xor_b32_e32 v14, 56, v5
	v_subrev_nc_u32_e32 v3, s15, v1
	v_xor_b32_e32 v15, 8, v10
	v_xor_b32_e32 v16, 16, v10
	v_mad_u64_u32 v[1:2], null, s23, v2, s[16:17]
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[2:3], null, s23, v3, s[16:17]
	v_mad_u64_u32 v[3:4], null, s23, v4, s[16:17]
	v_xor_b32_e32 v17, 24, v10
	v_xor_b32_e32 v4, 32, v10
	v_xor_b32_e32 v18, 40, v10
	v_xor_b32_e32 v19, 48, v10
	v_xor_b32_e32 v20, 56, v10
	v_add3_u32 v45, v1, v46, 64
	v_add3_u32 v46, v2, v46, 64
	v_add3_u32 v33, v3, v33, 64
	v_add_nc_u32_e32 v47, 0, v5
	v_add_nc_u32_e32 v48, 0, v6
	v_add_nc_u32_e32 v49, 0, v7
	v_add_nc_u32_e32 v50, 0, v8
	v_dual_mov_b32 v26, v9 :: v_dual_add_nc_u32 v51, 0, v11
	v_dual_mov_b32 v28, v9 :: v_dual_add_nc_u32 v53, 0, v13
	v_dual_mov_b32 v25, v9 :: v_dual_add_nc_u32 v54, 0, v14
	v_dual_mov_b32 v30, v9 :: v_dual_add_nc_u32 v55, 0, v10
	v_dual_mov_b32 v27, v9 :: v_dual_add_nc_u32 v56, 0, v15
	v_dual_mov_b32 v32, v9 :: v_dual_add_nc_u32 v57, 0, v16
	v_dual_mov_b32 v29, v9 :: v_dual_add_nc_u32 v58, 0, v17
	v_add_nc_u32_e32 v59, 0, v4
	v_dual_mov_b32 v31, v9 :: v_dual_add_nc_u32 v60, 0, v18
	v_add_nc_u32_e32 v61, 0, v19
	v_dual_mov_b32 v17, v9 :: v_dual_add_nc_u32 v62, 0, v20
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v16, v9
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v19, v9
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	s_add_i32 s16, s14, 1
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b64 v[91:92], v33, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_clause 0x1
	buffer_load_b128 v[63:66], v45, s[12:15], 0 offen
	buffer_load_b128 v[67:70], v46, s[12:15], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[71:74], v47 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[75:78], v55 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[79:82], v48 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[83:86], v56 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[87:90], v49 offset0:32 offset1:36
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v45, 64, v45
	v_add_nc_u32_e32 v46, 64, v46
	v_add_nc_u32_e32 v33, 64, v33
	s_add_i32 s16, s16, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s16, 0
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[71:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[77:78], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[77:78], v[73:74], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[71:74], v57 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[75:78], v50 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[79:80], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[79:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[81:82], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[79:82], v58 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[83:86], v51 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[71:72], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[87:88], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[89:90], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[71:74], v59 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[87:90], v52 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[79:80], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[75:76], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[79:80], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[77:78], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[75:78], v60 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[79:82], v53 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[71:72], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[83:84], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[85:86], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[71:74], v54 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[83:86], v61 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[77:78], v[87:88], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[77:78], v[89:90], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[75:78], v62 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v42, v[91:92] offset:16384
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v43, v[63:64], v[67:68] offset1:16
	ds_store_2addr_stride64_b64 v44, v[65:66], v[69:70] offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[79:80], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[79:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[81:82], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[71:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[77:78], v[71:72], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[77:78], v[73:74], v[1:8] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, s21
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %._crit_edge._crit_edge
.Ltmp16:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v33, 2, v0
	s_cbranch_execz .LBB0_7
.Ltmp17:
; %bb.5:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v35, v33
	s_branch .LBB0_8
.LBB0_6:
                                        ; implicit-def: $vgpr33
.LBB0_7:
	.loc	1 156 22 is_stmt 1              ; generate_amdgcn.py:156:22
	v_and_b32_e32 v33, 56, v35
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_or_b32 v50, 0x438, v35, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_or3_b32 v33, v38, v33, v37
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v42, 0, v50
	v_xad_u32 v51, v50, 8, 0
	v_xad_u32 v37, v50, 56, 0
	v_xad_u32 v38, v50, 48, 0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v46, 0, v33
	v_xad_u32 v54, v33, 8, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v82, v50, 40, 0
	v_xad_u32 v86, v50, 32, 0
	ds_load_2addr_stride64_b64 v[42:45], v42 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[46:49], v46 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v70, v50, 24, 0
	v_xad_u32 v58, v50, 16, 0
	ds_load_2addr_stride64_b64 v[50:53], v51 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[54:57], v54 offset1:16
	v_xad_u32 v62, v33, 16, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[58:61], v58 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[62:65], v62 offset1:16
	v_xad_u32 v74, v33, 24, 0
	v_xad_u32 v94, v33, 56, 0
	v_xad_u32 v95, v33, 48, 0
	v_xad_u32 v96, v33, 40, 0
	v_xad_u32 v33, v33, 32, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[66:69], v37 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[70:73], v70 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[74:77], v74 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[78:81], v38 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[82:85], v82 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[86:89], v86 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[90:93], v33 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[42:43], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[48:49], v[42:43], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[46:47], v[44:45], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[48:49], v[44:45], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[42:45], v96 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[54:55], v[50:51], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[56:57], v[50:51], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[54:55], v[52:53], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[56:57], v[52:53], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[46:49], v95 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[62:63], v[58:59], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[64:65], v[58:59], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[60:61], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[64:65], v[60:61], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[50:53], v94 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[74:75], v[70:71], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[76:77], v[70:71], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[74:75], v[72:73], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[76:77], v[72:73], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[86:87], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[92:93], v[86:87], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[88:89], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[92:93], v[88:89], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[42:43], v[82:83], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[44:45], v[82:83], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[42:43], v[84:85], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[44:45], v[84:85], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[78:79], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[48:49], v[78:79], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[46:47], v[80:81], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[48:49], v[80:81], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[50:51], v[66:67], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[52:53], v[66:67], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[50:51], v[68:69], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[52:53], v[68:69], v[1:8] neg_lo:[1,1,0]
.LBB0_8:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v33, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_bfe_u32 v42, v0, 4, 1
	v_lshrrev_b32_e32 v43, 1, v39
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v44, 4, v33
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or3_b32 v42, v42, v43, s20
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_mov_b32 s4, s8
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or3_b32 v44, v44, v34, s19
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_lshlrev_b32_e32 v42, 1, v42
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v44, 1, v44
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_or_b32_e32 v46, 4, v42
	v_or_b32_e32 v48, 12, v42
	v_or_b32_e32 v50, 20, v42
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v45, v44, s[4:7], 0 offen
	v_or_b32_e32 v44, 64, v44
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_or_b32_e32 v52, 28, v42
	v_or_b32_e32 v54, 0x104, v42
	v_or_b32_e32 v56, 0x10c, v42
	v_or_b32_e32 v58, 0x114, v42
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_clause 0x7
	buffer_load_u16 v43, v42, s[4:7], 0 offen
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	buffer_load_u16 v48, v48, s[4:7], 0 offen
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	buffer_load_u16 v54, v54, s[4:7], 0 offen
	buffer_load_u16 v56, v56, s[4:7], 0 offen
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v52, 16, v52
	v_lshlrev_b32_e32 v46, 16, v46
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v61, v45, v46 :: v_dual_and_b32 v38, 16, v0
	v_mul_f32_e32 v46, v44, v46
	v_mul_f32_e32 v69, v45, v54
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v58, 16, v58
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v67, v45, v52
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v10, v61, v10
	v_mul_f32_e32 v26, v69, v26
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v73, v45, v58
	v_mul_f32_e32 v63, v45, v48
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_or_b32_e32 v47, 8, v42
	v_or_b32_e32 v49, 16, v42
	v_or_b32_e32 v51, 24, v42
	v_or_b32_e32 v53, 0x100, v42
	v_or_b32_e32 v55, 0x108, v42
	s_clause 0x4
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	buffer_load_u16 v49, v49, s[4:7], 0 offen
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	buffer_load_u16 v55, v55, s[4:7], 0 offen
	v_or_b32_e32 v57, 0x110, v42
	v_or_b32_e32 v59, 0x118, v42
	v_or_b32_e32 v42, 0x11c, v42
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v48, v44, v48
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v12, v63, v12
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_clause 0x2
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v30, v73, v30
	v_mul_f32_e32 v16, v67, v16
	s_mov_b32 s4, 0x76543210
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s5, s17, 31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v38, 7, v38
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s5, s17, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s5, s5, 1
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s8, s19, s5
.Ltmp20:
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v55, 16, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v70, v45, v55 :: v_dual_lshlrev_b32 v53, 16, v53
	v_dual_mul_f32 v68, v45, v53 :: v_dual_lshlrev_b32 v47, 16, v47
	v_dual_mul_f32 v53, v44, v53 :: v_dual_lshlrev_b32 v56, 16, v56
	v_mul_f32_e32 v55, v44, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v62, v45, v47
	v_dual_mul_f32 v47, v44, v47 :: v_dual_lshlrev_b32 v50, 16, v50
	v_mul_f32_e32 v71, v45, v56
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v56, v44, v56 :: v_dual_lshlrev_b32 v59, 16, v59
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v27, v70, v27
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v65, v45, v50
	v_dual_mul_f32 v50, v44, v50 :: v_dual_lshlrev_b32 v57, 16, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v74, v45, v59
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v59, v44, v59
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v11, v62, v11 :: v_dual_mul_f32 v72, v45, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v66, v45, v51 :: v_dual_lshlrev_b32 v49, 16, v49
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v51, v44, v51 :: v_dual_lshlrev_b32 v42, 16, v42
	v_dual_mul_f32 v64, v45, v49 :: v_dual_and_b32 v37, 0x1f0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v60, v45, v43
	v_mul_f32_e32 v45, v45, v42
	v_mul_f32_e32 v43, v44, v43
	v_mul_f32_e32 v49, v44, v49
	v_mul_f32_e32 v52, v44, v52
	v_dual_mul_f32 v54, v44, v54 :: v_dual_mul_f32 v15, v66, v15
	v_dual_mul_f32 v57, v44, v57 :: v_dual_mul_f32 v14, v65, v14
	v_dual_mul_f32 v58, v44, v58 :: v_dual_mul_f32 v31, v74, v31
	v_dual_mul_f32 v42, v44, v42 :: v_dual_mul_f32 v17, v43, v17
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v9, v60, v9
	v_dual_mul_f32 v13, v64, v13 :: v_dual_mul_f32 v28, v71, v28
	v_mul_f32_e32 v25, v68, v25
	v_dual_mul_f32 v29, v72, v29 :: v_dual_mul_f32 v32, v45, v32
	v_dual_mul_f32 v18, v46, v18 :: v_dual_mul_f32 v19, v47, v19
	v_dual_mul_f32 v20, v48, v20 :: v_dual_mul_f32 v21, v49, v21
	v_dual_mul_f32 v22, v50, v22 :: v_dual_mul_f32 v23, v51, v23
	v_dual_mul_f32 v24, v52, v24 :: v_dual_mul_f32 v1, v53, v1
	v_dual_mul_f32 v2, v54, v2 :: v_dual_mul_f32 v3, v55, v3
	v_dual_mul_f32 v4, v56, v4 :: v_dual_mul_f32 v5, v57, v5
	v_dual_mul_f32 v6, v58, v6 :: v_dual_mul_f32 v7, v59, v7
	v_dual_mul_f32 v8, v42, v8 :: v_dual_max_f32 v9, 0, v9
	.loc	1 178 19 is_stmt 1              ; generate_amdgcn.py:178:19
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v43, 0, v16
	v_dual_max_f32 v42, 0, v15 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v45, 0, v18
	v_dual_max_f32 v44, 0, v17 :: v_dual_max_f32 v49, 0, v23
	v_dual_max_f32 v46, 0, v19 :: v_dual_max_f32 v47, 0, v21
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v48, 0, v22 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v50, 0, v24 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v53, 0, v8
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v51, 0, v6
	v_dual_max_f32 v52, 0, v7 :: v_dual_mul_f32 v55, v10, v10
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_dual_mul_f32 v54, v9, v9 :: v_dual_mul_f32 v57, v12, v12
	v_dual_mul_f32 v56, v11, v11 :: v_dual_mul_f32 v15, v13, v13
	v_dual_mul_f32 v16, v14, v14 :: v_dual_mul_f32 v19, v25, v25
	v_dual_mul_f32 v21, v26, v26 :: v_dual_mul_f32 v22, v27, v27
	v_dual_mul_f32 v23, v28, v28 :: v_dual_mul_f32 v24, v29, v29
	v_dual_mul_f32 v25, v30, v30 :: v_dual_mul_f32 v28, v32, v32
	v_mul_f32_e32 v27, v31, v31
	v_dual_mul_f32 v17, v42, v42 :: v_dual_mul_f32 v18, v43, v43
	v_dual_mul_f32 v29, v44, v44 :: v_dual_mul_f32 v42, v47, v47
	v_dual_mul_f32 v44, v46, v46 :: v_dual_mul_f32 v43, v20, v20
	v_mul_f32_e32 v30, v49, v49
	v_dual_mul_f32 v26, v50, v50 :: v_dual_mul_f32 v7, v4, v4
	v_dual_mul_f32 v20, v1, v1 :: v_dual_mul_f32 v13, v2, v2
	v_dual_mul_f32 v4, v52, v52 :: v_dual_max_f32 v1, v54, v55
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v57, v15, v16
	v_max3_f32 v10, v21, v22, v23
	v_max3_f32 v11, v24, v25, v27
.Ltmp22:
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_dual_mul_f32 v31, v45, v45 :: v_dual_mul_f32 v32, v48, v48
	v_dual_mul_f32 v8, v3, v3 :: v_dual_mul_f32 v3, v53, v53
	v_dual_mul_f32 v6, v5, v5 :: v_dual_mul_f32 v5, v51, v51
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v9, v17, v18, v19
	v_max3_f32 v1, v1, v56, v2
	v_max3_f32 v2, v10, v11, v28
	v_max3_f32 v11, v13, v8, v7
	v_max3_f32 v12, v6, v5, v4
	v_max3_f32 v10, v30, v26, v20
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v14, v40, 8, 0
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v1, v1, v9, v2
	v_max_f32_e32 v2, v29, v31
	v_max3_f32 v9, v43, v42, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v2, v2, v44, v9
	v_max3_f32 v9, v11, v12, v3
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v11, 8, v0
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v2, v10, v9
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v9, v1, s4, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0xf0, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v1, v1, v9
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v9, v2, s4, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s4, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_dual_max_f32 v2, v2, v9 :: v_dual_lshlrev_b32 v9, 4, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v12, v9, v10
	v_add3_u32 v12, v14, v12, v11
	ds_store_b64 v12, v[1:2]
	v_lshl_or_b32 v1, v39, 3, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v1, v1, v10
	v_lshrrev_b32_e32 v10, 1, v33
	v_add3_u32 v1, 0, v11, v1
	v_lshl_add_u32 v11, v11, 3, 0
	ds_load_b64 v[1:2], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v9, v1
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v9
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v9
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, v1, v9
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v2
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v2, v2, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v2
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v2, v2, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v2
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v2, v2, v9
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v9, 2, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v9, v11, v9, v10
	ds_store_b64 v9, v[1:2]
	v_lshlrev_b32_e32 v1, 3, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v2, 0, v1, v10
	ds_load_b64 v[9:10], v2
.Ltmp49:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v2, v9, v9 :: v_dual_max_f32 v9, v10, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v2, 0x2b8cbccc, v2 :: v_dual_max_f32 v9, 0x2b8cbccc, v9
	v_div_scale_f32 v10, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v11, v10
	v_fma_f32 v12, -v10, v11, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v14, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v10, v14, v12
	v_fmac_f32_e32 v14, v39, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v10, v14, v12
	v_div_fmas_f32 v10, v10, v11, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v10, 0x40e00000, v2
	v_div_scale_f32 v10, null, 0x40e00000, 0x40e00000, v9
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v9, 0x40e00000, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v14, v12, v11
	v_fma_f32 v39, -v10, v14, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v39, v11
	v_fma_f32 v10, -v10, v14, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v10, v11, v14
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v11.l, v2.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v9, v10, 0x40e00000, v9
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v10.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v10.l, v9.h
	v_mov_b16_e32 v11.h, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v9, v9, v10, 0x7fff
	v_add3_u32 v11, v2, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v2.h, v9.h
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v39, 0xffff0000, v11
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v2.l, v11.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v9, 0xffff0000, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v10, null, v39, v39, v54
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v54, v39, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v14, v12, v11
	v_fma_f32 v40, -v10, v14, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v40, v11
	v_fma_f32 v10, -v10, v14, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v10, v10, v11, v14
	v_div_scale_f32 v11, null, v39, v39, v55
	v_rcp_f32_e32 v12, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v11, v12, 1.0
	v_fmac_f32_e32 v12, v14, v12
	v_div_scale_f32 v14, vcc_lo, v55, v39, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v14, v12
	v_fma_f32 v41, -v11, v40, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v12
	v_fma_f32 v11, -v11, v40, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v11, v11, v12, v40
	v_div_scale_f32 v12, null, v39, v39, v56
	v_rcp_f32_e32 v14, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v12, v14, 1.0
	v_fmac_f32_e32 v14, v40, v14
	v_div_scale_f32 v40, vcc_lo, v56, v39, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v14
	v_fma_f32 v45, -v12, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v45, v14
	v_fma_f32 v12, -v12, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v12, v12, v14, v41
	v_div_scale_f32 v14, null, v39, v39, v57
	v_rcp_f32_e32 v40, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v14, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v57, v39, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v41, v40
	v_fma_f32 v46, -v14, v45, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v40
	v_fma_f32 v14, -v14, v45, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v14, v14, v40, v45
	v_div_scale_f32 v40, null, v39, v39, v15
	v_rcp_f32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v40, v41, 1.0
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, vcc_lo, v15, v39, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v41
	v_fma_f32 v47, -v40, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v41
	v_fma_f32 v40, -v40, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v41, v46
	v_div_fixup_f32 v15, v40, v39, v15
	v_div_scale_f32 v40, null, v39, v39, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v40
	v_fma_f32 v45, -v40, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, vcc_lo, v16, v39, v16
	v_mul_f32_e32 v46, v45, v41
	v_div_fixup_f32 v10, v10, v39, v54
	v_div_fixup_f32 v11, v11, v39, v55
	v_div_fixup_f32 v12, v12, v39, v56
	v_div_fixup_f32 v14, v14, v39, v57
	v_fma_f32 v47, -v40, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v41
	v_fma_f32 v40, -v40, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v41, v46
	v_div_fixup_f32 v16, v40, v39, v16
	v_div_scale_f32 v40, null, v39, v39, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v40
	v_fma_f32 v45, -v40, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, vcc_lo, v17, v39, v17
	v_mul_f32_e32 v46, v45, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v40, v46, v45
	v_fmac_f32_e32 v46, v47, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v46, v45
	v_div_fmas_f32 v40, v40, v41, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v17, v40, v39, v17
	v_div_scale_f32 v40, null, v39, v39, v18
	v_rcp_f32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v40, v41, 1.0
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, vcc_lo, v18, v39, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v41
	v_fma_f32 v47, -v40, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v41
	v_fma_f32 v40, -v40, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v41, v46
	v_div_fixup_f32 v18, v40, v39, v18
	v_div_scale_f32 v40, null, v39, v39, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v40
	v_fma_f32 v45, -v40, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, vcc_lo, v19, v39, v19
	v_mul_f32_e32 v46, v45, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v40, v46, v45
	v_fmac_f32_e32 v46, v47, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v46, v45
	v_div_fmas_f32 v40, v40, v41, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v19, v40, v39, v19
	v_div_scale_f32 v40, null, v39, v39, v21
	v_rcp_f32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v40, v41, 1.0
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, vcc_lo, v21, v39, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v41
	v_fma_f32 v47, -v40, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v41
	v_fma_f32 v40, -v40, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v41, v46
	v_div_fixup_f32 v21, v40, v39, v21
	v_div_scale_f32 v40, null, v39, v39, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v40
	v_fma_f32 v45, -v40, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, vcc_lo, v22, v39, v22
	v_mul_f32_e32 v46, v45, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v40, v46, v45
	v_fmac_f32_e32 v46, v47, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v46, v45
	v_div_fmas_f32 v40, v40, v41, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v22, v40, v39, v22
	v_div_scale_f32 v40, null, v39, v39, v23
	v_rcp_f32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v40, v41, 1.0
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, vcc_lo, v23, v39, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v41
	v_fma_f32 v47, -v40, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v41
	v_fma_f32 v40, -v40, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v41, v46
	v_div_fixup_f32 v23, v40, v39, v23
	v_div_scale_f32 v40, null, v39, v39, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v40
	v_fma_f32 v45, -v40, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, vcc_lo, v24, v39, v24
	v_mul_f32_e32 v46, v45, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v40, v46, v45
	v_fmac_f32_e32 v46, v47, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v46, v45
	v_div_fmas_f32 v40, v40, v41, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v24, v40, v39, v24
	v_div_scale_f32 v40, null, v39, v39, v25
	v_rcp_f32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v40, v41, 1.0
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, vcc_lo, v25, v39, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v41
	v_fma_f32 v47, -v40, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v41
	v_fma_f32 v40, -v40, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v41, v46
	v_div_fixup_f32 v25, v40, v39, v25
	v_div_scale_f32 v40, null, v39, v39, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v40
	v_fma_f32 v45, -v40, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, vcc_lo, v27, v39, v27
	v_mul_f32_e32 v46, v45, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v40, v46, v45
	v_fmac_f32_e32 v46, v47, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v46, v45
	v_div_fmas_f32 v40, v40, v41, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v27, v40, v39, v27
	v_div_scale_f32 v40, null, v39, v39, v28
	v_rcp_f32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v40, v41, 1.0
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, vcc_lo, v28, v39, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v41
	v_fma_f32 v47, -v40, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v41
	v_fma_f32 v40, -v40, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v41, v46
	v_div_fixup_f32 v28, v40, v39, v28
	v_div_scale_f32 v39, null, v9, v9, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v29, v9, v29
	v_mul_f32_e32 v45, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v39, v45, v41
	v_fmac_f32_e32 v45, v46, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v45, v41
	v_div_fmas_f32 v39, v39, v40, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v29, v39, v9, v29
	v_div_scale_f32 v39, null, v9, v9, v31
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v31, v9, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v41, v40
	v_fma_f32 v46, -v39, v45, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v40
	v_fma_f32 v39, -v39, v45, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v45
	v_div_fixup_f32 v31, v39, v9, v31
	v_div_scale_f32 v39, null, v9, v9, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v44, v9, v44
	v_mul_f32_e32 v45, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v39, v45, v41
	v_fmac_f32_e32 v45, v46, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v45, v41
	v_div_fmas_f32 v39, v39, v40, v45
	v_div_scale_f32 v40, null, v9, v9, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v39, v39, v9, v44
	v_rcp_f32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v40, v41, 1.0
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v44, vcc_lo, v43, v9, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v41
	v_fma_f32 v46, -v40, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v41
	v_fma_f32 v40, -v40, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v40, v40, v41, v45
	v_div_scale_f32 v41, null, v9, v9, v42
	v_div_fixup_f32 v40, v40, v9, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v44, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v42, v9, v42
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v41, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v45, v44
	v_div_fmas_f32 v41, v41, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v41, v41, v9, v42
	v_div_scale_f32 v42, null, v9, v9, v32
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v32, v9, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v32, v42, v9, v32
	v_div_scale_f32 v42, null, v9, v9, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s4, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v30, v9, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v30, v42, v9, v30
	v_div_scale_f32 v42, null, v9, v9, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v30, v30, s4, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v26, v9, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v26, v42, v9, v26
	v_div_scale_f32 v42, null, v9, v9, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v26, v26, s4, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	v_dual_fmac_f32 v43, v44, v43 :: v_dual_and_b32 v26, 15, v26
	v_div_scale_f32 v44, vcc_lo, v20, v9, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v20, v42, v9, v20
	v_div_scale_f32 v42, null, v9, v9, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s4, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v13, v9, v13
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v13, v42, v9, v13
	v_div_scale_f32 v42, null, v9, v9, v8
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s4, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v8, v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v8, v42, v9, v8
	v_div_scale_f32 v42, null, v9, v9, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s4, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v7, v9, v7
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v7, v42, v9, v7
	v_div_scale_f32 v42, null, v9, v9, v6
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s4, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v6, v9, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v6, v42, v9, v6
	v_div_scale_f32 v42, null, v9, v9, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s4, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v5, v9, v5
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v5, v42, v9, v5
	v_div_scale_f32 v42, null, v9, v9, v4
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s4, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v4, v9, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v4, v42, v9, v4
	v_div_scale_f32 v42, null, v9, v9, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s4, 0x40e00000
	v_cvt_i32_f32_e32 v47, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v3, v9, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, v46, v43
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v46, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v42, -v42, v45, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v44, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v42, v42, v43, v45
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v43, v8
	v_cvt_i32_f32_e32 v45, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v3, v42, v9, v3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v10
	v_rndne_f32_e32 v10, v11
	v_rndne_f32_e32 v11, v12
	v_rndne_f32_e32 v12, v14
	v_rndne_f32_e32 v14, v15
	v_rndne_f32_e32 v15, v16
	v_rndne_f32_e32 v16, v17
	v_rndne_f32_e32 v17, v18
	v_rndne_f32_e32 v18, v19
	v_rndne_f32_e32 v19, v21
	v_rndne_f32_e32 v21, v22
	v_rndne_f32_e32 v22, v23
	v_rndne_f32_e32 v23, v24
	v_rndne_f32_e32 v24, v25
	v_rndne_f32_e32 v25, v27
	v_rndne_f32_e32 v27, v28
	v_rndne_f32_e32 v28, v29
	v_rndne_f32_e32 v29, v31
	v_rndne_f32_e32 v31, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s4, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v9, v9, s4, 0x40e00000
	v_med3_f32 v16, v16, s4, 0x40e00000
	v_med3_f32 v31, v31, s4, 0x40e00000
	v_med3_f32 v24, v24, s4, 0x40e00000
	v_med3_f32 v29, v29, s4, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_med3_f32 v10, v10, s4, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_med3_f32 v17, v17, s4, 0x40e00000
	v_med3_f32 v25, v25, s4, 0x40e00000
	v_med3_f32 v3, v3, s4, 0x40e00000
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v42, v13
	v_and_b32_e32 v13, 15, v21
	v_and_b32_e32 v21, 15, v31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v31, 11, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v40, v41
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s4, 0x40e00000
	v_med3_f32 v12, v12, s4, 0x40e00000
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v41, v20
	v_cvt_i32_f32_e32 v48, v3
	v_and_b32_e32 v3, 15, v9
	v_and_b32_e32 v9, 15, v16
	v_and_b32_e32 v16, 15, v24
	v_and_b32_e32 v20, 15, v29
	v_and_b32_e32 v24, 15, v32
	v_and_b32_e32 v29, 15, v43
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v31, 0x3000, v31
	v_lshlrev_b32_e32 v32, 4, v34
	v_and_b32_e32 v43, 0x160, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s4, 0x40e00000
	v_med3_f32 v18, v18, s4, 0x40e00000
	v_med3_f32 v19, v19, s4, 0x40e00000
	v_med3_f32 v22, v22, s4, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v12, v12
	v_and_b32_e32 v4, 15, v10
	v_and_b32_e32 v10, 15, v17
	v_and_b32_e32 v17, 15, v25
	v_and_b32_e32 v25, 15, v30
	v_and_b32_e32 v30, 15, v44
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v44, 0x200, v35
	v_xor_b32_e32 v32, v32, v43
	v_add3_u32 v31, 0, v31, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v22, v22
	v_and_b32_e32 v5, 15, v11
	v_and_b32_e32 v6, 15, v12
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v31, v31, v44, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v7, 15, v14
	v_and_b32_e32 v11, 15, v18
	v_and_b32_e32 v12, 15, v19
	v_and_b32_e32 v14, 15, v22
	v_med3_f32 v28, v28, s4, 0x40e00000
	v_med3_f32 v39, v39, s4, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v31, v[3:6]
	ds_store_b128 v31, v[11:14] offset:1024
	v_lshlrev_b32_e32 v3, 7, v0
	v_lshlrev_b32_e32 v4, 5, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v27, v27, s4, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v39, v39
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_and_or_b32 v3, 0x3600, v3, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v27, v27
	v_and_b32_e32 v19, 15, v28
	v_and_b32_e32 v22, 15, v39
	v_and_b32_e32 v28, 15, v42
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v32, v3, v37, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 15, v27
	v_and_b32_e32 v27, 15, v41
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	ds_load_b128 v[3:6], v32
	ds_load_b128 v[11:14], v32 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v31, v[19:22]
	ds_store_b128 v31, v[27:30] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[19:22], v32
	ds_load_b128 v[27:30], v32 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s4, 0x40e00000
	v_med3_f32 v23, v23, s4, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v40, v40, s4, 0x40e00000
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s4, s18, 7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v39, 15, v45
	v_cvt_i32_f32_e32 v40, v40
	v_and_b32_e32 v8, 15, v15
	v_and_b32_e32 v15, 15, v23
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v31, v[7:10]
	ds_store_b128 v31, v[15:18] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v32
	ds_load_b128 v[15:18], v32 offset:2048
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v3, v11, 4, v3
	v_lshl_or_b32 v11, v27, 4, v19
.Ltmp50:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v19, 4, v0
.Ltmp51:
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v28, 4, v20
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v6, v14, 4, v6
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v20, s5, v19
	v_add3_u32 v1, s8, s4, v1
	s_lshl_b32 s5, s5, 5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v23, 15, v40
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v13, v29, 4, v21
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v40, 15, v46
	v_and_b32_e32 v41, 15, v47
	v_and_b32_e32 v42, 15, v48
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v21, v1, v20
	v_add3_u32 v20, v20, s5, v1
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v6.l
	v_and_b16 v1.h, 0xff, v5.l
	.loc	1 83 18 is_stmt 1               ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v31, v[23:26]
	ds_store_b128 v31, v[39:42] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v32
	ds_load_b128 v[36:39], v32 offset:2048
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v17, 4, v9
	v_lshl_or_b32 v10, v18, 4, v10
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v4.l
	v_and_b16 v1.h, 0xff, v3.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v7, v15, 4, v7
	v_lshl_or_b32 v8, v16, 4, v8
	v_lshl_or_b32 v14, v30, 4, v22
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s5, s1, 0xffff
	v_or_b16 v3.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v10.l
	v_and_b16 v1.h, 0xff, v9.l
	s_mov_b32 s4, s0
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s17, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v1.h, 0xff, v7.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v17, v38, 4, v25
	v_lshl_or_b32 v18, v39, 4, v26
	v_lshl_or_b32 v15, v36, 4, v23
	v_lshl_or_b32 v16, v37, 4, v24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v14.l
	v_and_b16 v1.h, 0xff, v13.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s17, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[3:4], v21, s[4:7], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v12.l
	v_and_b16 v1.h, 0xff, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v3.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v1.h, 0xff, v17.l
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v1.h, 0xff, v15.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v4.l, v1.h, v1.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v1, v0, 63, s19
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[3:4], v20, s[4:7], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 2, v34
	v_lshrrev_b32_e32 v4, 2, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v1, v1, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v3, 0, v3, v4
	s_and_b32 s5, s3, 0xffff
	s_mov_b32 s4, s2
	ds_store_b32 v3, v2
	v_and_b32_e32 v2, 0x7c, v35
	v_and_b32_e32 v3, 2, v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_lshl_u32 v0, v1, s18, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v2, 0, v2, v3
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	ds_load_u16 v1, v2
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[4:7], 0 offen
.Ltmp52:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 97
		.amdhsa_next_free_sgpr 26
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 97
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 26
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8896
; TotalNumSgprs: 28
; NumVgprs: 97
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 12
; NumSGPRsForWavesPerEU: 28
; NumVGPRsForWavesPerEU: 97
; Occupancy: 12
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
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x82 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x5c DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x65:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x71:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     97
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
