	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_and_b32_e32 v39, 7, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v35, 3, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v36, 1, v0
	s_load_b64 s[20:21], s[0:1], 0x20
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_bfe_i32 v14, v0, 6, 1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v33, 1, v39
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_bfe_i32 v15, v0, 4, 1
	v_bfe_i32 v40, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v42, 0x88, v14
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_and_b32_e32 v51, 0x88, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v40, 0x88, v40
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s28, 31
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
	s_lshr_b32 s9, s9, 27
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
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
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
	s_ashr_i32 s28, s18, 31
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
	s_xor_b32 s33, s12, s28
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s30, s3, 4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s12, s33, s28
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s3, s13, s14
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s14, s12, s16
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v3, s30, v33
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s14
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s31, s3, 1
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s15
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s3, s12, 8
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s23, s2, 5
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s13, 1
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mul_lo_u32 v5, s31, v35
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s22, -1, 0
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s12, s23, s31
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s22, vcc_lo
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_and_b32_e32 v38, 1, v0
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_lshl_b32 s14, s31, 7
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v47, v5, v33, s12
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v34, 3, v38
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_mul_i32 s12, s3, s31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s12, s12, s30
	v_mad_u64_u32 v[1:2], null, s31, v36, v[34:35]
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v4, s30, v34
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v2, s30, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_gt_i32_e64 s2, s31, v4
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v46, s12, v1
	v_add3_u32 v37, s12, s14, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	s_mov_b32 s12, 0
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s22, s2
	s_cmpk_lt_i32 s13, 0x82
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_dual_cndmask_b32 v2, 0x80000000, v46 :: v_dual_cndmask_b32 v3, 0x80000000, v37
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_u16 v50, v1, s[4:7], 0 offen
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_clause 0x1
	buffer_load_b64 v[44:45], v2, s[24:27], 0 offen
	buffer_load_b64 v[48:49], v3, s[24:27], 0 offen
	v_mov_b32_e32 v1, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshlrev_b32_e32 v13, 1, v0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_lshlrev_b32_e32 v41, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v20, v1 :: v_dual_lshlrev_b32 v39, 4, v39
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v16, 0x17e, v13
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v8, v1 :: v_dual_and_b32 v43, 0x778, v41
	v_mov_b32_e32 v18, v1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v42, v42, v16
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_xor_b32_e32 v43, v51, v43
	v_mov_b32_e32 v17, v1
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v42, 0, v42
	v_mov_b32_e32 v21, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v43, 0, v43
	v_mov_b32_e32 v23, v1
	v_dual_mov_b32 v24, v1 :: v_dual_and_b32 v41, 0x700, v41
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(2)
	ds_store_b16 v42, v50 offset:4096
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v43, v[44:45], v[48:49] offset1:4
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	v_sub_nc_u32_e32 v44, s31, v34
	v_sub_nc_u32_e32 v45, s31, v33
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	s_add_i32 s0, s30, 64
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v44
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v3, 64, v37
	v_add_nc_u32_e32 v2, 64, v46
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v1, s0, v47
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e64 s0, s0, v45
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_mov_b32_e32 v9, s12
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_mov_b32_e32 v10, s13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v11, s14 :: v_dual_mov_b32 v14, s17
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_u16 v37, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_clause 0x1
	buffer_load_b64 v[66:67], v2, s[24:27], 0 offen
	buffer_load_b64 v[68:69], v3, s[24:27], 0 offen
	v_or_b32_e32 v1, v40, v39
	v_or3_b32 v3, v39, v41, v40
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v12, s15 :: v_dual_mov_b32 v13, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v15, s18 :: v_dual_add_nc_u32 v2, 0, v1
	v_xor_b32_e32 v1, 8, v1
	v_dual_mov_b32 v16, s19 :: v_dual_add_nc_u32 v47, 0, v3
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s0, s31, 63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp13:
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v46, 0x1000, v2
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v2, 8, v3
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[54:57], v47 offset1:4
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s0, s0, 6
.Ltmp15:
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[50:53], v46 offset1:32
	v_add_nc_u32_e32 v48, 0x1000, v1
	v_add_nc_u32_e32 v49, 0, v2
	ds_load_2addr_b64 v[58:61], v48 offset1:32
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[62:65], v49 offset1:4
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_max_u32 s0, s0, 2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_eq_u32 s0, 2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b16 v42, v37 offset:4096
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v43, v[66:67], v[68:69] offset1:4
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[54:55], v[50:51], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[56:57], v[50:51], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[54:55], v[52:53], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[56:57], v[52:53], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[62:63], v[58:59], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[64:65], v[58:59], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[62:63], v[60:61], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[64:65], v[60:61], v[9:16] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	v_lshl_or_b32 v36, s33, 8, v36
	s_lshl_b32 s1, s28, 8
	v_add_nc_u32_e32 v50, s23, v35
	s_add_i32 s2, s30, 0x80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_subrev_nc_u32_e32 v36, s1, v36
	s_add_i32 s1, s0, -2
	v_or_b32_e32 v37, 0x80, v36
	v_mad_u64_u32 v[35:36], null, s31, v36, v[34:35]
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[36:37], null, s31, v37, v[34:35]
	v_mad_u64_u32 v[33:34], null, s31, v50, v[33:34]
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v34, s2, v33
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v37, s2, v35
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v44
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e64 s0, s2, v45
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v50, s2, v36
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_add_i32 s1, s1, -1
	s_add_i32 s2, s2, 64
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lg_u32 s1, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_clause 0x1
	buffer_load_b64 v[66:67], v37, s[24:27], 0 offen
	buffer_load_b64 v[68:69], v50, s[24:27], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[50:53], v46 offset1:32
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[54:57], v47 offset1:4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[58:61], v48 offset1:32
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[62:65], v49 offset1:4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b16 v42, v34 offset:4096
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v43, v[66:67], v[68:69] offset1:4
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[54:55], v[50:51], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[56:57], v[50:51], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[54:55], v[52:53], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[56:57], v[52:53], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[62:63], v[58:59], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[64:65], v[58:59], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[62:63], v[60:61], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[64:65], v[60:61], v[9:16] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	v_and_b32_e32 v33, 0xfe, v0
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, s22
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_or_b32_e32 v34, v40, v39
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_or3_b32 v35, v39, v41, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v36, 0, v34
	v_xad_u32 v39, v34, 8, 0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v37, 0, v35
	v_xad_u32 v43, v35, 8, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v40, 0x1000, v36
	v_add_nc_u32_e32 v47, 0x1000, v39
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[34:37], v37 offset1:4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[39:42], v40 offset1:32
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[43:46], v43 offset1:4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[47:50], v47 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[34:35], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[36:37], v[39:40], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[34:35], v[41:42], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[36:37], v[41:42], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[47:48], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[47:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[43:44], v[49:50], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[49:50], v[9:16] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_and_or_b32 v34, v0, 15, s23
	.loc	1 169 14 is_stmt 0              ; generate_amdgcn.py:169:14
	s_and_b32 s1, s9, 0xffff
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s8
	.loc	1 168 15 is_stmt 1              ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v48, v19
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v35, 1, v34
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	v_or_b32_e32 v34, s3, v0
	s_mov_b32 s3, 0x31027000
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v39, v1
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v38
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_or_b32_e32 v36, 32, v35
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v40, v2
	v_cvt_f32_i32_e32 v41, v3
	v_cvt_f32_i32_e32 v42, v4
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_clause 0x1
	buffer_load_u16 v35, v35, s[0:3], 0 offen
	buffer_load_u16 v36, v36, s[0:3], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s1, s11, 0xffff
	s_mov_b32 s0, s10
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v44, v6
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_cndmask_b32_e64 v4, 0x840, 0, vcc_lo
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v43, v5
	v_cvt_f32_i32_e32 v45, v7
	v_cvt_f32_i32_e32 v58, v12
	v_cvt_f32_i32_e32 v47, v17
	v_cvt_f32_i32_e32 v62, v16
	v_cvt_f32_i32_e32 v46, v8
	v_cvt_f32_i32_e32 v55, v9
	v_cvt_f32_i32_e32 v56, v10
	v_cvt_f32_i32_e32 v57, v11
	v_cvt_f32_i32_e32 v59, v13
	v_cvt_f32_i32_e32 v60, v14
	v_cvt_f32_i32_e32 v61, v15
	v_cvt_f32_i32_e32 v51, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v53, v29
	v_cvt_f32_i32_e32 v54, v31
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v49, v21
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v50, v23
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v52, v27
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s4, s29, 5
	s_mul_i32 s5, s29, 6
	s_mul_i32 s6, s29, 7
	s_mul_i32 s7, s29, 9
	s_mul_i32 s8, s29, 10
	s_mul_i32 s9, s29, 11
	s_mul_i32 s10, s29, 12
	s_mul_i32 s11, s29, 13
	s_mul_i32 s12, s29, 14
	s_mul_i32 s13, s29, 15
	s_mul_i32 s14, s29, 17
	s_mul_i32 s15, s29, 18
	s_mul_i32 s16, s29, 19
	s_mul_i32 s17, s29, 20
	s_mul_i32 s18, s29, 21
	s_mul_i32 s19, s29, 22
	s_mul_i32 s24, s29, 23
	s_mul_i32 s25, s29, 24
	s_mul_i32 s26, s29, 25
	s_mul_i32 s27, s29, 26
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s2
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s28, s29, 27
	s_mul_i32 s30, s29, 28
	s_mul_i32 s31, s29, 29
	s_mul_i32 s33, s29, 30
	.loc	1 169 14 is_stmt 1              ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v35
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v37, 1, v34
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_and_b32_e32 v1, 0xf0, v0
	v_and_b32_e32 v0, 14, v0
	v_lshlrev_b32_e32 v2, 5, v38
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v3, 2, v33
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	buffer_load_u16 v37, v37, s[0:3], 0 offen
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshlrev_b32_e32 v6, 2, v1
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v5, 6, v38
	v_lshlrev_b32_e32 v7, 2, v0
	v_xor_b32_e32 v3, v4, v3
	v_lshlrev_b32_e32 v4, 3, v1
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshl_add_u32 v12, v1, 1, 0
	v_add3_u32 v1, 0, v6, v2
	.loc	1 247 23 is_stmt 1              ; generate_amdgcn.py:247:23
	v_mad_u64_u32 v[16:17], null, s23, s29, v[34:35]
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_lshl_or_b32 v2, v0, 11, v3
	v_or3_b32 v17, v4, v5, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_lshl_add_u32 v0, v0, 1, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_xad_u32 v88, v2, 8, 0
	v_xad_u32 v89, v2, 16, 0
	v_xad_u32 v90, v2, 24, 0
	v_xad_u32 v91, v2, 32, 0
	v_xad_u32 v92, v2, 40, 0
	v_xad_u32 v93, v2, 48, 0
	v_xad_u32 v94, v2, 56, 0
	v_add_nc_u32_e32 v95, 0, v17
	v_xad_u32 v96, 0x840, v17, 0
	v_xad_u32 v97, 0x1848, v17, 0
	v_xad_u32 v98, 0x2010, v17, 0
	v_xad_u32 v99, 0x2850, v17, 0
	v_xad_u32 v100, 0x3018, v17, 0
	v_xad_u32 v101, 0x3858, v17, 0
	v_xad_u32 v102, 0x4020, v17, 0
	v_xad_u32 v103, 0x4860, v17, 0
	v_xad_u32 v104, 0x5028, v17, 0
	v_xad_u32 v105, 0x5868, v17, 0
	v_xad_u32 v106, 0x6030, v17, 0
	v_xad_u32 v107, 0x6870, v17, 0
	v_xad_u32 v108, 0x7038, v17, 0
	v_xad_u32 v35, 0x7878, v17, 0
	.loc	1 247 23 is_stmt 1              ; generate_amdgcn.py:247:23
	s_mul_i32 s1, s29, 3
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v34, v16, s29, 2
	s_mov_b32 s23, s3
	v_add_lshl_u32 v38, v16, s1, 2
	v_add_lshl_u32 v63, v16, s4, 2
	v_add_lshl_u32 v64, v16, s5, 2
	v_add_lshl_u32 v65, v16, s6, 2
	v_add_lshl_u32 v66, v16, s7, 2
	v_add_lshl_u32 v67, v16, s8, 2
	v_add_lshl_u32 v68, v16, s9, 2
	v_add_lshl_u32 v69, v16, s10, 2
	v_add_lshl_u32 v70, v16, s11, 2
	v_add_lshl_u32 v71, v16, s12, 2
	v_add_lshl_u32 v72, v16, s13, 2
	v_add_lshl_u32 v73, v16, s14, 2
	v_add_lshl_u32 v74, v16, s15, 2
	v_add_lshl_u32 v75, v16, s16, 2
	v_add_lshl_u32 v76, v16, s17, 2
	v_add_lshl_u32 v77, v16, s18, 2
	v_add_lshl_u32 v78, v16, s19, 2
	v_add_lshl_u32 v79, v16, s24, 2
	v_add_lshl_u32 v80, v16, s25, 2
	v_add_lshl_u32 v81, v16, s26, 2
	v_add_lshl_u32 v82, v16, s27, 2
	v_add_lshl_u32 v83, v16, s28, 2
	v_add_lshl_u32 v84, v16, s30, 2
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s0, s29, 31
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v85, v16, s31, 2
	v_add_lshl_u32 v86, v16, s33, 2
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v37
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_xad_u32 v37, 0x1008, v17, 0
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v17, 16, v36
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_add_nc_u32_e32 v87, 0, v2
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	ds_store_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	ds_load_b128 v[8:11], v12 offset:512
	ds_load_b128 v[12:15], v12 offset:528
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v124, v6, v17
	v_mul_f32_e32 v25, v2, v19
	v_mul_f32_e32 v29, v4, v19
	v_mul_f32_e32 v122, v4, v17
	v_mul_f32_e32 v21, v0, v19
	v_mul_f32_e32 v110, v8, v19
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v4, v25, v41
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v31, v5, v19 :: v_dual_mul_f32 v126, v8, v17
	v_dual_mul_f32 v109, v7, v19 :: v_dual_mul_f32 v130, v12, v17
	v_mul_f32_e32 v119, v1, v17
	v_dual_mul_f32 v111, v9, v19 :: v_dual_mul_f32 v132, v14, v17
	v_dual_mul_f32 v118, v0, v17 :: v_dual_mul_f32 v23, v1, v19
	v_mul_f32_e32 v36, v6, v19
	v_mul_f32_e32 v113, v11, v19
	v_mul_f32_e32 v127, v9, v17
	v_dual_mul_f32 v120, v2, v17 :: v_dual_lshlrev_b32 v33, 2, v16
	v_mul_f32_e32 v27, v3, v19
	v_mul_f32_e32 v112, v10, v19
	v_dual_mul_f32 v115, v13, v19 :: v_dual_mul_f32 v128, v10, v17
	v_mul_f32_e32 v117, v15, v19
	v_dual_mul_f32 v121, v3, v17 :: v_dual_mul_f32 v8, v29, v43
	v_mul_f32_e32 v133, v15, v17
	v_dual_mul_f32 v129, v11, v17 :: v_dual_mul_f32 v114, v12, v19
	v_dual_mul_f32 v116, v14, v19 :: v_dual_mul_f32 v123, v5, v17
	v_mul_f32_e32 v125, v7, v17
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v10, v31, v44
	v_dual_mul_f32 v3, v119, v26 :: v_dual_mul_f32 v26, v130, v59
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v131, v13, v17
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v0, v21, v39
	v_mul_f32_e32 v17, v110, v47
	v_mul_f32_e32 v19, v111, v18
	v_mul_f32_e32 v1, v118, v51
	v_mul_f32_e32 v18, v126, v55
	v_mul_f32_e32 v2, v23, v40
	v_dual_mul_f32 v12, v36, v45 :: v_dual_mul_f32 v23, v113, v20
	v_mul_f32_e32 v20, v127, v56
	v_dual_mul_f32 v6, v27, v42 :: v_dual_mul_f32 v21, v112, v48
	v_mul_f32_e32 v27, v115, v22
	v_mul_f32_e32 v5, v120, v52
	v_mul_f32_e32 v22, v128, v57
	v_mul_f32_e32 v14, v109, v46
	v_mul_f32_e32 v31, v117, v24
	v_mul_f32_e32 v7, v121, v28
	v_dual_mul_f32 v24, v129, v58 :: v_dual_mul_f32 v25, v114, v49
	v_dual_mul_f32 v28, v131, v60 :: v_dual_mul_f32 v29, v116, v50
	v_mul_f32_e32 v9, v122, v53
	v_mul_f32_e32 v11, v123, v30
	v_mul_f32_e32 v13, v124, v54
	v_dual_mul_f32 v15, v125, v32 :: v_dual_mul_f32 v30, v132, v61
	v_mul_f32_e32 v32, v133, v62
	ds_store_2addr_stride64_b64 v87, v[0:1], v[17:18] offset1:2
	ds_store_2addr_stride64_b64 v88, v[2:3], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v89, v[4:5], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v90, v[6:7], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v91, v[8:9], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v92, v[10:11], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v93, v[12:13], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v94, v[14:15], v[31:32] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v95
	ds_load_b64 v[2:3], v96
	ds_load_b64 v[4:5], v37
	ds_load_b64 v[6:7], v97
	ds_load_b64 v[8:9], v98
	ds_load_b64 v[10:11], v99
	ds_load_b64 v[12:13], v100
	ds_load_b64 v[14:15], v101
	ds_load_b64 v[17:18], v102
	ds_load_b64 v[19:20], v103
	ds_load_b64 v[21:22], v104
	ds_load_b64 v[23:24], v105
	ds_load_b64 v[25:26], v106
	ds_load_b64 v[27:28], v107
	ds_load_b64 v[29:30], v108
	ds_load_b64 v[31:32], v35
	.loc	1 247 9 is_stmt 1               ; generate_amdgcn.py:247:9
	v_lshl_add_u32 v35, s29, 3, v33
	v_lshl_add_u32 v36, s29, 4, v33
	v_lshl_add_u32 v37, s29, 5, v33
	v_lshl_add_u32 v39, s29, 6, v33
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v33, s[20:23], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v2, v34, s[20:23], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v4, v35, s[20:23], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v6, v38, s[20:23], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v8, v36, s[20:23], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v10, v63, s[20:23], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v12, v64, s[20:23], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v14, v65, s[20:23], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v17, v37, s[20:23], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v19, v66, s[20:23], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v21, v67, s[20:23], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v23, v68, s[20:23], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v25, v69, s[20:23], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v27, v70, s[20:23], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v29, v71, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v31, v72, s[20:23], 0 offen
	buffer_atomic_add_f32 v1, v39, s[20:23], 0 offen
	buffer_atomic_add_f32 v3, v73, s[20:23], 0 offen
	buffer_atomic_add_f32 v5, v74, s[20:23], 0 offen
	buffer_atomic_add_f32 v7, v75, s[20:23], 0 offen
	buffer_atomic_add_f32 v9, v76, s[20:23], 0 offen
	buffer_atomic_add_f32 v11, v77, s[20:23], 0 offen
	buffer_atomic_add_f32 v13, v78, s[20:23], 0 offen
	buffer_atomic_add_f32 v15, v79, s[20:23], 0 offen
	buffer_atomic_add_f32 v18, v80, s[20:23], 0 offen
	buffer_atomic_add_f32 v20, v81, s[20:23], 0 offen
	buffer_atomic_add_f32 v22, v82, s[20:23], 0 offen
	v_add_lshl_u32 v0, v16, s0, 2
	s_clause 0x4
	buffer_atomic_add_f32 v24, v83, s[20:23], 0 offen
	buffer_atomic_add_f32 v26, v84, s[20:23], 0 offen
	buffer_atomic_add_f32 v28, v85, s[20:23], 0 offen
	buffer_atomic_add_f32 v30, v86, s[20:23], 0 offen
	buffer_atomic_add_f32 v32, v0, s[20:23], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
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
		.amdhsa_inst_pref_size 29
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.num_vgpr, 134
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3616
; TotalNumSgprs: 36
; NumVgprs: 134
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 36
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     134
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
