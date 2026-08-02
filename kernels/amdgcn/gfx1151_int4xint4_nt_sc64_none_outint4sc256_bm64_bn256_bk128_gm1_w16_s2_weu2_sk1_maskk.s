	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v13, 7, v0
	v_and_b32_e32 v12, 3, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshrrev_b32_e32 v15, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v2, 3, v12
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v5, 0x80, v4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v14, 24, v15
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s5, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s19, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s9, s19
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s7, s6, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s19, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s6, s7
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s16, s6
	s_abs_i32 s17, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v1, 2, v13
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s31, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s10
	s_mul_hi_u32 s5, s10, s16
	s_xor_b32 s16, s2, s7
	s_add_i32 s5, s10, s5
	s_ashr_i32 s16, s16, 31
	s_mul_hi_u32 s5, s17, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s5, s6
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s30, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s17, s17, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s17, s6
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s18, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s17, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s18, s5, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s17
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s18, s16
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s6, s3, 5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s17, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s7, s33, s7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v8, s6, v1
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[6:7], null, s17, v3, v[1:2]
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s7
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v9, s6, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mul_lo_u32 v7, s17, v4
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s19
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s20, s3
.Ltmp19:
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mul_lo_u32 v10, s17, v5
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s48, s33, 8
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s17, v8
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 32, v8
	.loc	1 126 14 is_stmt 1              ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 6
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s7, s21, 6
.Ltmp21:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s17, v9
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 32, v9
	.loc	1 218 34 is_stmt 1              ; generate_amdgcn.py:218:34
	s_mul_i32 s19, s48, s17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s21, s34, s17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_add_i32 s19, s19, s6
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v6, s6, s21, v6
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s22, s3, vcc_lo
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v7, v7, v2, s19
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v8, v10, v2, s19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s22
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v11, v6, s[8:11], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[6:7], v7, s[28:31], 0 offen
	buffer_load_b64 v[16:17], v8, s[28:31], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshlrev_b32_e32 v9, 2, v0
	v_and_b32_e32 v8, 24, v4
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshlrev_b32_e32 v10, 3, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0x7f
	s_mov_b32 s5, -1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v8, v9, v8
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xor_b32_e32 v10, v10, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v53, 0, v8
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v54, 0, v10
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v10, 0x100, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(2)
	ds_store_b32 v53, v11 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v54, v[6:7], v[16:17] offset1:8
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
.LBB0_3:                                ; %Flow190
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b128 s[24:27], s[0:1], 0x20
	v_dual_mov_b32 v32, 0 :: v_dual_and_b32 v11, 15, v0
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v14, 0xe0, v0
	v_lshrrev_b32_e32 v52, 4, v10
	v_bfe_u32 v48, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v38, 0 :: v_dual_lshlrev_b32 v49, 5, v11
	v_dual_mov_b32 v37, 0 :: v_dual_lshlrev_b32 v50, 1, v0
	v_dual_mov_b32 v40, 0 :: v_dual_lshlrev_b32 v51, 4, v14
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v47, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s0, s7, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v22, s18, 9, v14
	s_lshl_b32 s1, s18, 8
	s_lshl_b32 s18, s16, 9
	v_or_b32_e32 v4, s1, v4
	v_or_b32_e32 v5, s1, v5
	s_lshl_b32 s1, s16, 8
	s_mov_b32 s16, 0
	v_subrev_nc_u32_e32 v58, s18, v22
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v6, 24, v50
	v_subrev_nc_u32_e32 v4, s1, v4
	v_subrev_nc_u32_e32 v5, s1, v5
	v_and_or_b32 v7, 0x218, v50, v49
	v_sub_nc_u32_e32 v55, s17, v1
	v_or3_b32 v8, v51, v6, v49
	v_add3_u32 v6, s34, v52, v11
	v_sub_nc_u32_e32 v56, s17, v2
	v_xor_b32_e32 v16, 8, v7
	v_xor_b32_e32 v17, 16, v7
	v_xor_b32_e32 v18, 24, v7
	v_add_nc_u32_e32 v23, 32, v6
	v_mul_lo_u32 v24, s7, v6
	v_add_nc_u32_e32 v6, s34, v3
	v_mad_u64_u32 v[3:4], null, s17, v4, s[6:7]
	v_mad_u64_u32 v[4:5], null, s17, v5, s[6:7]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[5:6], null, s17, v6, s[6:7]
	s_mov_b32 s17, s16
	v_xor_b32_e32 v19, 8, v8
	v_xor_b32_e32 v20, 16, v8
	v_xor_b32_e32 v21, 24, v8
	v_lshlrev_b32_e32 v60, 1, v24
	v_add3_u32 v61, v3, v2, 32
	v_add3_u32 v62, v4, v2, 32
	v_add3_u32 v63, v5, v1, 32
	v_add_nc_u32_e32 v64, 0, v7
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v68, 0, v8
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_mul_lo_u32 v23, s7, v23
	v_dual_mov_b32 v36, 0 :: v_dual_lshlrev_b32 v57, 1, v48
	v_dual_mov_b32 v6, s21 :: v_dual_add_nc_u32 v65, 0, v16
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v66, 0, v17
	v_dual_mov_b32 v8, s23 :: v_dual_add_nc_u32 v67, 0, v18
	v_dual_mov_b32 v4, s19 :: v_dual_lshlrev_b32 v59, 1, v23
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v69, 0, v19
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v70, 0, v20
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v71, 0, v21
	v_mov_b32_e32 v3, s18
	v_mov_b32_e32 v5, s20
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_mov_b32_e32 v29, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v32, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_max_i32 s5, s0, 1
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s1, s35, 1
	s_lshl_b32 s5, s5, 5
	s_add_i32 s6, s6, 32
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v116, v60, s[44:47], 0 offen
	buffer_load_u16 v117, v59, s[44:47], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_add_i32 s12, s6, s16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v72, s16, v63
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s12, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v60, 2, v60
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s12, v56
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v72, v72, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[87:90], v64 offset0:16 offset1:18
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[106:109], v68 offset1:8
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[106:107], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[108:109], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[106:107], v[89:90], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[108:109], v[89:90], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[108:111], v65 offset0:16 offset1:18
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[112:115], v69 offset1:8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[112:113], v[108:109], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[114:115], v[108:109], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[112:113], v[110:111], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[114:115], v[110:111], v[100:107] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[108:111], v66 offset0:16 offset1:18
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[112:115], v70 offset1:8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[112:113], v[108:109], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[114:115], v[108:109], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[112:113], v[110:111], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[114:115], v[110:111], v[100:107] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[108:111], v67 offset0:16 offset1:18
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[112:115], v71 offset1:8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[112:113], v[110:111], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[114:115], v[108:109], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[114:115], v[110:111], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[112:113], v[108:109], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v110, v85
	v_cvt_f32_i32_e32 v111, v86
	v_cvt_f32_i32_e32 v85, v93
	v_cvt_f32_i32_e32 v86, v94
	v_cvt_f32_i32_e32 v93, v96
	v_cvt_f32_i32_e32 v113, v88
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v112, v87
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v108, v83
	v_cvt_f32_i32_e32 v83, v79
	v_cvt_f32_i32_e32 v79, v100
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v100, v106
	v_cvt_f32_i32_e32 v89, v92
	v_cvt_f32_i32_e32 v92, v99
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v109, v84
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v84, v80
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v90, v97
	v_cvt_f32_i32_e32 v91, v98
	v_cvt_f32_i32_e32 v80, v105
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v96, 16, v117
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v94, v57, v58
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v58, s1, v58
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v95, v94, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v87, 16, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v73, v87, v73
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v28, v73, v95 :: v_dual_mul_f32 v73, v96, v81
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v92, v87, v92
	v_mul_f32_e32 v84, v87, v84
	v_mul_f32_e32 v89, v87, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v90, v87, v90 :: v_dual_fmac_f32 v33, v73, v95
	v_mul_f32_e32 v73, v87, v74
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v74, v94, s[40:43], 0 offen offset:4
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v81, v96, v112
	v_mul_f32_e32 v91, v87, v91
	v_mul_f32_e32 v88, v87, v88
	v_mul_f32_e32 v93, v87, v93
	v_mul_f32_e32 v86, v87, v86
	v_mul_f32_e32 v85, v87, v85
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v83, v87, v83 :: v_dual_lshlrev_b32 v74, 16, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v29, v73, v74
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v73, v96, v82
	v_mul_f32_e32 v82, v96, v101
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v34, v73, v74
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v74, v94, s[40:43], 0 offen offset:8
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v73, v87, v75
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v75, v96, v105 :: v_dual_lshlrev_b32 v74, 16, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v31, v73, v74
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v73, v96, v108
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v40, v73, v74
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v74, v94, s[40:43], 0 offen offset:12
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v73, v87, v76 :: v_dual_mul_f32 v76, v96, v79
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v79, v96, v113 :: v_dual_lshlrev_b32 v74, 16, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v30, v73, v74 :: v_dual_mul_f32 v73, v96, v109
	v_fmac_f32_e32 v35, v73, v74
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v74, v94, s[40:43], 0 offen offset:16
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v73, v87, v77
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v77, v96, v104 :: v_dual_lshlrev_b32 v74, 16, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v24, v73, v74
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v73, v96, v110
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v37, v73, v74
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v74, v94, s[40:43], 0 offen offset:20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v73, v87, v78
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v87, v94, s[40:43], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v78, v96, v103
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v74, 16, v74
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v87, 16, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v25, v73, v74
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v73, v96, v111
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v27, v84, v87
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v84, v94, s[40:43], 0 offen offset:260
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v32, v79, v87
	v_dual_fmac_f32 v38, v73, v74 :: v_dual_add_nc_u32 v73, s16, v61
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v74, s16, v62
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s16, s16, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_cmp_lg_u32 s5, s16
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e32 v95, 0x80000000, v73, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v97, 0x80000000, v74, vcc_lo
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v73, v96, v80
	v_mul_f32_e32 v74, v96, v100
	v_mul_f32_e32 v80, v96, v102
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v96, v94, s[40:43], 0 offen offset:24
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v96, 16, v96
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v26, v83, v96
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v83, v94, s[40:43], 0 offen offset:256
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v98, 16, v83
	buffer_load_u16 v83, v94, s[40:43], 0 offen offset:264
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v36, v89, v98 :: v_dual_lshlrev_b32 v89, 16, v84
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v84, v94, s[40:43], 0 offen offset:268
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v44, v76, v98 :: v_dual_lshlrev_b32 v99, 16, v83
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v83, v94, s[40:43], 0 offen offset:272
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v21, v80, v99 :: v_dual_lshlrev_b32 v100, 16, v84
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v84, v94, s[40:43], 0 offen offset:276
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v18, v88, v100
	v_fmac_f32_e32 v22, v78, v100
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v88, 16, v83
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v16, v85, v89
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v19, v93, v88
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v85, v94, s[40:43], 0 offen offset:280
	buffer_load_u16 v93, v94, s[40:43], 0 offen offset:284
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v17, v86, v99 :: v_dual_lshlrev_b32 v94, 16, v84
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	buffer_load_b64 v[83:84], v95, s[28:31], 0 offen
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v23, v77, v88
	v_fmac_f32_e32 v47, v90, v94
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v43, v73, v94 :: v_dual_lshlrev_b32 v90, 16, v85
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	buffer_load_b64 v[85:86], v97, s[28:31], 0 offen
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v39, v81, v96
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v46, v91, v90 :: v_dual_lshlrev_b32 v91, 16, v93
	v_dual_fmac_f32 v20, v82, v89 :: v_dual_add_nc_u32 v59, 2, v59
	v_fmac_f32_e32 v42, v74, v90
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_store_b32 v53, v72 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v54, v[83:84], v[85:86] offset1:8
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v45, v92, v91
	v_fmac_f32_e32 v41, v75, v91
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow191
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v2, v52, v11
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_mul_i32 s1, s34, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s0, 0
	v_dual_mov_b32 v76, 0 :: v_dual_and_b32 v1, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v3, 32, v2
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s7, v2
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_mul_lo_u32 v3, s7, v3
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v58, 0
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s1, v2, 1
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_add_lshl_u32 v3, s1, v3, 1
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v6, 0
	s_clause 0x1
	buffer_load_u16 v2, v2, s[36:39], 0 offen
	buffer_load_u16 v79, v3, s[36:39], 0 offen
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v72, 0
	s_mov_b32 s4, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v3, 24, v50
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_or_b32 v7, 0x218, v50, v49
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v87, s11 :: v_dual_mov_b32 v80, s4
	v_mov_b32_e32 v86, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_or3_b32 v8, v51, v3, v49
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v84, s8 :: v_dual_add_nc_u32 v3, 0, v7
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v50, v7, 8, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v82, s6 :: v_dual_add_nc_u32 v49, 0, v8
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[3:6], v3 offset0:16 offset1:18
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[57:60], v49 offset1:8
	v_xad_u32 v49, v8, 8, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v51, v7, 16, 0
	ds_load_2addr_stride64_b64 v[61:64], v50 offset0:16 offset1:18
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[74:77], v49 offset1:8
	v_xad_u32 v52, v8, 16, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v7, v7, 24, 0
	ds_load_2addr_stride64_b64 v[96:99], v51 offset0:16 offset1:18
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[100:103], v52 offset1:8
	v_xad_u32 v8, v8, 24, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v85, s9
	v_mov_b32_e32 v83, s7
	v_mov_b32_e32 v81, s5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[104:107], v7 offset0:16 offset1:18
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[108:111], v8 offset1:8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[3:4], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[66:73], v[59:60], v[3:4], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[57:58], v[5:6], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[59:60], v[5:6], v[80:87] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[74:75], v[61:62], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[66:73], v[76:77], v[61:62], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[74:75], v[63:64], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[76:77], v[63:64], v[80:87] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[100:101], v[96:97], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[66:73], v[102:103], v[96:97], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[100:101], v[98:99], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[102:103], v[98:99], v[80:87] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[108:109], v[104:105], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[66:73], v[110:111], v[104:105], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[108:109], v[106:107], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[110:111], v[106:107], v[80:87] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v62, v49
	v_cvt_f32_i32_e32 v63, v50
	v_cvt_f32_i32_e32 v64, v51
	v_cvt_f32_i32_e32 v65, v52
	v_cvt_f32_i32_e32 v58, v53
	v_cvt_f32_i32_e32 v59, v54
	v_cvt_f32_i32_e32 v60, v55
	v_cvt_f32_i32_e32 v61, v56
	v_cvt_f32_i32_e32 v75, v66
	v_cvt_f32_i32_e32 v6, v67
	v_cvt_f32_i32_e32 v52, v68
	v_cvt_f32_i32_e32 v53, v69
	v_cvt_f32_i32_e32 v54, v70
	v_cvt_f32_i32_e32 v76, v71
	v_cvt_f32_i32_e32 v77, v72
	v_cvt_f32_i32_e32 v78, v73
	v_cvt_f32_i32_e32 v66, v88
	v_cvt_f32_i32_e32 v67, v89
	v_cvt_f32_i32_e32 v70, v90
	v_cvt_f32_i32_e32 v68, v91
	v_cvt_f32_i32_e32 v69, v92
	v_cvt_f32_i32_e32 v71, v93
	v_cvt_f32_i32_e32 v72, v94
	v_cvt_f32_i32_e32 v73, v95
	v_cvt_f32_i32_e32 v3, v80
	v_cvt_f32_i32_e32 v8, v81
	v_cvt_f32_i32_e32 v55, v82
	v_cvt_f32_i32_e32 v56, v83
	v_cvt_f32_i32_e32 v57, v84
	v_cvt_f32_i32_e32 v4, v85
	v_cvt_f32_i32_e32 v5, v86
	v_cvt_f32_i32_e32 v74, v87
.LBB0_8:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v7, 1, v14
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s35
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v49.h, v2.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s48, s48, s0
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s5, s15, 0xffff
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v48, v48, v7
.Ltmp22:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v7.l, 0
.Ltmp23:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v7.h, v79.l
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v48, s48, v48, 1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v49.l, v7.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s4, s14
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v2, 0x1f0, v0
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v76, v76, v49 :: v_dual_add_nc_u32 v51, 4, v48
	v_dual_mul_f32 v78, v78, v49 :: v_dual_add_nc_u32 v79, 8, v48
	v_dual_mul_f32 v77, v77, v49 :: v_dual_add_nc_u32 v80, 12, v48
	v_dual_mul_f32 v4, v4, v7 :: v_dual_add_nc_u32 v81, 16, v48
	v_dual_mul_f32 v3, v3, v7 :: v_dual_add_nc_u32 v82, 20, v48
	v_dual_mul_f32 v74, v74, v7 :: v_dual_add_nc_u32 v83, 24, v48
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v50, 0x80000000, v48, s2
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	v_cndmask_b32_e64 v83, 0x80000000, v83, s2
	s_clause 0x6
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v5, v5, v7 :: v_dual_add_nc_u32 v84, 28, v48
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v85, 0x100, v48
	v_add_nc_u32_e32 v86, 0x104, v48
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v72, v72, v7 :: v_dual_add_nc_u32 v87, 0x108, v48
	v_dual_mul_f32 v71, v71, v7 :: v_dual_add_nc_u32 v88, 0x10c, v48
	v_dual_mul_f32 v68, v68, v7 :: v_dual_add_nc_u32 v89, 0x110, v48
	v_dual_mul_f32 v69, v69, v7 :: v_dual_add_nc_u32 v90, 0x114, v48
	v_dual_mul_f32 v66, v66, v7 :: v_dual_add_nc_u32 v91, 0x118, v48
	v_dual_mul_f32 v67, v67, v7 :: v_dual_add_nc_u32 v48, 0x11c, v48
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v84, 0x80000000, v84, s2
	v_cndmask_b32_e64 v85, 0x80000000, v85, s2
	v_cndmask_b32_e64 v86, 0x80000000, v86, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	s_clause 0x3
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	buffer_load_u16 v85, v85, s[4:7], 0 offen
	buffer_load_u16 v86, v86, s[4:7], 0 offen
	buffer_load_u16 v48, v48, s[4:7], 0 offen
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	s_clause 0x4
	buffer_load_u16 v87, v87, s[4:7], 0 offen
	buffer_load_u16 v88, v88, s[4:7], 0 offen
	buffer_load_u16 v89, v89, s[4:7], 0 offen
	buffer_load_u16 v90, v90, s[4:7], 0 offen
	buffer_load_u16 v91, v91, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v75, v75, v49
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp25:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 7, v1
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s1, s35, 31
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s5, s25, 0xffff
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s1, s35, s1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_mov_b32 s4, s24
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s1, s1, 1
.Ltmp26:
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v55, v55, v7
	v_mul_f32_e32 v63, v63, v49
	v_mul_f32_e32 v62, v62, v49
	v_mul_f32_e32 v6, v6, v49
	v_mul_f32_e32 v8, v8, v7
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v15, 0xf0, v15
.Ltmp28:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v66, v66, v50, v33
	v_fma_f32 v50, v62, v50, v28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v33, v66, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v85, 16, v85
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v48, 16, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v75, v75, v85, v36
	v_fma_f32 v3, v3, v85, v44
	v_fma_f32 v74, v74, v48, v41
	v_fma_f32 v78, v78, v48, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v48, v36, v75, s2
	v_cndmask_b32_e64 v36, v44, v3, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v3, v41, v74, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v41, 16, v79
	v_lshlrev_b32_e32 v44, 16, v51
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v51, v70, v7 :: v_dual_lshlrev_b32 v90, 16, v90
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v91, 16, v91
	v_lshlrev_b32_e32 v74, 16, v83
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v67, v67, v44, v34
	v_fma_f32 v51, v51, v41, v40
	v_fma_f32 v44, v63, v44, v29
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v70, v73, v7 :: v_dual_lshlrev_b32 v75, 16, v82
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v45, v78, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v40, v40, v51, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v51, v64, v49
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v90, v43
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v64, v65, v49
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v85, v5, v91, v42
	v_fma_f32 v76, v76, v90, v47
	v_fma_f32 v41, v51, v41, v31
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v43, v4, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v43, 16, v84
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v42, v85, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v42, 16, v80
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v31, v41, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v41, v59, v49
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v47, v47, v76, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v51, v56, v7 :: v_dual_lshlrev_b32 v76, 16, v81
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v68, v68, v42, v35
	v_fma_f32 v42, v64, v42, v30
	v_fma_f32 v77, v77, v91, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v69, v69, v76, v37
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v67, s2
	v_cndmask_b32_e64 v35, v35, v68, s2
	v_cndmask_b32_e64 v30, v30, v42, s2
	v_cndmask_b32_e64 v42, v29, v44, s2
	v_cndmask_b32_e64 v44, v28, v50, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v28, v61, v49
	v_mul_f32_e32 v29, v60, v49
	v_mul_f32_e32 v50, v58, v49
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v41, v41, v75, v25
	v_fma_f32 v70, v70, v43, v32
	v_fma_f32 v28, v28, v43, v27
	v_fma_f32 v29, v29, v74, v26
	v_fma_f32 v50, v50, v76, v24
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v25, v41, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v41, 16, v88
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v27, v28, s2
	v_cndmask_b32_e64 v26, v26, v29, s2
	v_cndmask_b32_e64 v28, v24, v50, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v29, 16, v89
	v_lshlrev_b32_e32 v50, 16, v86
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v24, v57, v7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v43, 16, v87
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v46, v77, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v71, v71, v75, v38
	v_fma_f32 v56, v8, v50, v20
	v_fma_f32 v8, v24, v29, v23
	v_fma_f32 v55, v55, v43, v21
	v_fma_f32 v72, v72, v74, v39
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v38, v38, v71, s2
	v_cndmask_b32_e64 v24, v20, v56, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v20, v54, v49
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v51, v51, v41, v22
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v23, v8, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v23, v53, v49
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v37, v69, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v20, v20, v29, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v22, v51, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v51, v52, v49
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v50, v16
	v_fma_f32 v23, v23, v41, v18
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v29, v19, v20, s2
	v_cndmask_b32_e64 v21, v21, v55, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v43, v51, v43, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v49, v16, v6, s2
	v_cndmask_b32_e64 v41, v18, v23, s2
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v6, |v44|, |v44|
	v_max_f32_e64 v16, |v42|, |v42|
.Ltmp30:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v43, v17, v43, s2
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v19, |v29|, |v47|, |v46|
	v_max3_f32 v17, |v26|, |v27|, |v48|
.Ltmp32:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v32, v70, s2
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v16
	v_max3_f32 v16, |v30|, |v28|, |v25|
	v_max3_f32 v18, |v49|, |v43|, |v41|
.Ltmp34:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v39, v72, s2
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v20, |v8|, |v5|, |v4|
.Ltmp36:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s34, s1
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v6, v6, |v31|, v16
	v_max3_f32 v16, v18, v19, |v45|
	v_max3_f32 v19, |v24|, |v21|, |v22|
	v_max3_f32 v18, |v39|, |v32|, |v36|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v6, v6, v17, v16
	v_max_f32_e64 v16, |v33|, |v33|
	v_max_f32_e64 v17, |v34|, |v34|
	v_max_f32_e32 v16, v16, v17
	v_max3_f32 v17, |v35|, |v37|, |v38|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v16, v16, |v40|, v17
	v_max3_f32 v17, v19, v20, |v3|
	v_max3_f32 v17, v16, v18, v17
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v16, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v18, 8, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	v_max_f32_e32 v16, v6, v16
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v6, v17, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v17, v17, v6 :: v_dual_lshlrev_b32 v6, 4, v13
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v13, v13, 8, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v19, v6, v15
	v_lshl_or_b32 v6, v14, 3, v6
	v_add3_u32 v13, v13, v19, v18
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v6, v6, v15
	ds_store_b64 v13, v[16:17]
	v_add3_u32 v6, 0, v18, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[15:16], v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v6, v15
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v13, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v6, v13, v6
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v13, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v6, v6, v13
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v13, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v15, v6, v13 :: v_dual_mov_b32 v6, v16
	v_max_f32_e32 v13, v16, v16
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v6, v13, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v13, v6
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v13, v13, v13
	v_max_f32_e32 v6, v6, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v13, v6
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v13, v13, v13
	v_max_f32_e32 v16, v6, v13
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v6, 2, v14
	v_lshrrev_b32_e32 v13, 1, v10
	v_lshl_add_u32 v14, v18, 3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v14, v6, v13
	ds_store_b64 v6, v[15:16]
	v_lshlrev_b32_e32 v6, 3, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v13, 0, v6, v13
	ds_load_b64 v[13:14], v13
.Ltmp57:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v13, 0x2b8cbccc, v13 :: v_dual_max_f32 v14, 0x2b8cbccc, v14
	v_div_scale_f32 v15, null, 0x40e00000, 0x40e00000, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v15
	v_fma_f32 v17, -v15, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v13, 0x40e00000, v13
	v_mul_f32_e32 v18, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v15, v18, v17
	v_fmac_f32_e32 v18, v19, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v18, v17
	v_div_fmas_f32 v15, v15, v16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v13, v15, 0x40e00000, v13
	v_div_scale_f32 v15, null, 0x40e00000, 0x40e00000, v14
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v15, v16, 1.0
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v14, 0x40e00000, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v18, v17, v16
	v_fma_f32 v19, -v15, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v16
	v_fma_f32 v15, -v15, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v15, v15, v16, v18
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v16.l, v13.h
	v_mov_b16_e32 v16.h, v7.l
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v14, v15, 0x40e00000, v14
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v15.h, v7.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v15.l, v14.h
	v_and_b32_e32 v7, 1, v15
	v_and_b32_e32 v15, 1, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v14, v7, 0x7fff
	v_add3_u32 v13, v13, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v7.h, v14.h
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v50, 0xffff0000, v13
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v7.l, v13.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v13, 0xffff0000, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v14, null, v50, v50, v44
	v_rcp_f32_e32 v15, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v14, v15, 1.0
	v_fmac_f32_e32 v15, v16, v15
	v_div_scale_f32 v16, vcc_lo, v44, v50, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v17, v16, v15
	v_fma_f32 v18, -v14, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v15
	v_fma_f32 v14, -v14, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v14, v14, v15, v17
	v_div_scale_f32 v15, null, v50, v50, v42
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v15, v16, 1.0
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v42, v50, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v18, v17, v16
	v_fma_f32 v19, -v15, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v16
	v_fma_f32 v15, -v15, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v15, v15, v16, v18
	v_div_scale_f32 v16, null, v50, v50, v31
	v_rcp_f32_e32 v17, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v16, v17, 1.0
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v31, v50, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v19, v18, v17
	v_fma_f32 v20, -v16, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v17
	v_fma_f32 v16, -v16, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v16, v16, v17, v19
	v_div_scale_f32 v17, null, v50, v50, v30
	v_rcp_f32_e32 v18, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v17, v18, 1.0
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v30, v50, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v20, v19, v18
	v_fma_f32 v23, -v17, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v23, v18
	v_fma_f32 v17, -v17, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v17, v17, v18, v20
	v_div_scale_f32 v18, null, v50, v50, v28
	v_div_fixup_f32 v17, v17, v50, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v18
	v_fma_f32 v20, -v18, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v28, v50, v28
	v_mul_f32_e32 v23, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v18, v23, v20
	v_fmac_f32_e32 v23, v30, v19
	v_div_fixup_f32 v16, v16, v50, v31
	v_div_fixup_f32 v15, v15, v50, v42
	v_div_fixup_f32 v14, v14, v50, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v23, v20
	v_div_fmas_f32 v18, v18, v19, v23
	v_div_scale_f32 v19, null, v50, v50, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v18, v18, v50, v28
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v23, v20
	v_div_scale_f32 v23, vcc_lo, v25, v50, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v23, v20
	v_fma_f32 v30, -v19, v28, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v30, v20
	v_fma_f32 v19, -v19, v28, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v20, v28
	v_div_scale_f32 v20, null, v50, v50, v26
	v_div_fixup_f32 v19, v19, v50, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v20
	v_fma_f32 v25, -v20, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v25, v23
	v_div_scale_f32 v25, vcc_lo, v26, v50, v26
	v_mul_f32_e32 v28, v25, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v20, v28, v25
	v_fmac_f32_e32 v28, v30, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v28, v25
	v_div_fmas_f32 v20, v20, v23, v28
	v_div_scale_f32 v23, null, v50, v50, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v20, v20, v50, v26
	v_rcp_f32_e32 v25, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v23, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v27, v50, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v26, v25
	v_fma_f32 v30, -v23, v28, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v30, v25
	v_fma_f32 v23, -v23, v28, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v25, v28
	v_div_scale_f32 v25, null, v50, v50, v48
	v_div_fixup_f32 v23, v23, v50, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v48, v50, v48
	v_mul_f32_e32 v28, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v28, v27
	v_fmac_f32_e32 v28, v30, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v28, v27
	v_div_fmas_f32 v25, v25, v26, v28
	v_div_scale_f32 v26, null, v50, v50, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v25, v25, v50, v48
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v49, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v30, v28, v27
	v_fma_f32 v31, -v26, v30, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v27
	v_fma_f32 v26, -v26, v30, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v26, v27, v30
	v_div_scale_f32 v27, null, v50, v50, v43
	v_div_fixup_f32 v26, v26, v50, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v27
	v_fma_f32 v30, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v30, v28
	v_div_scale_f32 v30, vcc_lo, v43, v50, v43
	v_mul_f32_e32 v31, v30, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v27, v31, v30
	v_fmac_f32_e32 v31, v42, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v31, v30
	v_div_fmas_f32 v27, v27, v28, v31
	v_div_scale_f32 v28, null, v50, v50, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v27, v27, v50, v43
	v_rcp_f32_e32 v30, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v28, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v41, v50, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v31, v30
	v_fma_f32 v43, -v28, v42, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v30
	v_fma_f32 v28, -v28, v42, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v28, v28, v30, v42
	v_div_scale_f32 v30, null, v50, v50, v29
	v_div_fixup_f32 v28, v28, v50, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v30
	v_fma_f32 v41, -v30, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v41, v31
	v_div_scale_f32 v41, vcc_lo, v29, v50, v29
	v_mul_f32_e32 v42, v41, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v30, v42, v41
	v_fmac_f32_e32 v42, v43, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v30, v42, v41
	v_div_fmas_f32 v30, v30, v31, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v29, v30, v50, v29
	v_div_scale_f32 v30, null, v50, v50, v47
	v_rcp_f32_e32 v31, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v30, v31, 1.0
	v_fmac_f32_e32 v31, v41, v31
	v_div_scale_f32 v41, vcc_lo, v47, v50, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v31
	v_fma_f32 v43, -v30, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v31
	v_fma_f32 v30, -v30, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v30, v31, v42
	v_div_scale_f32 v31, null, v50, v50, v46
	v_div_fixup_f32 v30, v30, v50, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v31
	v_fma_f32 v42, -v31, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v46, v50, v46
	v_mul_f32_e32 v43, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v31, v43, v42
	v_fmac_f32_e32 v43, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v43, v42
	v_div_fmas_f32 v31, v31, v41, v43
	v_div_scale_f32 v41, null, v50, v50, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v31, v31, v50, v46
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v45, v50, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v46, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v46, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_scale_f32 v42, null, v13, v13, v33
	v_div_fixup_f32 v41, v41, v50, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v33, v13, v33
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v33, v42, v13, v33
	v_div_scale_f32 v42, null, v13, v13, v34
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v34, v13, v34
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v34, v42, v13, v34
	v_div_scale_f32 v42, null, v13, v13, v40
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v40, v13, v40
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v40, v42, v13, v40
	v_div_scale_f32 v42, null, v13, v13, v35
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v40, v40, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v40, v40
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v35, v13, v35
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v35, v42, v13, v35
	v_div_scale_f32 v42, null, v13, v13, v37
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v37, v13, v37
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v37, v42, v13, v37
	v_div_scale_f32 v42, null, v13, v13, v38
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v37, v37, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v37, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v38, v13, v38
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v38, v42, v13, v38
	v_div_scale_f32 v42, null, v13, v13, v39
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v38, v38, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v38, v38
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v39, v13, v39
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v39, v42, v13, v39
	v_div_scale_f32 v42, null, v13, v13, v32
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v39, v39, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v39, v39
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v32, v13, v32
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v32, v42, v13, v32
	v_div_scale_f32 v42, null, v13, v13, v36
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v36, v13, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v36, v42, v13, v36
	v_div_scale_f32 v42, null, v13, v13, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v36, v36
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v24, v13, v24
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v42, v13, v24
	v_div_scale_f32 v42, null, v13, v13, v21
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v21, v13, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v21, v42, v13, v21
	v_div_scale_f32 v42, null, v13, v13, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v22, v13, v22
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v22, v42, v13, v22
	v_div_scale_f32 v42, null, v13, v13, v8
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v8, v13, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v8, v42, v13, v8
	v_div_scale_f32 v42, null, v13, v13, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v5, v13, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v5, v42, v13, v5
	v_div_scale_f32 v42, null, v13, v13, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v4, v13, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v4, v42, v13, v4
	v_div_scale_f32 v42, null, v13, v13, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v3, v13, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v44, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v42, v42, v43, v45
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v43, v24
	v_cvt_i32_f32_e32 v45, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v3, v42, v13, v3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v14
	v_rndne_f32_e32 v14, v15
	v_rndne_f32_e32 v15, v16
	v_rndne_f32_e32 v16, v17
	v_rndne_f32_e32 v3, v3
	v_rndne_f32_e32 v17, v18
	v_rndne_f32_e32 v18, v19
	v_rndne_f32_e32 v19, v20
	v_rndne_f32_e32 v20, v23
	v_rndne_f32_e32 v23, v25
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v26, v27
	v_rndne_f32_e32 v27, v28
	v_rndne_f32_e32 v28, v29
	v_rndne_f32_e32 v29, v30
	v_rndne_f32_e32 v30, v31
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_cvt_i32_f32_e32 v3, v3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v31, v41
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v41, v32
	v_cvt_i32_f32_e32 v42, v36
	v_and_b32_e32 v32, 15, v35
	v_and_b32_e32 v35, 15, v39
	v_and_b32_e32 v39, 15, v44
	v_and_b32_e32 v44, 15, v3
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v21, 15, v23
	v_and_b32_e32 v23, 15, v26
	v_and_b32_e32 v24, 15, v27
	v_and_b32_e32 v26, 15, v29
	v_and_b32_e32 v27, 15, v30
	v_and_b32_e32 v29, 15, v33
	v_and_b32_e32 v30, 15, v34
	v_and_b32_e32 v33, 15, v37
	v_and_b32_e32 v34, 15, v38
	v_and_b32_e32 v37, 15, v42
	v_and_b32_e32 v38, 15, v43
	v_and_b32_e32 v42, 15, v5
	v_and_b32_e32 v43, 15, v4
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v3, 0x3000, v3
	v_lshlrev_b32_e32 v4, 4, v11
	v_and_b32_e32 v5, 0x160, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v36, 15, v41
	v_and_b32_e32 v41, 15, v8
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v8, 0x200, v9
	v_add3_u32 v1, 0, v3, v1
	v_xor_b32_e32 v4, v4, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v5, v1, v8, v4
	v_lshlrev_b32_e32 v1, 7, v0
	v_lshlrev_b32_e32 v3, 5, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v1, 0x3600, v1, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v25, v25
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_and_b32_e32 v13, 15, v13
	v_and_b32_e32 v14, 15, v14
	v_and_b32_e32 v15, 15, v15
	v_and_b32_e32 v16, 15, v16
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v8, v1, v2, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v22, 15, v25
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v31, v31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v5, v[13:16]
	ds_store_b128 v5, v[21:24] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v8
	ds_load_b128 v[12:15], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v17, 15, v17
	v_and_b32_e32 v18, 15, v18
	v_and_b32_e32 v19, 15, v19
	v_and_b32_e32 v20, 15, v20
	v_and_b32_e32 v25, 15, v28
	v_and_b32_e32 v28, 15, v31
	v_and_b32_e32 v31, 15, v40
	v_and_b32_e32 v40, 15, v45
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v5, v[29:32]
	ds_store_b128 v5, v[37:40] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v8
	ds_load_b128 v[29:32], v8 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v5, v[17:20]
	ds_store_b128 v5, v[25:28] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v8
	ds_load_b128 v[25:28], v8 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v5, v[33:36]
	ds_store_b128 v5, v[41:44] offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v12, 4, v1
	v_lshl_or_b32 v3, v14, 4, v3
	v_lshl_or_b32 v1, v15, 4, v4
	v_lshl_or_b32 v2, v13, 4, v2
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v3.l
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_load_b128 v[33:36], v8
	ds_load_b128 v[37:40], v8 offset:2048
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s33, 7
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v15, v30, 4, v22
.Ltmp58:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v22, 4, v0
.Ltmp59:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v2.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v2.l
	v_and_b16 v1.h, 0xff, v5.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v6, s2, s0, v6
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v12, v27, 4, v18
	v_lshl_or_b32 v13, v28, 4, v19
	v_lshl_or_b32 v4, v25, 4, v16
	v_lshl_or_b32 v8, v26, 4, v17
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v2.l, v1.h, v1.l
	v_and_b16 v1.h, 0xff, v12.l
	v_lshlrev_b16 v1.l, 8, v13.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v16, v31, 4, v23
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v23, s1, v22
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v17, v32, 4, v24
	v_lshl_or_b32 v14, v29, 4, v21
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v1.h, 0xff, v4.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v20, v39, 4, v35
	v_lshl_or_b32 v21, v40, 4, v36
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v24, v6, v23
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v18, v37, 4, v33
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v17.l
	v_and_b16 v1.h, 0xff, v16.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v19, v38, 4, v34
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s1, 5
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[2:3], v24, s[4:7], 0 offen
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v6, v23, s1, v6
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v2.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v15.l
	v_and_b16 v1.h, 0xff, v14.l
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v2.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v21.l
	v_and_b16 v1.h, 0xff, v20.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_ashr_i32 s0, s0, 8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v1.h, 0xff, v18.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v3.l, v1.h, v1.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v1, v0, 63, s34
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[2:3], v6, s[4:7], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v2, 2, v11
	v_lshrrev_b32_e32 v3, 2, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v1, v1, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v2, 0, v2, v3
	v_and_b32_e32 v3, 2, v22
	s_and_b32 s5, s27, 0xffff
	s_mov_b32 s4, s26
	ds_store_b32 v2, v7
	v_and_b32_e32 v2, 0x7c, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_lshl_u32 v0, v1, s33, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v2, 0, v2, v3
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	ds_load_u16 v1, v2
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[4:7], 0 offen
.Ltmp60:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp61:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 118
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 118
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10040
; TotalNumSgprs: 51
; NumVgprs: 118
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 118
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
	.byte	181                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     118
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
