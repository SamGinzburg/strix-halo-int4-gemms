	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk
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
	v_and_b32_e32 v13, 31, v0
	v_lshlrev_b32_e32 v11, 3, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v4, 5, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshlrev_b32_e32 v14, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v2, 56, v11
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v5, 64, v3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v15, 56, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v15, v14, v15
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s34, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v83, 0, v15
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s7, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s9, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s7, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s17, s6
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s16, s17
	s_abs_i32 s18, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v1, 1, v13
	s_mov_b32 s11, 0x31027000
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s31, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s17
	s_mul_i32 s16, s16, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s16
	s_xor_b32 s16, s2, s6
	s_add_i32 s5, s10, s5
	s_ashr_i32 s16, s16, 31
	s_mul_hi_u32 s5, s18, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s17
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s30, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s18, s18, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s18, s17
	s_cmp_ge_u32 s18, s17
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s18, s17
	s_cselect_b32 s5, s19, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s18, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s19, s5, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 0xff
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s18
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s19, s16
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s17, s3, 6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s18, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s6, s5, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v8, s17, v1
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[6:7], null, s18, v4, v[1:2]
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s6
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v9, s17, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mul_lo_u32 v10, s18, v5
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s20, s3
.Ltmp19:
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s33, s5, 7
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v8
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 0x80, v8
	.loc	1 126 14 is_stmt 1              ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 4
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s6, s21, 8
.Ltmp21:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s18, v9
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 0x80, v9
	.loc	1 218 34 is_stmt 1              ; generate_amdgcn.py:218:34
	s_mul_i32 s7, s33, s18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0xff
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s21, s34, s18
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mul_lo_u32 v7, s18, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_add_i32 s7, s7, s17
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v6, s17, s21, v6
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s22, s3, vcc_lo
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v8, v10, v2, s7
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s22
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v9, 0x80000000, v8, vcc_lo
	.loc	1 218 34 is_stmt 0              ; generate_amdgcn.py:218:34
	v_add3_u32 v7, v7, v2, s7
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0x1ff
	s_mov_b32 s5, -1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v12, v6, s[8:11], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[7:8], v7, s[28:31], 0 offen
	buffer_load_b64 v[9:10], v9, s[28:31], 0 offen
	v_lshrrev_b32_e32 v6, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v6, 56, v6
	v_xor_b32_e32 v6, v11, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v84, 0, v6
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v6, 4, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(2)
	ds_store_b16 v83, v12 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v84, v[7:8], v[9:10] offset1:8
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_mov_b64 s[26:27], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr24_sgpr25
.LBB0_3:                                ; %Flow214
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[0:1], s[0:1], 0x20
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v15, 15, v0
	v_bfe_u32 v81, v0, 4, 1
	v_or_b32_e32 v80, 62, v6
	v_or_b32_e32 v79, 0x7e, v6
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v82, 2, v0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v38, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s5, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v10, s34, v15
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_lshl_b32 s44, s19, 8
	s_lshl_b32 s19, s19, 7
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v6, 56, v82
	v_dual_mov_b32 v38, 0 :: v_dual_lshlrev_b32 v9, 1, v79
	v_or_b32_e32 v5, s19, v5
	v_or_b32_e32 v3, s19, v3
	v_mul_lo_u32 v10, s6, v10
	s_lshl_b32 s20, s16, 8
	s_lshl_b32 s16, s16, 7
	v_lshl_or_b32 v6, v15, 6, v6
	v_subrev_nc_u32_e32 v87, s20, v9
	v_dual_mov_b32 v78, 0 :: v_dual_lshlrev_b32 v9, 1, v81
	v_subrev_nc_u32_e32 v5, s16, v5
	v_subrev_nc_u32_e32 v3, s16, v3
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v11, 1, v80
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v4, s34, v4
	v_xor_b32_e32 v7, 8, v6
	v_xor_b32_e32 v8, 16, v6
	v_xor_b32_e32 v18, 40, v6
	v_xor_b32_e32 v16, 24, v6
	v_xor_b32_e32 v17, 32, v6
	v_xor_b32_e32 v19, 48, v6
	v_xor_b32_e32 v20, 56, v6
	v_subrev_nc_u32_e32 v88, s20, v9
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v90, 1, v10
	v_mad_u64_u32 v[9:10], null, s18, v5, v[2:3]
	v_subrev_nc_u32_e32 v89, s20, v11
	v_mad_u64_u32 v[10:11], null, s18, v3, v[2:3]
	s_mov_b32 s16, 0
	v_mad_u64_u32 v[11:12], null, s18, v4, v[1:2]
	v_sub_nc_u32_e32 v85, s18, v1
	v_sub_nc_u32_e32 v86, s18, v2
	s_add_i32 s46, s17, 0x80
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v91, 0, v6
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v92, 0, v7
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v93, 0, v8
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v96, 0, v18
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v1, s16
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v94, 0, v16
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v95, 0, v17
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v97, 0, v19
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v98, 0, v20
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v4, s19
	v_mov_b32_e32 v6, s21
	v_mov_b32_e32 v8, s23
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b64 s[24:25], s[12:13]
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_max_i32 s7, s5, 1
	s_lshl_b32 s45, s35, 1
	s_mov_b32 s40, s12
	s_mov_b32 s41, s13
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v212, v90, s[40:43], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s46, v85
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v99, s46, v11
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s7, s7, -1
	v_add_nc_u32_e32 v90, 2, v90
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v99, 0x80000000, v99, vcc_lo
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s46, v86
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v99, v99, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[196:197], v91 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[108:111], v91 offset1:2
	ds_load_2addr_stride64_b64 v[112:115], v92 offset1:2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[198:199], v92 offset:8192
	ds_load_b64 v[200:201], v93 offset:8192
	ds_load_b64 v[202:203], v94 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[116:119], v93 offset1:2
	ds_load_2addr_stride64_b64 v[120:123], v94 offset1:2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[204:205], v95 offset:8192
	ds_load_b64 v[206:207], v96 offset:8192
	ds_load_b64 v[208:209], v97 offset:8192
	ds_load_b64 v[210:211], v98 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[124:127], v95 offset1:2
	ds_load_2addr_stride64_b64 v[128:131], v96 offset1:2
	ds_load_2addr_stride64_b64 v[132:135], v97 offset1:2
	ds_load_2addr_stride64_b64 v[136:139], v98 offset1:2
	ds_load_2addr_stride64_b64 v[164:167], v94 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[168:171], v95 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[172:175], v96 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[176:179], v97 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[180:183], v98 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[184:187], v96 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[188:191], v97 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[192:195], v98 offset0:12 offset1:14
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(22)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[108:109], v[196:197], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(20)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[112:113], v[198:199], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(17)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[116:117], v[200:201], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[120:121], v[202:203], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[124:125], v[204:205], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[128:129], v[206:207], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[132:133], v[208:209], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[136:137], v[210:211], v[100:107] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v213, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v163, v101
	v_cvt_f32_i32_e32 v162, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v161, v103
	v_cvt_f32_i32_e32 v159, v104
	v_cvt_f32_i32_e32 v158, v105
	v_cvt_f32_i32_e32 v157, v106
	v_cvt_f32_i32_e32 v156, v107
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[110:111], v[196:197], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[114:115], v[198:199], v[100:107] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[108:111], v91 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[112:115], v92 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[118:119], v[200:201], v[100:107] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[116:119], v93 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[122:123], v[202:203], v[100:107] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[120:123], v94 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[126:127], v[204:205], v[100:107] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[124:127], v95 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[130:131], v[206:207], v[100:107] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[128:131], v96 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[134:135], v[208:209], v[100:107] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[132:135], v97 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[138:139], v[210:211], v[100:107] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[136:139], v98 offset0:4 offset1:6
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v160, v100
	v_cvt_f32_i32_e32 v154, v101
	v_cvt_f32_i32_e32 v153, v102
	v_cvt_f32_i32_e32 v152, v103
	v_cvt_f32_i32_e32 v151, v104
	v_cvt_f32_i32_e32 v149, v105
	v_cvt_f32_i32_e32 v147, v106
	v_cvt_f32_i32_e32 v145, v107
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[108:109], v[196:197], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[112:113], v[198:199], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[116:117], v[200:201], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[120:121], v[202:203], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[124:125], v[204:205], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[128:129], v[206:207], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[132:133], v[208:209], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[136:137], v[210:211], v[100:107] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v155, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v150, v101
	v_cvt_f32_i32_e32 v148, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v146, v103
	v_cvt_f32_i32_e32 v143, v104
	v_cvt_f32_i32_e32 v142, v105
	v_cvt_f32_i32_e32 v141, v106
	v_cvt_f32_i32_e32 v140, v107
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[110:111], v[196:197], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[114:115], v[198:199], v[100:107] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[108:111], v91 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[112:115], v92 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[118:119], v[200:201], v[100:107] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[116:119], v93 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[122:123], v[202:203], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[126:127], v[204:205], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[130:131], v[206:207], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[134:135], v[208:209], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[138:139], v[210:211], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v144, v100
	v_cvt_f32_i32_e32 v139, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v138, v102
	v_cvt_f32_i32_e32 v137, v103
	v_cvt_f32_i32_e32 v136, v104
	v_cvt_f32_i32_e32 v135, v105
	v_cvt_f32_i32_e32 v134, v106
	v_cvt_f32_i32_e32 v130, v107
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[108:109], v[196:197], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[112:113], v[198:199], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[116:117], v[200:201], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[164:165], v[202:203], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[168:169], v[204:205], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[172:173], v[206:207], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[176:177], v[208:209], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[180:181], v[210:211], v[100:107] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v133, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v132, v101
	v_cvt_f32_i32_e32 v131, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v129, v103
	v_cvt_f32_i32_e32 v127, v104
	v_cvt_f32_i32_e32 v125, v105
	v_cvt_f32_i32_e32 v124, v106
	v_cvt_f32_i32_e32 v123, v107
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[110:111], v[196:197], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[114:115], v[198:199], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[118:119], v[200:201], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[166:167], v[202:203], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[170:171], v[204:205], v[100:107] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[164:167], v91 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[168:171], v92 offset0:12 offset1:14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[174:175], v[206:207], v[100:107] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[172:175], v93 offset0:12 offset1:14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[178:179], v[208:209], v[100:107] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[176:179], v94 offset0:12 offset1:14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[182:183], v[210:211], v[100:107] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[180:183], v95 offset0:12 offset1:14
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v128, v100
	v_cvt_f32_i32_e32 v126, v101
	v_cvt_f32_i32_e32 v120, v102
	v_cvt_f32_i32_e32 v119, v103
	v_cvt_f32_i32_e32 v118, v104
	v_cvt_f32_i32_e32 v117, v105
	v_cvt_f32_i32_e32 v115, v106
	v_cvt_f32_i32_e32 v113, v107
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[164:165], v[196:197], v[1:8] neg_lo:[1,1,0]
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v108, 16, v212
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v164, s44, v88
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v88, s45, v88
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[168:169], v[198:199], v[100:107] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v165, v108, v213
	v_mul_f32_e32 v163, v108, v163
	v_mul_f32_e32 v162, v108, v162
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[172:173], v[200:201], v[100:107] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v159, v108, v159
	v_mul_f32_e32 v156, v108, v156
	v_mul_f32_e32 v157, v108, v157
	v_mul_f32_e32 v154, v108, v154
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[176:177], v[202:203], v[100:107] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v152, v108, v152
	v_mul_f32_e32 v145, v108, v145
	v_mul_f32_e32 v149, v108, v149
	v_mul_f32_e32 v147, v108, v147
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[180:181], v[204:205], v[100:107] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v140, v108, v140
	v_mul_f32_e32 v139, v108, v139
	v_mul_f32_e32 v129, v108, v129
	v_mul_f32_e32 v137, v108, v137
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[184:185], v[206:207], v[100:107] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v138, v108, v138
	v_mul_f32_e32 v135, v108, v135
	v_mul_f32_e32 v143, v108, v143
	v_mul_f32_e32 v142, v108, v142
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[188:189], v[208:209], v[100:107] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v136, v108, v136
	v_mul_f32_e32 v141, v108, v141
	v_mul_f32_e32 v132, v108, v132
	v_mul_f32_e32 v125, v108, v125
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[192:193], v[210:211], v[100:107] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v123, v108, v123
	v_mul_f32_e32 v134, v108, v134
	v_mul_f32_e32 v120, v108, v120
	v_mul_f32_e32 v133, v108, v133
	v_cvt_f32_i32_e32 v122, v100
	v_cvt_f32_i32_e32 v121, v101
	v_cvt_f32_i32_e32 v116, v102
	v_cvt_f32_i32_e32 v114, v103
	v_cvt_f32_i32_e32 v112, v104
	v_cvt_f32_i32_e32 v111, v105
	v_cvt_f32_i32_e32 v110, v106
	v_cvt_f32_i32_e32 v109, v107
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[166:167], v[196:197], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v118, v108, v118
	v_mul_f32_e32 v115, v108, v115
	v_mul_f32_e32 v131, v108, v131
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[170:171], v[198:199], v[100:107] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v166, v164, s[36:39], 0 offen
	buffer_load_u16 v167, v164, s[36:39], 0 offen offset:4
	buffer_load_u16 v168, v164, s[36:39], 0 offen offset:8
	buffer_load_u16 v169, v164, s[36:39], 0 offen offset:12
	buffer_load_u16 v170, v164, s[36:39], 0 offen offset:16
	buffer_load_u16 v171, v164, s[36:39], 0 offen offset:20
	buffer_load_u16 v172, v164, s[36:39], 0 offen offset:24
	buffer_load_u16 v173, v164, s[36:39], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v158, v108, v158
	v_mul_f32_e32 v161, v108, v161
	v_mul_f32_e32 v127, v108, v127
	v_mul_f32_e32 v114, v108, v114
	v_mul_f32_e32 v124, v108, v124
	v_mul_f32_e32 v112, v108, v112
	v_mul_f32_e32 v110, v108, v110
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[174:175], v[200:201], v[100:107] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v119, v108, v119
	v_mul_f32_e32 v117, v108, v117
	v_mul_f32_e32 v113, v108, v113
	v_mul_f32_e32 v111, v108, v111
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[178:179], v[202:203], v[100:107] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v109, v108, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[182:183], v[204:205], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[186:187], v[206:207], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[190:191], v[208:209], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[194:195], v[210:211], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v102, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_mul_f32_e32 v100, v108, v100
	v_mul_f32_e32 v102, v108, v102
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v103, v103
	v_mul_f32_e32 v107, v108, v107
	v_cvt_f32_i32_e32 v105, v105
	v_mul_f32_e32 v106, v108, v106
	v_mul_f32_e32 v104, v108, v104
	v_mul_f32_e32 v101, v108, v101
	v_mul_f32_e32 v103, v108, v103
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v105, v108, v105 :: v_dual_lshlrev_b32 v166, 16, v166
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v38, v165, v166 :: v_dual_lshlrev_b32 v165, 16, v167
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v78, v163, v165 :: v_dual_lshlrev_b32 v163, 16, v168
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v77, v162, v163 :: v_dual_lshlrev_b32 v162, 16, v169
	v_fmac_f32_e32 v76, v161, v162
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v161, 16, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v75, v159, v161
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v159, 16, v171
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v74, v158, v159
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v158, 16, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v73, v157, v158
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v157, 16, v173
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v72, v156, v157
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v156, v108, v160
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v157, v164, s[36:39], 0 offen offset:32
	buffer_load_u16 v158, v164, s[36:39], 0 offen offset:36
	buffer_load_u16 v159, v164, s[36:39], 0 offen offset:40
	buffer_load_u16 v160, v164, s[36:39], 0 offen offset:44
	buffer_load_u16 v161, v164, s[36:39], 0 offen offset:48
	buffer_load_u16 v162, v164, s[36:39], 0 offen offset:52
	buffer_load_u16 v163, v164, s[36:39], 0 offen offset:56
	buffer_load_u16 v165, v164, s[36:39], 0 offen offset:60
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v153, v108, v153
	v_mul_f32_e32 v151, v108, v151
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v71, v156, v157 :: v_dual_lshlrev_b32 v156, 16, v158
	v_fmac_f32_e32 v70, v154, v156
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v154, 16, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v69, v153, v154
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v153, 16, v160
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v68, v152, v153
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v152, 16, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v67, v151, v152
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v151, 16, v162
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v66, v149, v151
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v149, 16, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v65, v147, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v147, 16, v165
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v64, v145, v147
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v145, v108, v155
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v147, v164, s[36:39], 0 offen offset:64
	buffer_load_u16 v149, v164, s[36:39], 0 offen offset:68
	buffer_load_u16 v151, v164, s[36:39], 0 offen offset:72
	buffer_load_u16 v152, v164, s[36:39], 0 offen offset:76
	buffer_load_u16 v153, v164, s[36:39], 0 offen offset:80
	buffer_load_u16 v154, v164, s[36:39], 0 offen offset:84
	buffer_load_u16 v155, v164, s[36:39], 0 offen offset:88
	buffer_load_u16 v156, v164, s[36:39], 0 offen offset:92
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v147, 16, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v63, v145, v147
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v145, v108, v150
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v147, 16, v149
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v62, v145, v147 :: v_dual_mul_f32 v145, v108, v148
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v147, 16, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v61, v145, v147
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v145, v108, v146 :: v_dual_lshlrev_b32 v146, 16, v152
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v60, v145, v146 :: v_dual_lshlrev_b32 v145, 16, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v143, v145
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v143, 16, v154
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v58, v142, v143
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v142, 16, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v57, v141, v142
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v141, 16, v156
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v56, v140, v141
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v140, v108, v144
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v141, v164, s[36:39], 0 offen offset:96
	buffer_load_u16 v142, v164, s[36:39], 0 offen offset:100
	buffer_load_u16 v143, v164, s[36:39], 0 offen offset:104
	buffer_load_u16 v144, v164, s[36:39], 0 offen offset:108
	buffer_load_u16 v145, v164, s[36:39], 0 offen offset:112
	buffer_load_u16 v146, v164, s[36:39], 0 offen offset:116
	buffer_load_u16 v147, v164, s[36:39], 0 offen offset:120
	buffer_load_u16 v148, v164, s[36:39], 0 offen offset:128
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v141, 16, v141
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v55, v140, v141 :: v_dual_lshlrev_b32 v140, 16, v142
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v54, v139, v140 :: v_dual_lshlrev_b32 v139, 16, v143
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v53, v138, v139 :: v_dual_lshlrev_b32 v138, 16, v144
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v52, v137, v138 :: v_dual_lshlrev_b32 v137, 16, v145
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v51, v136, v137 :: v_dual_lshlrev_b32 v136, 16, v146
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v50, v135, v136 :: v_dual_lshlrev_b32 v135, 16, v147
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v136, v108, v130
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v130, v164, s[36:39], 0 offen offset:248
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v49, v134, v135 :: v_dual_add_nc_u32 v134, s44, v89
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v89, s45, v89
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v135, v134, s[36:39], 0 offen
	v_add_nc_u32_e32 v134, s44, v87
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v87, s45, v87
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v134, v134, s[36:39], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v135, 16, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v48, v136, v135 :: v_dual_lshlrev_b32 v135, 16, v148
	v_fmac_f32_e32 v47, v133, v135
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v133, v164, s[36:39], 0 offen offset:132
	buffer_load_u16 v135, v164, s[36:39], 0 offen offset:136
	buffer_load_u16 v136, v164, s[36:39], 0 offen offset:140
	buffer_load_u16 v137, v164, s[36:39], 0 offen offset:144
	buffer_load_u16 v138, v164, s[36:39], 0 offen offset:148
	buffer_load_u16 v139, v164, s[36:39], 0 offen offset:152
	buffer_load_u16 v140, v164, s[36:39], 0 offen offset:156
	buffer_load_u16 v141, v164, s[36:39], 0 offen offset:160
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v133, 16, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v46, v132, v133
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v132, 16, v135
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v45, v131, v132
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v131, 16, v136
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v44, v129, v131 :: v_dual_lshlrev_b32 v129, 16, v137
	v_fmac_f32_e32 v43, v127, v129
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v127, 16, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v42, v125, v127
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v125, 16, v139
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v41, v124, v125 :: v_dual_lshlrev_b32 v124, 16, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v123, v124
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v123, v108, v128 :: v_dual_lshlrev_b32 v124, 16, v141
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v39, v123, v124
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v123, v108, v126
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v124, v164, s[36:39], 0 offen offset:164
	buffer_load_u16 v125, v164, s[36:39], 0 offen offset:168
	buffer_load_u16 v126, v164, s[36:39], 0 offen offset:172
	buffer_load_u16 v127, v164, s[36:39], 0 offen offset:176
	buffer_load_u16 v128, v164, s[36:39], 0 offen offset:180
	buffer_load_u16 v129, v164, s[36:39], 0 offen offset:184
	buffer_load_u16 v131, v164, s[36:39], 0 offen offset:188
	buffer_load_u16 v132, v164, s[36:39], 0 offen offset:192
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v124, 16, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v37, v123, v124
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v123, 16, v125
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v36, v120, v123
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v120, 16, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v35, v119, v120
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v119, 16, v127
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v34, v118, v119
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v118, 16, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v33, v117, v118
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v117, 16, v129
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v118, v108, v121
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v32, v115, v117 :: v_dual_lshlrev_b32 v115, 16, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v113, v115
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v113, v108, v122
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v115, 16, v132
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v30, v113, v115
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v115, v164, s[36:39], 0 offen offset:196
	buffer_load_u16 v117, v164, s[36:39], 0 offen offset:200
	buffer_load_u16 v119, v164, s[36:39], 0 offen offset:204
	buffer_load_u16 v120, v164, s[36:39], 0 offen offset:208
	buffer_load_u16 v121, v164, s[36:39], 0 offen offset:212
	buffer_load_u16 v122, v164, s[36:39], 0 offen offset:216
	buffer_load_u16 v123, v164, s[36:39], 0 offen offset:220
	buffer_load_u16 v113, v164, s[36:39], 0 offen offset:224
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v115, 16, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v29, v118, v115
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v115, v108, v116 :: v_dual_lshlrev_b32 v116, 16, v117
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v108, 16, v113
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v28, v115, v116 :: v_dual_lshlrev_b32 v115, 16, v119
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v117, v164, s[36:39], 0 offen offset:236
	buffer_load_u16 v118, v164, s[36:39], 0 offen offset:240
	buffer_load_u16 v119, v164, s[36:39], 0 offen offset:244
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v22, v100, v108 :: v_dual_fmac_f32 v27, v114, v115
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v114, 16, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v26, v112, v114 :: v_dual_lshlrev_b32 v115, 16, v121
	v_dual_fmac_f32 v25, v111, v115 :: v_dual_add_nc_u32 v112, s46, v10
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v115, v164, s[36:39], 0 offen offset:228
	buffer_load_u16 v116, v164, s[36:39], 0 offen offset:232
	v_lshlrev_b32_e32 v111, 16, v122
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v114, s46, v9
	v_cndmask_b32_e32 v112, 0x80000000, v112, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_addk_i32 s46, 0x80
	s_cmp_lg_u32 s7, 0
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v24, v110, v111
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v110, 16, v123
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e32 v114, 0x80000000, v114, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v23, v109, v110
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[109:110], v112, s[28:31], 0 offen
	buffer_load_b64 v[111:112], v114, s[28:31], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v83, v99 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v84, v[109:110], v[111:112] offset1:8
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v113, 16, v115
	v_lshlrev_b32_e32 v114, 16, v116
	v_lshlrev_b32_e32 v115, 16, v117
	v_lshlrev_b32_e32 v116, 16, v118
	v_lshlrev_b32_e32 v117, 16, v119
	v_lshlrev_b32_e32 v118, 16, v130
	v_lshlrev_b32_e32 v119, 16, v134
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v21, v101, v113 :: v_dual_fmac_f32 v20, v102, v114
	v_dual_fmac_f32 v19, v103, v115 :: v_dual_fmac_f32 v18, v104, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v17, v105, v117 :: v_dual_fmac_f32 v16, v106, v118
	v_fmac_f32_e32 v12, v107, v119
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow215
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_i32_i24_e32 v2, s6, v15
	s_mul_i32 s4, s34, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s3, s5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v1, 0x1e0, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s4, s4, s3
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s4, v2, 1
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v86, 0
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v136, 0
	v_mov_b32_e32 v133, 0
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v137, 0
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
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v3, 56, v82
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v137, s11 :: v_dual_mov_b32 v134, s8
	v_dual_mov_b32 v136, s10 :: v_dual_mov_b32 v135, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshl_or_b32 v3, v15, 6, v3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v133, s7 :: v_dual_mov_b32 v132, s6
	v_dual_mov_b32 v131, s5 :: v_dual_mov_b32 v130, s4
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v202, v3, 24, 0
	v_add_nc_u32_e32 v206, 0, v3
	v_xad_u32 v222, v3, 16, 0
	v_xad_u32 v214, v3, 8, 0
	ds_load_2addr_stride64_b64 v[166:169], v202 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[88:91], v206 offset1:2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[226:227], v202 offset:8192
	ds_load_b64 v[228:229], v222 offset:8192
	ds_load_b64 v[230:231], v214 offset:8192
	ds_load_b64 v[232:233], v206 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[110:113], v202 offset1:2
	ds_load_2addr_stride64_b64 v[114:117], v222 offset1:2
	ds_load_2addr_stride64_b64 v[170:173], v214 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[118:121], v206 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[122:125], v214 offset1:2
	v_xad_u32 v4, v3, 56, 0
	v_xad_u32 v194, v3, 32, 0
	v_xad_u32 v5, v3, 48, 0
	v_xad_u32 v11, v3, 40, 0
	ds_load_2addr_stride64_b64 v[138:141], v4 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[142:145], v4 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[146:149], v4 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[98:101], v4 offset1:2
	ds_load_2addr_stride64_b64 v[150:153], v5 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[154:157], v5 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[158:161], v5 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[102:105], v5 offset1:2
	ds_load_2addr_stride64_b64 v[162:165], v194 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[106:109], v194 offset1:2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[234:235], v4 offset:8192
	ds_load_b64 v[236:237], v5 offset:8192
	ds_load_b64 v[238:239], v11 offset:8192
	ds_load_b64 v[240:241], v194 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[178:181], v11 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[126:129], v11 offset1:2
	ds_load_2addr_stride64_b64 v[210:213], v214 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[214:217], v214 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[174:177], v222 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[218:221], v222 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[222:225], v222 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[190:193], v194 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[194:197], v194 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[182:185], v11 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[186:189], v11 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(30)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[88:89], v[232:233], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[90:91], v[232:233], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(26)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[118:119], v[232:233], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(25)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[122:123], v[230:231], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[124:125], v[230:231], v[82:89] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[198:201], v202 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[122:125], v206 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[202:205], v202 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[206:209], v206 offset0:12 offset1:14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[90:97], v[170:171], v[230:231], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[114:115], v[228:229], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[116:117], v[228:229], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[110:111], v[226:227], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[112:113], v[226:227], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[174:175], v[228:229], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[106:107], v[240:241], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[108:109], v[240:241], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[166:167], v[226:227], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[126:127], v[238:239], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[128:129], v[238:239], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[122:123], v[232:233], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[162:163], v[240:241], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[102:103], v[236:237], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[104:105], v[236:237], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[210:211], v[230:231], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[178:179], v[238:239], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[98:99], v[234:235], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[100:101], v[234:235], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[120:121], v[232:233], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[124:125], v[232:233], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[206:207], v[232:233], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[208:209], v[232:233], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[172:173], v[230:231], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[212:213], v[230:231], v[114:121] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[214:215], v[230:231], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[218:219], v[228:229], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[216:217], v[230:231], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[176:177], v[228:229], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[220:221], v[228:229], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[222:223], v[228:229], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[202:203], v[226:227], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[224:225], v[228:229], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[168:169], v[226:227], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[204:205], v[226:227], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[198:199], v[226:227], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[194:195], v[240:241], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[200:201], v[226:227], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[164:165], v[240:241], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[196:197], v[240:241], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[190:191], v[240:241], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[186:187], v[238:239], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[192:193], v[240:241], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[180:181], v[238:239], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[188:189], v[238:239], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[182:183], v[238:239], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[158:159], v[236:237], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[184:185], v[238:239], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[160:161], v[236:237], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[154:155], v[236:237], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[156:157], v[236:237], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[150:151], v[236:237], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[152:153], v[236:237], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[146:147], v[234:235], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[148:149], v[234:235], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[142:143], v[234:235], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[144:145], v[234:235], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[138:139], v[234:235], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[140:141], v[234:235], v[130:137] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
.LBB0_8:
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s3, s3, s35
	v_mov_b16_e64 v198.l, 0
	.loc	1 232 26 is_stmt 0              ; generate_amdgcn.py:232:26
	s_add_i32 s3, s33, s3
	.loc	1 195 18 is_stmt 1              ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v198.h, v2.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v81, s3, v81, 1
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v80, s3, v80, 1
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v10, v10, v198 :: v_dual_add_nc_u32 v145, 32, v81
	v_dual_mul_f32 v98, v98, v198 :: v_dual_add_nc_u32 v161, 0x60, v81
	v_dual_mul_f32 v103, v103, v198 :: v_dual_add_nc_u32 v168, 0x80, v81
	v_dual_mul_f32 v111, v111, v198 :: v_dual_add_nc_u32 v176, 0xa0, v81
	v_dual_mul_f32 v119, v119, v198 :: v_dual_add_nc_u32 v184, 0xc0, v81
	v_dual_mul_f32 v11, v11, v198 :: v_dual_add_nc_u32 v146, 36, v81
	v_dual_mul_f32 v97, v97, v198 :: v_dual_add_nc_u32 v162, 0x64, v81
	v_dual_mul_f32 v106, v106, v198 :: v_dual_add_nc_u32 v169, 0x84, v81
	v_dual_mul_f32 v114, v114, v198 :: v_dual_add_nc_u32 v177, 0xa4, v81
	v_dual_mul_f32 v122, v122, v198 :: v_dual_add_nc_u32 v185, 0xc4, v81
	v_dual_mul_f32 v84, v84, v198 :: v_dual_add_nc_u32 v147, 40, v81
	v_dual_mul_f32 v100, v100, v198 :: v_dual_add_nc_u32 v163, 0x68, v81
	v_dual_mul_f32 v105, v105, v198 :: v_dual_add_nc_u32 v170, 0x88, v81
	v_dual_mul_f32 v113, v113, v198 :: v_dual_add_nc_u32 v178, 0xa8, v81
	v_dual_mul_f32 v121, v121, v198 :: v_dual_add_nc_u32 v186, 0xc8, v81
	v_dual_mul_f32 v83, v83, v198 :: v_dual_add_nc_u32 v148, 44, v81
	v_dual_mul_f32 v90, v90, v198 :: v_dual_add_nc_u32 v153, 64, v81
	v_dual_mul_f32 v99, v99, v198 :: v_dual_add_nc_u32 v164, 0x6c, v81
	v_dual_mul_f32 v108, v108, v198 :: v_dual_add_nc_u32 v171, 0x8c, v81
	v_dual_mul_f32 v116, v116, v198 :: v_dual_add_nc_u32 v179, 0xac, v81
	v_dual_mul_f32 v124, v124, v198 :: v_dual_add_nc_u32 v187, 0xcc, v81
	v_dual_mul_f32 v86, v86, v198 :: v_dual_add_nc_u32 v149, 48, v81
	v_dual_mul_f32 v85, v85, v198 :: v_dual_add_nc_u32 v150, 52, v81
	v_dual_mul_f32 v88, v88, v198 :: v_dual_add_nc_u32 v151, 56, v81
	v_dual_mul_f32 v87, v87, v198 :: v_dual_add_nc_u32 v152, 60, v81
	v_dual_mul_f32 v89, v89, v198 :: v_dual_add_nc_u32 v154, 0x44, v81
	v_dual_mul_f32 v102, v102, v198 :: v_dual_add_nc_u32 v165, 0x70, v81
	v_dual_mul_f32 v101, v101, v198 :: v_dual_add_nc_u32 v166, 0x74, v81
	v_dual_mul_f32 v104, v104, v198 :: v_dual_add_nc_u32 v167, 0x78, v81
	v_dual_mul_f32 v107, v107, v198 :: v_dual_add_nc_u32 v172, 0x90, v81
	v_dual_mul_f32 v110, v110, v198 :: v_dual_add_nc_u32 v173, 0x94, v81
	v_dual_mul_f32 v109, v109, v198 :: v_dual_add_nc_u32 v174, 0x98, v81
	v_dual_mul_f32 v112, v112, v198 :: v_dual_add_nc_u32 v175, 0x9c, v81
	v_dual_mul_f32 v115, v115, v198 :: v_dual_add_nc_u32 v180, 0xb0, v81
	v_dual_mul_f32 v118, v118, v198 :: v_dual_add_nc_u32 v181, 0xb4, v81
	v_dual_mul_f32 v117, v117, v198 :: v_dual_add_nc_u32 v182, 0xb8, v81
	v_dual_mul_f32 v120, v120, v198 :: v_dual_add_nc_u32 v183, 0xbc, v81
	v_dual_mul_f32 v123, v123, v198 :: v_dual_add_nc_u32 v188, 0xd0, v81
	v_dual_mul_f32 v126, v126, v198 :: v_dual_add_nc_u32 v189, 0xd4, v81
	v_dual_mul_f32 v125, v125, v198 :: v_dual_add_nc_u32 v190, 0xd8, v81
	v_dual_mul_f32 v128, v128, v198 :: v_dual_add_nc_u32 v191, 0xdc, v81
	v_dual_mul_f32 v127, v127, v198 :: v_dual_add_nc_u32 v192, 0xe0, v81
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v92, v92, v198 :: v_dual_add_nc_u32 v155, 0x48, v81
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	v_cndmask_b32_e64 v176, 0x80000000, v176, s2
	v_cndmask_b32_e64 v184, 0x80000000, v184, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v130, v130, v198 :: v_dual_add_nc_u32 v193, 0xe4, v81
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v91, v91, v198 :: v_dual_add_nc_u32 v156, 0x4c, v81
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v129, v129, v198 :: v_dual_add_nc_u32 v194, 0xe8, v81
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v94, v94, v198 :: v_dual_add_nc_u32 v157, 0x50, v81
	v_dual_mul_f32 v93, v93, v198 :: v_dual_add_nc_u32 v158, 0x54, v81
	v_dual_mul_f32 v96, v96, v198 :: v_dual_add_nc_u32 v159, 0x58, v81
	v_dual_mul_f32 v95, v95, v198 :: v_dual_add_nc_u32 v160, 0x5c, v81
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v132, v132, v198 :: v_dual_add_nc_u32 v195, 0xec, v81
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s4, s14
	v_cndmask_b32_e64 v82, 0x80000000, v81, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v3, v3, v198 :: v_dual_add_nc_u32 v138, 4, v81
	v_dual_mul_f32 v4, v4, v198 :: v_dual_add_nc_u32 v139, 8, v81
	v_dual_mul_f32 v5, v5, v198 :: v_dual_add_nc_u32 v140, 12, v81
	v_dual_mul_f32 v6, v6, v198 :: v_dual_add_nc_u32 v141, 16, v81
	v_dual_mul_f32 v7, v7, v198 :: v_dual_add_nc_u32 v142, 20, v81
	v_dual_mul_f32 v8, v8, v198 :: v_dual_add_nc_u32 v143, 24, v81
	v_dual_mul_f32 v9, v9, v198 :: v_dual_add_nc_u32 v144, 28, v81
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v131, v131, v198 :: v_dual_add_nc_u32 v196, 0xf0, v81
	v_dual_mul_f32 v134, v134, v198 :: v_dual_add_nc_u32 v197, 0xf4, v81
	v_dual_mul_f32 v136, v136, v198 :: v_dual_add_nc_u32 v81, 0xf8, v81
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v79, s3, v79, 1
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v165, 0x80000000, v165, s2
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	v_cndmask_b32_e64 v181, 0x80000000, v181, s2
	v_cndmask_b32_e64 v182, 0x80000000, v182, s2
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v188, 0x80000000, v188, s2
	v_cndmask_b32_e64 v189, 0x80000000, v189, s2
	v_cndmask_b32_e64 v190, 0x80000000, v190, s2
	v_cndmask_b32_e64 v191, 0x80000000, v191, s2
	v_cndmask_b32_e64 v192, 0x80000000, v192, s2
	s_clause 0x7
	buffer_load_u16 v145, v145, s[4:7], 0 offen
	buffer_load_u16 v146, v146, s[4:7], 0 offen
	buffer_load_u16 v147, v147, s[4:7], 0 offen
	buffer_load_u16 v148, v148, s[4:7], 0 offen
	buffer_load_u16 v149, v149, s[4:7], 0 offen
	buffer_load_u16 v150, v150, s[4:7], 0 offen
	buffer_load_u16 v151, v151, s[4:7], 0 offen
	buffer_load_u16 v152, v152, s[4:7], 0 offen
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	s_clause 0x1f
	buffer_load_u16 v161, v161, s[4:7], 0 offen
	buffer_load_u16 v162, v162, s[4:7], 0 offen
	buffer_load_u16 v163, v163, s[4:7], 0 offen
	buffer_load_u16 v164, v164, s[4:7], 0 offen
	buffer_load_u16 v165, v165, s[4:7], 0 offen
	buffer_load_u16 v166, v166, s[4:7], 0 offen
	buffer_load_u16 v167, v167, s[4:7], 0 offen
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v168, v168, s[4:7], 0 offen
	buffer_load_u16 v169, v169, s[4:7], 0 offen
	buffer_load_u16 v170, v170, s[4:7], 0 offen
	buffer_load_u16 v171, v171, s[4:7], 0 offen
	buffer_load_u16 v172, v172, s[4:7], 0 offen
	buffer_load_u16 v173, v173, s[4:7], 0 offen
	buffer_load_u16 v174, v174, s[4:7], 0 offen
	buffer_load_u16 v175, v175, s[4:7], 0 offen
	buffer_load_u16 v176, v176, s[4:7], 0 offen
	buffer_load_u16 v177, v177, s[4:7], 0 offen
	buffer_load_u16 v178, v178, s[4:7], 0 offen
	buffer_load_u16 v179, v179, s[4:7], 0 offen
	buffer_load_u16 v180, v180, s[4:7], 0 offen
	buffer_load_u16 v181, v181, s[4:7], 0 offen
	buffer_load_u16 v182, v182, s[4:7], 0 offen
	buffer_load_u16 v183, v183, s[4:7], 0 offen
	buffer_load_u16 v184, v184, s[4:7], 0 offen
	buffer_load_u16 v185, v185, s[4:7], 0 offen
	buffer_load_u16 v186, v186, s[4:7], 0 offen
	buffer_load_u16 v187, v187, s[4:7], 0 offen
	buffer_load_u16 v188, v188, s[4:7], 0 offen
	buffer_load_u16 v189, v189, s[4:7], 0 offen
	buffer_load_u16 v190, v190, s[4:7], 0 offen
	buffer_load_u16 v191, v191, s[4:7], 0 offen
	v_cndmask_b32_e64 v193, 0x80000000, v193, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	v_cndmask_b32_e64 v195, 0x80000000, v195, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	s_clause 0x7
	buffer_load_u16 v153, v153, s[4:7], 0 offen
	buffer_load_u16 v154, v154, s[4:7], 0 offen
	buffer_load_u16 v155, v155, s[4:7], 0 offen
	buffer_load_u16 v156, v156, s[4:7], 0 offen
	buffer_load_u16 v157, v157, s[4:7], 0 offen
	buffer_load_u16 v158, v158, s[4:7], 0 offen
	buffer_load_u16 v159, v159, s[4:7], 0 offen
	buffer_load_u16 v160, v160, s[4:7], 0 offen
	v_cndmask_b32_e64 v196, 0x80000000, v196, s2
	v_cndmask_b32_e64 v197, 0x80000000, v197, s2
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	s_clause 0x7
	buffer_load_u16 v192, v192, s[4:7], 0 offen
	buffer_load_u16 v193, v193, s[4:7], 0 offen
	buffer_load_u16 v194, v194, s[4:7], 0 offen
	buffer_load_u16 v195, v195, s[4:7], 0 offen
	buffer_load_u16 v196, v196, s[4:7], 0 offen
	buffer_load_u16 v197, v197, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	s_clause 0x7
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v138, v138, s[4:7], 0 offen
	buffer_load_u16 v139, v139, s[4:7], 0 offen
	buffer_load_u16 v140, v140, s[4:7], 0 offen
	buffer_load_u16 v141, v141, s[4:7], 0 offen
	buffer_load_u16 v142, v142, s[4:7], 0 offen
	buffer_load_u16 v143, v143, s[4:7], 0 offen
	buffer_load_u16 v144, v144, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v133, v133, v198 :: v_dual_and_b32 v2, 0x180, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v13, 2, v13
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v135, v135, v198
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v137, v137, v198
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v13, v15, 9, v13
	v_lshrrev_b32_e32 v2, 5, v2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v199, 7, v0
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_lshl_b32 s4, s35, 2
	s_lshl_b32 s5, s35, 3
	s_mul_i32 s8, s35, 12
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s3, s7
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v146, 16, v146
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v147, 16, v147
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v148, 16, v148
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v149, 16, v149
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v150, 16, v150
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v151, 16, v151
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v152, 16, v152
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v169, 16, v169
	v_lshlrev_b32_e32 v80, 16, v80
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v171, 16, v171
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v173, 16, v173
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v177, 16, v177
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v179, 16, v179
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v153, 16, v153
	v_lshlrev_b32_e32 v181, 16, v181
	v_lshlrev_b32_e32 v183, 16, v183
	v_lshlrev_b32_e32 v185, 16, v185
	v_lshlrev_b32_e32 v187, 16, v187
	v_lshlrev_b32_e32 v189, 16, v189
	v_lshlrev_b32_e32 v191, 16, v191
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v193, 16, v193
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v195, 16, v195
	v_lshlrev_b32_e32 v155, 16, v155
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v82, 16, v82
	v_lshlrev_b32_e32 v157, 16, v157
	v_lshlrev_b32_e32 v158, 16, v158
	v_lshlrev_b32_e32 v159, 16, v159
	v_lshlrev_b32_e32 v160, 16, v160
	v_lshlrev_b32_e32 v161, 16, v161
	v_lshlrev_b32_e32 v162, 16, v162
	v_lshlrev_b32_e32 v163, 16, v163
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v165, 16, v165
	v_lshlrev_b32_e32 v166, 16, v166
	v_lshlrev_b32_e32 v167, 16, v167
	v_lshlrev_b32_e32 v168, 16, v168
	v_lshlrev_b32_e32 v170, 16, v170
	v_lshlrev_b32_e32 v172, 16, v172
	v_lshlrev_b32_e32 v174, 16, v174
	v_lshlrev_b32_e32 v176, 16, v176
	v_lshlrev_b32_e32 v178, 16, v178
	v_lshlrev_b32_e32 v180, 16, v180
	v_lshlrev_b32_e32 v182, 16, v182
	v_lshlrev_b32_e32 v184, 16, v184
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v138, 16, v138
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v139, 16, v139
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v3, v3, v82, v38
	v_fma_f32 v82, v83, v146, v70
	v_fma_f32 v83, v84, v147, v69
	v_fma_f32 v84, v85, v148, v68
	v_fma_f32 v85, v86, v149, v67
	v_fma_f32 v86, v87, v150, v66
	v_fma_f32 v87, v88, v151, v65
	v_fma_f32 v88, v89, v152, v64
	v_fma_f32 v89, v90, v153, v63
	v_fma_f32 v80, v105, v80, v48
	v_fma_f32 v105, v107, v169, v46
	v_fma_f32 v107, v109, v171, v44
	v_fma_f32 v109, v111, v173, v42
	v_fma_f32 v111, v113, v175, v40
	v_fma_f32 v113, v115, v177, v37
	v_fma_f32 v115, v117, v179, v35
	v_fma_f32 v117, v119, v181, v33
	v_fma_f32 v119, v121, v183, v31
	v_fma_f32 v121, v123, v185, v29
	v_fma_f32 v123, v125, v187, v27
	v_fma_f32 v125, v127, v189, v25
	v_fma_f32 v127, v129, v191, v23
	v_fma_f32 v129, v131, v193, v21
	v_fma_f32 v131, v133, v195, v19
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v186, 16, v186
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v140, 16, v140
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v90, v91, v154, v62
	v_fma_f32 v91, v92, v155, v61
	v_fma_f32 v92, v93, v156, v60
	v_fma_f32 v93, v94, v157, v59
	v_fma_f32 v94, v95, v158, v58
	v_fma_f32 v95, v96, v159, v57
	v_fma_f32 v96, v97, v160, v56
	v_fma_f32 v97, v98, v161, v55
	v_fma_f32 v98, v99, v162, v54
	v_fma_f32 v99, v100, v163, v53
	v_fma_f32 v100, v101, v164, v52
	v_fma_f32 v101, v102, v165, v51
	v_fma_f32 v102, v103, v166, v50
	v_fma_f32 v103, v104, v167, v49
	v_fma_f32 v104, v106, v168, v47
	v_fma_f32 v106, v108, v170, v45
	v_fma_f32 v108, v110, v172, v43
	v_fma_f32 v110, v112, v174, v41
	v_fma_f32 v112, v114, v176, v39
	v_fma_f32 v114, v116, v178, v36
	v_fma_f32 v116, v118, v180, v34
	v_fma_f32 v118, v120, v182, v32
	v_fma_f32 v120, v122, v184, v30
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v141, 16, v141
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v138, v78
	v_fma_f32 v5, v5, v139, v77
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v3, v38, v3, s2
	v_cndmask_b32_e64 v63, v63, v89, s2
	v_cndmask_b32_e64 v15, v19, v131, s2
	v_add_nc_u32_e32 v19, 0, v13
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v188, 16, v188
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v142, 16, v142
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v122, v124, v186, v28
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v143, 16, v143
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v140, v76
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v47, v47, v104, s2
	v_cndmask_b32_e64 v30, v30, v120, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v141, v75
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v78, v4, s2
	v_cndmask_b32_e64 v38, v70, v82, s2
	v_cndmask_b32_e64 v62, v62, v90, s2
	v_cndmask_b32_e64 v46, v46, v105, s2
	v_cndmask_b32_e64 v29, v29, v121, s2
	v_xad_u32 v70, v13, 4, 0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v190, 16, v190
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v77, v5, s2
	v_cndmask_b32_e64 v61, v61, v91, s2
	ds_store_2addr_b32 v19, v3, v63 offset1:32
	v_xad_u32 v3, v13, 8, 0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v144, 16, v144
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v124, v126, v188, v26
	v_fma_f32 v8, v8, v142, v74
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v45, v106, s2
	v_cndmask_b32_e64 v28, v28, v122, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v143, v73
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v76, v6, s2
	v_cndmask_b32_e64 v60, v60, v92, s2
	v_cndmask_b32_e64 v44, v44, v107, s2
	v_cndmask_b32_e64 v27, v27, v123, s2
	ds_store_2addr_b32 v19, v47, v30 offset0:64 offset1:96
	ds_store_2addr_b32 v70, v4, v62 offset1:32
	v_xad_u32 v4, v13, 12, 0
	v_cndmask_b32_e64 v7, v75, v7, s2
	v_cndmask_b32_e64 v59, v59, v93, s2
	ds_store_2addr_b32 v70, v46, v29 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v5, v61 offset1:32
	v_xad_u32 v5, v13, 16, 0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v192, 16, v192
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v126, v128, v190, v24
	v_fma_f32 v10, v10, v144, v72
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v43, v43, v108, s2
	v_cndmask_b32_e64 v26, v26, v124, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v194, 16, v194
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v11, v145, v71
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v74, v8, s2
	v_cndmask_b32_e64 v58, v58, v94, s2
	v_cndmask_b32_e64 v42, v42, v109, s2
	v_cndmask_b32_e64 v25, v25, v125, s2
	ds_store_2addr_b32 v3, v45, v28 offset0:64 offset1:96
	ds_store_2addr_b32 v4, v6, v60 offset1:32
	v_xad_u32 v3, v13, 20, 0
	v_cndmask_b32_e64 v9, v73, v9, s2
	v_cndmask_b32_e64 v57, v57, v95, s2
	ds_store_2addr_b32 v4, v44, v27 offset0:64 offset1:96
	ds_store_2addr_b32 v5, v7, v59 offset1:32
	v_xad_u32 v4, v13, 24, 0
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v128, v130, v192, v22
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v41, v41, v110, s2
	v_cndmask_b32_e64 v24, v24, v126, s2
	v_cndmask_b32_e64 v10, v72, v10, s2
	v_cndmask_b32_e64 v56, v56, v96, s2
	v_cndmask_b32_e64 v40, v40, v111, s2
	v_cndmask_b32_e64 v23, v23, v127, s2
	ds_store_2addr_b32 v5, v43, v26 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v8, v58 offset1:32
	v_xad_u32 v5, v13, 28, 0
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v130, v132, v194, v20
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v71, v11, s2
	v_cndmask_b32_e64 v55, v55, v97, s2
	ds_store_2addr_b32 v3, v42, v25 offset0:64 offset1:96
	ds_store_2addr_b32 v4, v9, v57 offset1:32
	v_xad_u32 v3, v13, 32, 0
	v_cndmask_b32_e64 v39, v39, v112, s2
	v_cndmask_b32_e64 v37, v37, v113, s2
	v_cndmask_b32_e64 v22, v22, v128, s2
	v_cndmask_b32_e64 v21, v21, v129, s2
	ds_store_2addr_b32 v4, v41, v24 offset0:64 offset1:96
	ds_store_2addr_b32 v5, v10, v56 offset1:32
	v_xad_u32 v4, v13, 36, 0
	v_cndmask_b32_e64 v69, v69, v83, s2
	v_cndmask_b32_e64 v54, v54, v98, s2
	v_cndmask_b32_e64 v53, v53, v99, s2
	ds_store_2addr_b32 v5, v40, v23 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v11, v55 offset1:32
	v_xad_u32 v5, v13, 40, 0
	v_cndmask_b32_e64 v36, v36, v114, s2
	v_cndmask_b32_e64 v20, v20, v130, s2
	ds_store_2addr_b32 v3, v39, v22 offset0:64 offset1:96
	ds_store_2addr_b32 v4, v38, v54 offset1:32
	ds_store_2addr_b32 v4, v37, v21 offset0:64 offset1:96
	ds_store_2addr_b32 v5, v69, v53 offset1:32
	ds_store_2addr_b32 v5, v36, v20 offset0:64 offset1:96
	v_and_b32_e32 v5, 60, v14
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v196, 16, v196
	v_lshlrev_b32_e32 v197, 16, v197
	v_lshlrev_b32_e32 v79, 16, v79
	v_lshlrev_b32_e32 v81, 16, v81
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v1, v1, 2, v5
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v132, v134, v196, v18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v68, v68, v84, s2
	v_cndmask_b32_e64 v52, v52, v100, s2
	v_cndmask_b32_e64 v35, v35, v115, s2
	v_xad_u32 v3, v13, 44, 0
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v133, v135, v197, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v5, 6, v0
	v_xor_b32_e32 v1, v1, v2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v79, v137, v79, v12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v67, v67, v85, s2
	v_cndmask_b32_e64 v51, v51, v101, s2
	v_cndmask_b32_e64 v34, v34, v116, s2
	v_cndmask_b32_e64 v18, v18, v132, s2
	v_xad_u32 v4, v13, 48, 0
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v81, v136, v81, v16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v66, v66, v86, s2
	v_cndmask_b32_e64 v50, v50, v102, s2
	ds_store_2addr_b32 v3, v68, v52 offset1:32
	ds_store_2addr_b32 v3, v35, v15 offset0:64 offset1:96
	v_xad_u32 v3, v13, 52, 0
	v_cndmask_b32_e64 v64, v64, v88, s2
	v_cndmask_b32_e64 v48, v48, v80, s2
	v_cndmask_b32_e64 v33, v33, v117, s2
	v_cndmask_b32_e64 v17, v17, v133, s2
	v_xad_u32 v2, v13, 60, 0
	v_and_or_b32 v1, v5, 64, v1
	v_cndmask_b32_e64 v65, v65, v87, s2
	v_cndmask_b32_e64 v49, v49, v103, s2
	v_cndmask_b32_e64 v31, v31, v119, s2
	v_cndmask_b32_e64 v12, v12, v79, s2
	ds_store_2addr_b32 v4, v67, v51 offset1:32
	ds_store_2addr_b32 v4, v34, v18 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v66, v50 offset1:32
	v_xad_u32 v4, v13, 56, 0
	v_cndmask_b32_e64 v32, v32, v118, s2
	v_cndmask_b32_e64 v16, v16, v81, s2
	ds_store_2addr_b32 v3, v33, v17 offset0:64 offset1:96
	ds_store_2addr_b32 v4, v65, v49 offset1:32
	ds_store_2addr_b32 v4, v32, v16 offset0:64 offset1:96
	ds_store_2addr_b32 v2, v64, v48 offset1:32
	ds_store_2addr_b32 v2, v31, v12 offset0:64 offset1:96
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, 0x810, v1, 0
	v_xad_u32 v4, 0x1020, v1, 0
	v_xad_u32 v1, 0x1830, v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v2
	ds_load_b32 v3, v3
	ds_load_b32 v4, v4
	ds_load_b32 v1, v1
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_mul_lo_u32 v5, s35, v199
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v0, 0x7f, v0
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s2, s34, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s33
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	v_add3_u32 v0, s2, v0, v5
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_mov_b32 s2, s6
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b32_e32 v5, 2, v0
	v_add_lshl_u32 v6, v0, s4, 2
	v_add_lshl_u32 v7, v0, s5, 2
	v_add_lshl_u32 v0, v0, s8, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v2, v5, s[0:3], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v3, v6, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v4, v7, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v1, v0, s[0:3], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk
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
		.amdhsa_next_free_vgpr 242
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.num_vgpr, 242
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10516
; TotalNumSgprs: 49
; NumVgprs: 242
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 242
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
	.byte	181                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     242
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
