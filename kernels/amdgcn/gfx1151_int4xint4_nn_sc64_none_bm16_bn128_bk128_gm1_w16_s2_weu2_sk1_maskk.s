	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v91, 15, v0
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v17, 31, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v8, 3, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v100, 0, v8
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s26, 15
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
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s7, s9, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s16, s7, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s6, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s16
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s17, s7
	s_abs_i32 s18, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v1, 3, v91
	s_mov_b32 s11, 0x31027000
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s39, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 220 34 is_stmt 0              ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[4:5], null, s27, v3, v[1:2]
	.loc	1 121 13 is_stmt 1              ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s10
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s16
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s18, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s7
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s38, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s18, s18, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s18, s7
	s_cmp_ge_u32 s18, s7
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s18, s7
	s_cselect_b32 s5, s19, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s7, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s18, s5, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s7
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s18, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s7, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s5, s16
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s19, s3, 5
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v5, s19, v17
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s33, s2, 4
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v6, s19, v3
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_or_b32_e32 v7, s33, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s26, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s6, s20, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s7, v5
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 32, v5
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s7, v6
	.loc	1 198 51                        ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 32, v6
	.loc	1 216 34 is_stmt 1              ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[5:6], null, v7, s7, v[5:6]
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s6, s6, 6
.Ltmp21:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s21, s27, s19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v4, s21, s26, v4
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s3, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s37, s37, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u8 v6, v5, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b64 v[4:5], v4, s[36:39], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v7, 24, v3
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0x7f
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v7, v7, v0
	v_add_nc_u32_e32 v99, 0, v7
	s_waitcnt vmcnt(1)
	ds_store_b8 v99, v6 offset:4096
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v100, v[4:5]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[30:31], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
.LBB0_3:                                ; %Flow715
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[24:25], s[0:1], 0x20
	v_bfe_u32 v92, v0, 4, 1
	v_dual_mov_b32 v27, 0 :: v_dual_lshlrev_b32 v98, 1, v0
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v96, 0, v91
	v_or_b32_e32 v97, 0x3f0, v0
	v_or_b32_e32 v95, 0x7f0, v0
	v_or_b32_e32 v94, 0xbf0, v0
	v_or_b32_e32 v93, 0xff0, v0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v90, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s0, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s1, s19, 32
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v4, 24, v98
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v8, s1, v3
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v9, s33, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v4, v91, 5, v4
	v_mul_lo_u32 v8, s27, v8
	v_sub_nc_u32_e32 v101, s7, v3
	s_lshl_b32 s19, s18, 8
	v_mul_lo_u32 v3, s6, v9
	s_lshl_b32 s18, s18, 7
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v2, s33, v2
	v_xor_b32_e32 v5, 8, v4
	v_add3_u32 v1, v8, s18, v1
	v_xor_b32_e32 v6, 16, v4
	v_xor_b32_e32 v7, 24, v4
	s_mov_b32 s16, 0
	s_lshl_b32 s20, s17, 8
	s_lshl_b32 s17, s17, 7
	v_mad_u64_u32 v[18:19], null, s7, v2, v[17:18]
	s_sub_i32 s34, s19, s20
	v_subrev_nc_u32_e32 v104, s17, v1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v103, 1, v3
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v105, 0, v4
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v106, 0, v5
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v107, 0, v6
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v108, 0, v7
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v1, s16
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v102, 1, v92
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v109, 0, v97
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v110, 0, v95
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v111, 0, v94
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v112, 0, v93
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v6, s21
	v_mov_b32_e32 v8, s23
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b64 s[28:29], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s5, s0, 1
	s_lshl_b32 s35, s27, 1
	s_lshl_b32 s48, s27, 5
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_add_nc_u32_e32 v9, s1, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s5, s5, -1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s7, v9
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v9, s1, v18
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s1, v101
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s1, s1, 32
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u8 v113, v9, s[8:11], 0 offen
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v114, v103, s[44:47], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v96 offset:640
	ds_load_u8 v10, v96 offset:512
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[23:24], v105 offset:4096
	ds_load_b64 v[25:26], v106 offset:4096
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v103, 2, v103
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:896
	ds_load_u8 v11, v96 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:128
	ds_load_u8 v12, v96
	v_lshl_or_b32 v20, v10, 16, v9
	ds_load_u8 v9, v96 offset:1664
	ds_load_u8 v10, v96 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:384
	ds_load_u8 v13, v96 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v12, 16, v11
	ds_load_u8 v10, v96 offset:1920
	ds_load_u8 v11, v96 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1152
	ds_load_u8 v12, v96 offset:1024
	v_lshl_or_b32 v22, v10, 16, v9
	ds_load_u8 v9, v96 offset:2688
	ds_load_u8 v10, v96 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1408
	ds_load_u8 v13, v96 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v12, 16, v11
	ds_load_u8 v10, v96 offset:2944
	ds_load_u8 v11, v96 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2176
	ds_load_u8 v12, v96 offset:2048
	v_lshl_or_b32 v116, v10, 16, v9
	ds_load_u8 v9, v96 offset:3712
	ds_load_u8 v10, v96 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2432
	ds_load_u8 v13, v96 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v12, 16, v11
	ds_load_u8 v10, v96 offset:3968
	ds_load_u8 v11, v96 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:3200
	ds_load_u8 v12, v96 offset:3072
	v_lshl_or_b32 v118, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3456
	ds_load_u8 v13, v96 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[23:24], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[19:20], v108 offset:4096
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[25:26], v[9:16] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[21:22], v107 offset:4096
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[19:20], v[9:16] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v122, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v121, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v96 offset:656
	ds_load_u8 v10, v96 offset:528
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v120, v11
	v_cvt_f32_i32_e32 v119, v12
	v_cvt_f32_i32_e32 v118, v13
	v_cvt_f32_i32_e32 v117, v14
	v_cvt_f32_i32_e32 v116, v15
	v_cvt_f32_i32_e32 v115, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:912
	ds_load_u8 v11, v96 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:16
	ds_load_u8 v12, v96 offset:144
	v_lshl_or_b32 v124, v10, 16, v9
	ds_load_u8 v9, v96 offset:1680
	ds_load_u8 v10, v96 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v96 offset:400
	ds_load_u8 v13, v96 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v12, 16, v11
	ds_load_u8 v10, v96 offset:1936
	ds_load_u8 v11, v96 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1168
	ds_load_u8 v12, v96 offset:1040
	v_lshl_or_b32 v126, v10, 16, v9
	ds_load_u8 v9, v96 offset:2704
	ds_load_u8 v10, v96 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1424
	ds_load_u8 v13, v96 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v125, v12, 16, v11
	ds_load_u8 v10, v96 offset:2960
	ds_load_u8 v11, v96 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2192
	ds_load_u8 v12, v96 offset:2064
	v_lshl_or_b32 v128, v10, 16, v9
	ds_load_u8 v9, v96 offset:3728
	ds_load_u8 v10, v96 offset:3600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2448
	ds_load_u8 v13, v96 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v127, v12, 16, v11
	ds_load_u8 v10, v96 offset:3984
	ds_load_u8 v11, v96 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:3216
	ds_load_u8 v12, v96 offset:3088
	v_lshl_or_b32 v130, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3472
	ds_load_u8 v13, v96 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v129, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[123:124], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[129:130], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v130, v9
	v_cvt_f32_i32_e32 v129, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v96 offset:672
	ds_load_u8 v10, v96 offset:544
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v128, v11
	v_cvt_f32_i32_e32 v127, v12
	v_cvt_f32_i32_e32 v126, v13
	v_cvt_f32_i32_e32 v125, v14
	v_cvt_f32_i32_e32 v124, v15
	v_cvt_f32_i32_e32 v123, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:928
	ds_load_u8 v11, v96 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:32
	ds_load_u8 v12, v96 offset:160
	v_lshl_or_b32 v132, v10, 16, v9
	ds_load_u8 v9, v96 offset:1696
	ds_load_u8 v10, v96 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v96 offset:416
	ds_load_u8 v13, v96 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v12, 16, v11
	ds_load_u8 v10, v96 offset:1952
	ds_load_u8 v11, v96 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1184
	ds_load_u8 v12, v96 offset:1056
	v_lshl_or_b32 v134, v10, 16, v9
	ds_load_u8 v9, v96 offset:2720
	ds_load_u8 v10, v96 offset:2592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1440
	ds_load_u8 v13, v96 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v12, 16, v11
	ds_load_u8 v10, v96 offset:2976
	ds_load_u8 v11, v96 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2208
	ds_load_u8 v12, v96 offset:2080
	v_lshl_or_b32 v136, v10, 16, v9
	ds_load_u8 v9, v96 offset:3744
	ds_load_u8 v10, v96 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2464
	ds_load_u8 v13, v96 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v12, 16, v11
	ds_load_u8 v10, v96 offset:4000
	ds_load_u8 v11, v96 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:3232
	ds_load_u8 v12, v96 offset:3104
	v_lshl_or_b32 v138, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3488
	ds_load_u8 v13, v96 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[133:134], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v138, v9
	v_cvt_f32_i32_e32 v137, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v96 offset:688
	ds_load_u8 v10, v96 offset:560
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v136, v11
	v_cvt_f32_i32_e32 v135, v12
	v_cvt_f32_i32_e32 v134, v13
	v_cvt_f32_i32_e32 v133, v14
	v_cvt_f32_i32_e32 v132, v15
	v_cvt_f32_i32_e32 v131, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:944
	ds_load_u8 v11, v96 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:48
	ds_load_u8 v12, v96 offset:176
	v_lshl_or_b32 v140, v10, 16, v9
	ds_load_u8 v9, v96 offset:1712
	ds_load_u8 v10, v96 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v96 offset:432
	ds_load_u8 v13, v96 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v12, 16, v11
	ds_load_u8 v10, v96 offset:1968
	ds_load_u8 v11, v96 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1200
	ds_load_u8 v12, v96 offset:1072
	v_lshl_or_b32 v142, v10, 16, v9
	ds_load_u8 v9, v96 offset:2736
	ds_load_u8 v10, v96 offset:2608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1456
	ds_load_u8 v13, v96 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v12, 16, v11
	ds_load_u8 v10, v96 offset:2992
	ds_load_u8 v11, v96 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2224
	ds_load_u8 v12, v96 offset:2096
	v_lshl_or_b32 v144, v10, 16, v9
	ds_load_u8 v9, v96 offset:3760
	ds_load_u8 v10, v96 offset:3632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2480
	ds_load_u8 v13, v96 offset:2352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v12, 16, v11
	ds_load_u8 v10, v96 offset:4016
	ds_load_u8 v11, v96 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:3248
	ds_load_u8 v12, v96 offset:3120
	v_lshl_or_b32 v146, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3504
	ds_load_u8 v13, v96 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v145, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[145:146], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v146, v9
	v_cvt_f32_i32_e32 v145, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v96 offset:704
	ds_load_u8 v10, v96 offset:576
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v144, v11
	v_cvt_f32_i32_e32 v143, v12
	v_cvt_f32_i32_e32 v142, v13
	v_cvt_f32_i32_e32 v141, v14
	v_cvt_f32_i32_e32 v140, v15
	v_cvt_f32_i32_e32 v139, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:960
	ds_load_u8 v11, v96 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:192
	ds_load_u8 v12, v96 offset:64
	v_lshl_or_b32 v148, v10, 16, v9
	ds_load_u8 v9, v96 offset:1728
	ds_load_u8 v10, v96 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:448
	ds_load_u8 v13, v96 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v12, 16, v11
	ds_load_u8 v10, v96 offset:1984
	ds_load_u8 v11, v96 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1216
	ds_load_u8 v12, v96 offset:1088
	v_lshl_or_b32 v150, v10, 16, v9
	ds_load_u8 v9, v96 offset:2752
	ds_load_u8 v10, v96 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1472
	ds_load_u8 v13, v96 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v12, 16, v11
	ds_load_u8 v10, v96 offset:3008
	ds_load_u8 v11, v96 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2240
	ds_load_u8 v12, v96 offset:2112
	v_lshl_or_b32 v152, v10, 16, v9
	ds_load_u8 v9, v96 offset:3776
	ds_load_u8 v10, v96 offset:3648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2496
	ds_load_u8 v13, v96 offset:2368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v12, 16, v11
	ds_load_u8 v10, v96 offset:4032
	ds_load_u8 v11, v96 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:3264
	ds_load_u8 v12, v96 offset:3136
	v_lshl_or_b32 v154, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3520
	ds_load_u8 v13, v96 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[149:150], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v154, v9
	v_cvt_f32_i32_e32 v153, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v96 offset:720
	ds_load_u8 v10, v96 offset:592
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v152, v11
	v_cvt_f32_i32_e32 v151, v12
	v_cvt_f32_i32_e32 v150, v13
	v_cvt_f32_i32_e32 v149, v14
	v_cvt_f32_i32_e32 v148, v15
	v_cvt_f32_i32_e32 v147, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:976
	ds_load_u8 v11, v96 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:208
	ds_load_u8 v12, v96 offset:80
	v_lshl_or_b32 v156, v10, 16, v9
	ds_load_u8 v9, v96 offset:1744
	ds_load_u8 v10, v96 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:464
	ds_load_u8 v13, v96 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v155, v12, 16, v11
	ds_load_u8 v10, v96 offset:2000
	ds_load_u8 v11, v96 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1232
	ds_load_u8 v12, v96 offset:1104
	v_lshl_or_b32 v158, v10, 16, v9
	ds_load_u8 v9, v96 offset:2768
	ds_load_u8 v10, v96 offset:2640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1488
	ds_load_u8 v13, v96 offset:1360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v12, 16, v11
	ds_load_u8 v10, v96 offset:3024
	ds_load_u8 v11, v96 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2256
	ds_load_u8 v12, v96 offset:2128
	v_lshl_or_b32 v160, v10, 16, v9
	ds_load_u8 v9, v96 offset:3792
	ds_load_u8 v10, v96 offset:3664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2512
	ds_load_u8 v13, v96 offset:2384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v12, 16, v11
	ds_load_u8 v10, v96 offset:4048
	ds_load_u8 v11, v96 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:3280
	ds_load_u8 v12, v96 offset:3152
	v_lshl_or_b32 v162, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3536
	ds_load_u8 v13, v96 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v161, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[155:156], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[161:162], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v162, v9
	v_cvt_f32_i32_e32 v161, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v96 offset:736
	ds_load_u8 v10, v96 offset:608
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v160, v11
	v_cvt_f32_i32_e32 v159, v12
	v_cvt_f32_i32_e32 v158, v13
	v_cvt_f32_i32_e32 v157, v14
	v_cvt_f32_i32_e32 v156, v15
	v_cvt_f32_i32_e32 v155, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:992
	ds_load_u8 v11, v96 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:224
	ds_load_u8 v12, v96 offset:96
	v_lshl_or_b32 v164, v10, 16, v9
	ds_load_u8 v9, v96 offset:1760
	ds_load_u8 v10, v96 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:480
	ds_load_u8 v13, v96 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v12, 16, v11
	ds_load_u8 v10, v96 offset:2016
	ds_load_u8 v11, v96 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1248
	ds_load_u8 v12, v96 offset:1120
	v_lshl_or_b32 v166, v10, 16, v9
	ds_load_u8 v9, v96 offset:2784
	ds_load_u8 v10, v96 offset:2656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1504
	ds_load_u8 v13, v96 offset:1376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v12, 16, v11
	ds_load_u8 v10, v96 offset:3040
	ds_load_u8 v11, v96 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2272
	ds_load_u8 v12, v96 offset:2144
	v_lshl_or_b32 v168, v10, 16, v9
	ds_load_u8 v9, v96 offset:3808
	ds_load_u8 v10, v96 offset:3680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2528
	ds_load_u8 v13, v96 offset:2400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v12, 16, v11
	ds_load_u8 v10, v96 offset:4064
	ds_load_u8 v11, v96 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:3296
	ds_load_u8 v12, v96 offset:3168
	v_lshl_or_b32 v170, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3552
	ds_load_u8 v13, v96 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v169, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[163:164], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[165:166], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[167:168], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v170, v9
	v_cvt_f32_i32_e32 v169, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v96 offset:240
	ds_load_u8 v10, v96 offset:112
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v168, v11
	v_cvt_f32_i32_e32 v167, v12
	v_cvt_f32_i32_e32 v166, v13
	v_cvt_f32_i32_e32 v165, v14
	v_cvt_f32_i32_e32 v164, v15
	v_cvt_f32_i32_e32 v163, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:496
	ds_load_u8 v11, v96 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:752
	ds_load_u8 v12, v96 offset:624
	v_lshl_or_b32 v171, v10, 16, v9
	ds_load_u8 v9, v96 offset:1264
	ds_load_u8 v10, v96 offset:1136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v109
	ds_load_u8 v13, v96 offset:880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v12, 16, v11
	ds_load_u8 v10, v96 offset:1520
	ds_load_u8 v11, v96 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1776
	ds_load_u8 v12, v96 offset:1648
	v_lshl_or_b32 v173, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v110
	ds_load_u8 v13, v96 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[171:172], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v23, v96 offset:2288
	ds_load_u8 v24, v96 offset:2160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v96 offset:2544
	ds_load_u8 v25, v96 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v96 offset:2800
	ds_load_u8 v26, v96 offset:2672
	v_lshl_or_b32 v23, v24, 16, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v111
	ds_load_u8 v171, v96 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v171, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v21, v96 offset:3312
	ds_load_u8 v22, v96 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v96 offset:3568
	ds_load_u8 v23, v96 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v96 offset:3824
	ds_load_u8 v24, v96 offset:3696
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v112
	ds_load_u8 v25, v96 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[19:20], v[9:16] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v20, 0x80000000, v104, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v104, s48, v104
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v19, v9
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b64 v[20:21], v20, s[36:39], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v12
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v14, v16
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v16, s34, v102
	s_clause 0x1f
	buffer_load_u16 v22, v16, s[40:43], 0 offen
	buffer_load_u16 v23, v16, s[40:43], 0 offen offset:4
	buffer_load_u16 v24, v16, s[40:43], 0 offen offset:8
	buffer_load_u16 v25, v16, s[40:43], 0 offen offset:12
	buffer_load_u16 v26, v16, s[40:43], 0 offen offset:16
	buffer_load_u16 v171, v16, s[40:43], 0 offen offset:20
	buffer_load_u16 v172, v16, s[40:43], 0 offen offset:24
	buffer_load_u16 v173, v16, s[40:43], 0 offen offset:28
	buffer_load_u16 v174, v16, s[40:43], 0 offen offset:32
	buffer_load_u16 v175, v16, s[40:43], 0 offen offset:36
	buffer_load_u16 v176, v16, s[40:43], 0 offen offset:40
	buffer_load_u16 v177, v16, s[40:43], 0 offen offset:44
	buffer_load_u16 v178, v16, s[40:43], 0 offen offset:48
	buffer_load_u16 v179, v16, s[40:43], 0 offen offset:52
	buffer_load_u16 v180, v16, s[40:43], 0 offen offset:56
	buffer_load_u16 v181, v16, s[40:43], 0 offen offset:60
	buffer_load_u16 v182, v16, s[40:43], 0 offen offset:64
	buffer_load_u16 v183, v16, s[40:43], 0 offen offset:68
	buffer_load_u16 v184, v16, s[40:43], 0 offen offset:72
	buffer_load_u16 v185, v16, s[40:43], 0 offen offset:76
	buffer_load_u16 v186, v16, s[40:43], 0 offen offset:80
	buffer_load_u16 v187, v16, s[40:43], 0 offen offset:84
	buffer_load_u16 v188, v16, s[40:43], 0 offen offset:88
	buffer_load_u16 v189, v16, s[40:43], 0 offen offset:92
	buffer_load_u16 v190, v16, s[40:43], 0 offen offset:96
	buffer_load_u16 v191, v16, s[40:43], 0 offen offset:100
	buffer_load_u16 v192, v16, s[40:43], 0 offen offset:104
	buffer_load_u16 v193, v16, s[40:43], 0 offen offset:108
	buffer_load_u16 v194, v16, s[40:43], 0 offen offset:112
	buffer_load_u16 v195, v16, s[40:43], 0 offen offset:116
	buffer_load_u16 v196, v16, s[40:43], 0 offen offset:120
	buffer_load_u16 v197, v16, s[40:43], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v198, v16, s[40:43], 0 offen offset:128
	buffer_load_u16 v199, v16, s[40:43], 0 offen offset:132
	buffer_load_u16 v200, v16, s[40:43], 0 offen offset:136
	buffer_load_u16 v201, v16, s[40:43], 0 offen offset:140
	buffer_load_u16 v202, v16, s[40:43], 0 offen offset:144
	buffer_load_u16 v203, v16, s[40:43], 0 offen offset:148
	buffer_load_u16 v204, v16, s[40:43], 0 offen offset:152
	buffer_load_u16 v205, v16, s[40:43], 0 offen offset:156
	buffer_load_u16 v206, v16, s[40:43], 0 offen offset:160
	buffer_load_u16 v207, v16, s[40:43], 0 offen offset:164
	buffer_load_u16 v208, v16, s[40:43], 0 offen offset:168
	buffer_load_u16 v209, v16, s[40:43], 0 offen offset:172
	buffer_load_u16 v210, v16, s[40:43], 0 offen offset:176
	buffer_load_u16 v211, v16, s[40:43], 0 offen offset:180
	buffer_load_u16 v212, v16, s[40:43], 0 offen offset:184
	buffer_load_u16 v213, v16, s[40:43], 0 offen offset:188
	buffer_load_u16 v214, v16, s[40:43], 0 offen offset:192
	buffer_load_u16 v215, v16, s[40:43], 0 offen offset:196
	buffer_load_u16 v216, v16, s[40:43], 0 offen offset:200
	buffer_load_u16 v217, v16, s[40:43], 0 offen offset:204
	buffer_load_u16 v218, v16, s[40:43], 0 offen offset:208
	buffer_load_u16 v219, v16, s[40:43], 0 offen offset:212
	buffer_load_u16 v220, v16, s[40:43], 0 offen offset:216
	buffer_load_u16 v221, v16, s[40:43], 0 offen offset:220
	buffer_load_u16 v222, v16, s[40:43], 0 offen offset:224
	buffer_load_u16 v223, v16, s[40:43], 0 offen offset:228
	buffer_load_u16 v224, v16, s[40:43], 0 offen offset:232
	buffer_load_u16 v225, v16, s[40:43], 0 offen offset:236
	buffer_load_u16 v226, v16, s[40:43], 0 offen offset:240
	buffer_load_u16 v227, v16, s[40:43], 0 offen offset:244
	buffer_load_u16 v228, v16, s[40:43], 0 offen offset:248
	buffer_load_u16 v16, v16, s[40:43], 0 offen offset:252
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s34, s34, s35
	s_cmp_lg_u32 s5, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_store_b8 v99, v113 offset:4096
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b64 v100, v[20:21]
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v20, 16, v114
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v122
	v_mul_f32_e32 v19, v20, v19
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v79, v21, v22
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(62)
	v_dual_mul_f32 v21, v20, v121 :: v_dual_lshlrev_b32 v22, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v90, v21, v22 :: v_dual_mul_f32 v21, v20, v120
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v22, 16, v24
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(60)
	v_dual_fmac_f32 v89, v21, v22 :: v_dual_lshlrev_b32 v22, 16, v25
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v88, v21, v22
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v118
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v22, 16, v26
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v87, v21, v22
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(58)
	v_dual_mul_f32 v21, v20, v117 :: v_dual_lshlrev_b32 v22, 16, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v86, v21, v22 :: v_dual_mul_f32 v21, v20, v116
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v22, 16, v172
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(56)
	v_dual_fmac_f32 v85, v21, v22 :: v_dual_lshlrev_b32 v22, 16, v173
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v84, v21, v22
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v130
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v22, 16, v174
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v83, v21, v22
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(54)
	v_dual_mul_f32 v21, v20, v129 :: v_dual_lshlrev_b32 v22, 16, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v82, v21, v22 :: v_dual_mul_f32 v21, v20, v128
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(53)
	v_lshlrev_b32_e32 v22, 16, v176
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(52)
	v_dual_fmac_f32 v81, v21, v22 :: v_dual_lshlrev_b32 v22, 16, v177
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v80, v21, v22
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v126
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(51)
	v_lshlrev_b32_e32 v22, 16, v178
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v77, v21, v22
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(50)
	v_dual_mul_f32 v21, v20, v125 :: v_dual_lshlrev_b32 v22, 16, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v78, v21, v22 :: v_dual_mul_f32 v21, v20, v124
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v22, 16, v180
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(48)
	v_dual_fmac_f32 v75, v21, v22 :: v_dual_lshlrev_b32 v22, 16, v181
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v76, v21, v22
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v138
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v22, 16, v182
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v73, v21, v22
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(46)
	v_dual_mul_f32 v21, v20, v137 :: v_dual_lshlrev_b32 v22, 16, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v74, v21, v22 :: v_dual_mul_f32 v21, v20, v136
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v22, 16, v184
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(44)
	v_dual_fmac_f32 v71, v21, v22 :: v_dual_lshlrev_b32 v22, 16, v185
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v72, v21, v22
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v134
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v22, 16, v186
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v69, v21, v22
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(42)
	v_dual_mul_f32 v21, v20, v133 :: v_dual_lshlrev_b32 v22, 16, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v70, v21, v22 :: v_dual_mul_f32 v21, v20, v132
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v22, 16, v188
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(40)
	v_dual_fmac_f32 v67, v21, v22 :: v_dual_lshlrev_b32 v22, 16, v189
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v68, v21, v22
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v146
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v22, 16, v190
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v65, v21, v22
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(38)
	v_dual_mul_f32 v21, v20, v145 :: v_dual_lshlrev_b32 v22, 16, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v66, v21, v22 :: v_dual_mul_f32 v21, v20, v144
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v22, 16, v192
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(36)
	v_dual_fmac_f32 v63, v21, v22 :: v_dual_lshlrev_b32 v22, 16, v193
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v64, v21, v22
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v142
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v22, 16, v194
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v61, v21, v22
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(34)
	v_dual_mul_f32 v21, v20, v141 :: v_dual_lshlrev_b32 v22, 16, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v62, v21, v22 :: v_dual_mul_f32 v21, v20, v140
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v22, 16, v196
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(32)
	v_dual_fmac_f32 v59, v21, v22 :: v_dual_lshlrev_b32 v22, 16, v197
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v60, v21, v22
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v154
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v22, 16, v198
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v57, v21, v22
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v21, v20, v153 :: v_dual_lshlrev_b32 v22, 16, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v58, v21, v22 :: v_dual_mul_f32 v21, v20, v152
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v22, 16, v200
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(28)
	v_dual_fmac_f32 v55, v21, v22 :: v_dual_lshlrev_b32 v22, 16, v201
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v56, v21, v22
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v150
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v22, 16, v202
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v53, v21, v22
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v21, v20, v149 :: v_dual_lshlrev_b32 v22, 16, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v54, v21, v22 :: v_dual_mul_f32 v21, v20, v148
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v22, 16, v204
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(24)
	v_dual_fmac_f32 v51, v21, v22 :: v_dual_lshlrev_b32 v22, 16, v205
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v52, v21, v22
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v162
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v22, 16, v206
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v49, v21, v22
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v21, v20, v161 :: v_dual_lshlrev_b32 v22, 16, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v50, v21, v22 :: v_dual_mul_f32 v21, v20, v160
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v22, 16, v208
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(20)
	v_dual_fmac_f32 v47, v21, v22 :: v_dual_lshlrev_b32 v22, 16, v209
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v48, v21, v22
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v158
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v22, 16, v210
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v45, v21, v22
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v21, v20, v157 :: v_dual_lshlrev_b32 v22, 16, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v46, v21, v22 :: v_dual_mul_f32 v21, v20, v156
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v22, 16, v212
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(16)
	v_dual_fmac_f32 v43, v21, v22 :: v_dual_lshlrev_b32 v22, 16, v213
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v44, v21, v22
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v170
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v22, 16, v214
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v41, v21, v22
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v21, v20, v169 :: v_dual_lshlrev_b32 v22, 16, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v42, v21, v22 :: v_dual_mul_f32 v21, v20, v168
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v22, 16, v216
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v39, v21, v22 :: v_dual_lshlrev_b32 v22, 16, v217
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v40, v21, v22
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v166
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v22, 16, v218
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v37, v21, v22
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v21, v20, v165 :: v_dual_lshlrev_b32 v22, 16, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v38, v21, v22 :: v_dual_mul_f32 v21, v20, v164
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v22, 16, v220
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v35, v21, v22 :: v_dual_lshlrev_b32 v22, 16, v221
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v20, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v36, v21, v22
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v21, 16, v222
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v33, v19, v21
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v9, v20, v9
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v19, 16, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v34, v9, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v9, v20, v11
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v11, 16, v224
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v31, v9, v11
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v9, v20, v10 :: v_dual_lshlrev_b32 v10, 16, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v32, v9, v10 :: v_dual_mul_f32 v9, v20, v13
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v10, 16, v226
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v30, v9, v10 :: v_dual_mul_f32 v9, v20, v12
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v10, 16, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v29, v9, v10
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v9, v20, v15 :: v_dual_lshlrev_b32 v10, 16, v228
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v28, v9, v10
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v9, v20, v14 :: v_dual_lshlrev_b32 v10, 16, v16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v27, v9, v10
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow716
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s6, v91
	s_mul_i32 s1, s33, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s0, 0
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v11, 16, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, s1, v1, 1
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	buffer_load_u16 v12, v1, s[28:31], 0 offen
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v169, 0
	v_mov_b32_e32 v168, 0
	s_mov_b32 s4, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v1, v96 offset:640
	ds_load_u8 v3, v96 offset:512
	ds_load_u8 v2, v96 offset:896
	ds_load_u8 v4, v96 offset:768
	ds_load_u8 v5, v96 offset:128
	ds_load_u8 v6, v96
	ds_load_u8 v7, v96 offset:384
	ds_load_u8 v8, v96 offset:256
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v9, 24, v98
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v94, 0, v94
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v122, v96 offset:880
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v93, 0, v93
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v121, v96 offset:624
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshl_or_b32 v13, v91, 5, v9
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v94, v94
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	ds_load_u8 v98, v96 offset:112
	ds_load_u8 v117, v96 offset:496
	ds_load_u8 v118, v96 offset:752
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v9, 0, v13
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	v_lshl_or_b32 v24, v2, 16, v1
	ds_load_u8 v1, v96 offset:1664
	ds_load_u8 v2, v96 offset:1536
	ds_load_u8 v99, v96 offset:1552
	ds_load_u8 v131, v96 offset:1520
	ds_load_u8 v100, v96 offset:1680
	ds_load_u8 v135, v96 offset:1648
	ds_load_u8 v123, v96 offset:240
	ds_load_u8 v130, v96 offset:368
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[9:10], v9 offset:4096
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v23, v4, 16, v3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v95, 0, v95
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v93, v93
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v96 offset:1920
	ds_load_u8 v3, v96 offset:1792
	ds_load_u8 v101, v96 offset:1808
	ds_load_u8 v141, v96 offset:1776
	ds_load_u8 v102, v96 offset:1936
	ds_load_u8 v142, v96 offset:1904
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v96 offset:1152
	ds_load_u8 v4, v96 offset:1024
	ds_load_u8 v103, v96 offset:1040
	ds_load_u8 v152, v96 offset:992
	ds_load_u8 v104, v96 offset:1168
	ds_load_u8 v143, v96 offset:1136
	v_lshl_or_b32 v26, v2, 16, v1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v1, v13, 8, 0
	ds_load_b64 v[163:164], v1 offset:4096
	v_xad_u32 v1, v13, 16, 0
	v_xad_u32 v13, v13, 24, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v96 offset:1408
	ds_load_u8 v5, v96 offset:1280
	ds_load_u8 v105, v96 offset:1296
	ds_load_u8 v169, v96 offset:1264
	ds_load_u8 v106, v96 offset:1424
	ds_load_u8 v170, v96 offset:1392
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[165:166], v1 offset:4096
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v4, 16, v3
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_mov_b32_e32 v7, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[163:164], v[15:22] neg_lo:[1,1,0]
	ds_load_u8 v14, v96 offset:2688
	ds_load_u8 v23, v96 offset:2560
	ds_load_u8 v25, v96 offset:2576
	ds_load_u8 v114, v96 offset:2592
	ds_load_u8 v171, v96 offset:2544
	ds_load_u8 v26, v96 offset:2704
	ds_load_u8 v115, v96 offset:2720
	ds_load_u8 v172, v96 offset:2672
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v14, v23, v14, 0xc0c0004
	ds_load_u8 v23, v96 offset:2944
	ds_load_u8 v24, v96 offset:2816
	ds_load_u8 v107, v96 offset:2832
	ds_load_u8 v116, v96 offset:2848
	ds_load_u8 v173, v96 offset:2800
	ds_load_u8 v108, v96 offset:2960
	ds_load_u8 v119, v96 offset:2976
	ds_load_u8 v174, v96 offset:2928
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v96 offset:2176
	ds_load_u8 v109, v96 offset:2048
	ds_load_u8 v110, v96 offset:2064
	ds_load_u8 v120, v96 offset:2080
	ds_load_u8 v153, v96 offset:2016
	ds_load_u8 v111, v96 offset:2192
	ds_load_u8 v124, v96 offset:2208
	ds_load_u8 v175, v96 offset:2160
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v94, v174, v94, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v109, v109, v24, 0xc0c0004
	ds_load_u8 v24, v96 offset:2432
	ds_load_u8 v112, v96 offset:2304
	ds_load_u8 v113, v96 offset:2320
	ds_load_u8 v125, v96 offset:2336
	ds_load_u8 v176, v96 offset:2288
	ds_load_u8 v126, v96 offset:2448
	ds_load_u8 v127, v96 offset:2464
	ds_load_u8 v177, v96 offset:2416
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v112, v112, v24, 0xc0c0004
	v_lshl_or_b32 v24, v23, 16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v112, 16, v109
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[165:166], v[15:22] neg_lo:[1,1,0]
	ds_load_u8 v14, v96 offset:3712
	ds_load_u8 v23, v96 offset:3584
	ds_load_u8 v109, v96 offset:3600
	ds_load_u8 v128, v96 offset:3616
	ds_load_u8 v129, v96 offset:3632
	ds_load_u8 v178, v96 offset:3568
	ds_load_u8 v112, v96 offset:3728
	ds_load_u8 v132, v96 offset:3744
	ds_load_u8 v133, v96 offset:3760
	ds_load_u8 v179, v96 offset:3696
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v23, v14, 0xc0c0004
	ds_load_u8 v23, v96 offset:3968
	ds_load_u8 v24, v96 offset:3840
	ds_load_u8 v134, v96 offset:3856
	ds_load_u8 v136, v96 offset:3872
	ds_load_u8 v137, v96 offset:3888
	ds_load_u8 v180, v96 offset:3824
	ds_load_u8 v138, v96 offset:3984
	ds_load_u8 v139, v96 offset:4000
	ds_load_u8 v140, v96 offset:4016
	ds_load_u8 v181, v96 offset:3952
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v96 offset:3200
	ds_load_u8 v144, v96 offset:3072
	ds_load_u8 v145, v96 offset:3088
	ds_load_u8 v146, v96 offset:3104
	ds_load_u8 v154, v96 offset:3120
	ds_load_u8 v161, v96 offset:3040
	ds_load_u8 v147, v96 offset:3216
	ds_load_u8 v148, v96 offset:3232
	ds_load_u8 v155, v96 offset:3248
	ds_load_u8 v182, v96 offset:3184
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v93, v181, v93, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v144, v144, v24, 0xc0c0004
	ds_load_u8 v24, v96 offset:3456
	ds_load_u8 v149, v96 offset:3328
	ds_load_u8 v150, v96 offset:3344
	ds_load_u8 v151, v96 offset:3360
	ds_load_u8 v156, v96 offset:3376
	ds_load_u8 v183, v96 offset:3312
	ds_load_u8 v157, v96 offset:3472
	ds_load_u8 v158, v96 offset:3488
	ds_load_u8 v159, v96 offset:3504
	ds_load_u8 v184, v96 offset:3440
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v149, v149, v24, 0xc0c0004
	v_lshl_or_b32 v24, v23, 16, v14
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v14, 0, v97
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v185, v14
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[167:168], v13 offset:4096
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v23, v149, 16, v144
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[167:168], v[15:22] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v13, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v15, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v19, v21
	v_cvt_f32_i32_e32 v20, v22
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v21, v96 offset:528
	ds_load_u8 v22, v96 offset:656
	ds_load_u8 v97, v96 offset:672
	ds_load_u8 v144, v96 offset:688
	ds_load_u8 v160, v96 offset:704
	ds_load_u8 v162, v96 offset:720
	ds_load_u8 v186, v96 offset:736
	ds_load_u8 v149, v96 offset:544
	ds_load_u8 v187, v96 offset:560
	ds_load_u8 v188, v96 offset:576
	ds_load_u8 v189, v96 offset:592
	ds_load_u8 v190, v96 offset:608
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v21, v21, v22, 0xc0c0004
	ds_load_u8 v22, v96 offset:784
	ds_load_u8 v23, v96 offset:912
	ds_load_u8 v191, v96 offset:928
	ds_load_u8 v192, v96 offset:944
	ds_load_u8 v193, v96 offset:960
	ds_load_u8 v194, v96 offset:976
	ds_load_u8 v195, v96 offset:800
	ds_load_u8 v196, v96 offset:816
	ds_load_u8 v197, v96 offset:832
	ds_load_u8 v198, v96 offset:848
	ds_load_u8 v199, v96 offset:864
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v97, v149, v97, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v22, v22, v23, 0xc0c0004
	ds_load_u8 v23, v96 offset:16
	ds_load_u8 v24, v96 offset:144
	ds_load_u8 v200, v96 offset:160
	ds_load_u8 v201, v96 offset:176
	ds_load_u8 v202, v96 offset:192
	ds_load_u8 v203, v96 offset:208
	ds_load_u8 v204, v96 offset:224
	ds_load_u8 v205, v96 offset:32
	ds_load_u8 v206, v96 offset:48
	ds_load_u8 v207, v96 offset:64
	ds_load_u8 v208, v96 offset:80
	ds_load_u8 v209, v96 offset:96
	v_lshl_or_b32 v22, v22, 16, v21
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v23, v23, v24, 0xc0c0004
	ds_load_u8 v24, v96 offset:272
	ds_load_u8 v210, v96 offset:400
	ds_load_u8 v211, v96 offset:416
	ds_load_u8 v212, v96 offset:432
	ds_load_u8 v213, v96 offset:448
	ds_load_u8 v214, v96 offset:464
	ds_load_u8 v215, v96 offset:480
	ds_load_u8 v216, v96 offset:288
	ds_load_u8 v217, v96 offset:304
	ds_load_u8 v218, v96 offset:320
	ds_load_u8 v219, v96 offset:336
	ds_load_u8 v220, v96 offset:352
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v24, v24, v210, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v21, v24, 16, v23
	v_perm_b32 v23, v99, v100, 0xc0c0004
	v_perm_b32 v24, v101, v102, 0xc0c0004
	v_perm_b32 v99, v103, v104, 0xc0c0004
	v_perm_b32 v100, v105, v106, 0xc0c0004
	v_lshl_or_b32 v24, v24, 16, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v23, v100, 16, v99
	v_wmma_i32_16x16x16_iu4 v[99:106], v[21:22], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v21, v25, v26, 0xc0c0004
	v_perm_b32 v22, v107, v108, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[99:106], v[23:24], v[163:164], v[99:106] neg_lo:[1,1,0]
	v_perm_b32 v23, v110, v111, 0xc0c0004
	v_perm_b32 v24, v113, v126, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v22, v22, 16, v21
	v_lshl_or_b32 v21, v24, 16, v23
	v_perm_b32 v23, v145, v147, 0xc0c0004
	v_perm_b32 v24, v150, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[21:22], v[165:166], v[99:106] neg_lo:[1,1,0]
	v_perm_b32 v21, v109, v112, 0xc0c0004
	v_perm_b32 v22, v134, v138, 0xc0c0004
	v_lshl_or_b32 v22, v22, 16, v21
	v_lshl_or_b32 v21, v24, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[21:22], v[167:168], v[99:106] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v25, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v24, v103
	v_cvt_f32_i32_e32 v23, v104
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v101, v195, v191, 0xc0c0004
	v_perm_b32 v103, v205, v200, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v104, v216, v211, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v21, v99
	v_cvt_f32_i32_e32 v99, v102
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v102, v101, 16, v97
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v26, v105
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v101, v104, 16, v103
	ds_load_u8 v97, v96 offset:1568
	ds_load_u8 v103, v96 offset:1696
	ds_load_u8 v126, v96 offset:1712
	ds_load_u8 v134, v96 offset:1728
	ds_load_u8 v138, v96 offset:1744
	ds_load_u8 v157, v96 offset:1760
	ds_load_u8 v145, v96 offset:1584
	ds_load_u8 v191, v96 offset:1600
	ds_load_u8 v195, v96 offset:1616
	ds_load_u8 v200, v96 offset:1632
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v22, v100
	v_cvt_f32_i32_e32 v100, v106
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v97, v97, v103, 0xc0c0004
	ds_load_u8 v103, v96 offset:1824
	ds_load_u8 v104, v96 offset:1952
	ds_load_u8 v147, v96 offset:1968
	ds_load_u8 v205, v96 offset:1984
	ds_load_u8 v210, v96 offset:2000
	ds_load_u8 v149, v96 offset:1840
	ds_load_u8 v211, v96 offset:1856
	ds_load_u8 v216, v96 offset:1872
	ds_load_u8 v221, v96 offset:1888
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v103, v103, v104, 0xc0c0004
	ds_load_u8 v104, v96 offset:1056
	ds_load_u8 v105, v96 offset:1184
	ds_load_u8 v150, v96 offset:1200
	ds_load_u8 v222, v96 offset:1216
	ds_load_u8 v223, v96 offset:1232
	ds_load_u8 v224, v96 offset:1248
	ds_load_u8 v225, v96 offset:1072
	ds_load_u8 v226, v96 offset:1088
	ds_load_u8 v227, v96 offset:1104
	ds_load_u8 v228, v96 offset:1120
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v105, v104, v105, 0xc0c0004
	ds_load_u8 v104, v96 offset:1312
	ds_load_u8 v106, v96 offset:1440
	ds_load_u8 v229, v96 offset:1456
	ds_load_u8 v230, v96 offset:1472
	ds_load_u8 v231, v96 offset:1488
	ds_load_u8 v232, v96 offset:1504
	ds_load_u8 v233, v96 offset:1328
	ds_load_u8 v234, v96 offset:1344
	ds_load_u8 v235, v96 offset:1360
	ds_load_u8 v236, v96 offset:1376
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v106, v104, v106, 0xc0c0004
	v_lshl_or_b32 v104, v103, 16, v97
	v_perm_b32 v97, v114, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v103, v106, 16, v105
	v_wmma_i32_16x16x16_iu4 v[106:113], v[101:102], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v101, v116, v119, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v114, v233, v229, 0xc0c0004
	v_perm_b32 v119, v197, v193, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[106:113], v[103:104], v[163:164], v[106:113] neg_lo:[1,1,0]
	v_perm_b32 v103, v120, v124, 0xc0c0004
	v_perm_b32 v104, v125, v127, 0xc0c0004
	v_lshl_or_b32 v102, v101, 16, v97
	v_perm_b32 v97, v128, v132, 0xc0c0004
	v_perm_b32 v124, v207, v202, 0xc0c0004
	v_perm_b32 v125, v218, v213, 0xc0c0004
	v_lshl_or_b32 v101, v104, 16, v103
	v_perm_b32 v103, v146, v148, 0xc0c0004
	v_perm_b32 v104, v151, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[101:102], v[165:166], v[106:113] neg_lo:[1,1,0]
	v_perm_b32 v101, v136, v139, 0xc0c0004
	v_lshl_or_b32 v102, v101, 16, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v101, v104, 16, v103
	v_perm_b32 v97, v187, v144, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[106:113], v[101:102], v[167:168], v[106:113] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v103, v106
	v_cvt_f32_i32_e32 v104, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v107, v109
	v_cvt_f32_i32_e32 v102, v111
	v_cvt_f32_i32_e32 v106, v112
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v109, v196, v192, 0xc0c0004
	v_perm_b32 v111, v206, v201, 0xc0c0004
	v_perm_b32 v112, v217, v212, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v101, v110
	v_cvt_f32_i32_e32 v105, v113
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v110, v109, 16, v97
	v_perm_b32 v97, v145, v126, 0xc0c0004
	v_lshl_or_b32 v109, v112, 16, v111
	v_perm_b32 v111, v149, v147, 0xc0c0004
	v_perm_b32 v113, v225, v150, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v108, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[144:151], v[109:110], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v112, v111, 16, v97
	ds_load_u8 v97, v96 offset:2608
	ds_load_u8 v109, v96 offset:2736
	ds_load_u8 v126, v96 offset:2752
	ds_load_u8 v136, v96 offset:2768
	ds_load_u8 v187, v96 offset:2784
	ds_load_u8 v127, v96 offset:2624
	ds_load_u8 v139, v96 offset:2640
	ds_load_u8 v192, v96 offset:2656
	v_lshl_or_b32 v111, v114, 16, v113
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[111:112], v[163:164], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v97, v97, v109, 0xc0c0004
	ds_load_u8 v109, v96 offset:2864
	ds_load_u8 v110, v96 offset:2992
	ds_load_u8 v128, v96 offset:3008
	ds_load_u8 v158, v96 offset:3024
	ds_load_u8 v132, v96 offset:2880
	ds_load_u8 v196, v96 offset:2896
	ds_load_u8 v201, v96 offset:2912
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v109, v109, v110, 0xc0c0004
	ds_load_u8 v110, v96 offset:2096
	ds_load_u8 v111, v96 offset:2224
	ds_load_u8 v206, v96 offset:2240
	ds_load_u8 v212, v96 offset:2256
	ds_load_u8 v217, v96 offset:2272
	ds_load_u8 v225, v96 offset:2112
	ds_load_u8 v229, v96 offset:2128
	ds_load_u8 v233, v96 offset:2144
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v111, v110, v111, 0xc0c0004
	ds_load_u8 v110, v96 offset:2352
	ds_load_u8 v112, v96 offset:2480
	ds_load_u8 v237, v96 offset:2496
	ds_load_u8 v238, v96 offset:2512
	ds_load_u8 v239, v96 offset:2528
	ds_load_u8 v240, v96 offset:2368
	ds_load_u8 v241, v96 offset:2384
	ds_load_u8 v242, v96 offset:2400
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v112, v110, v112, 0xc0c0004
	v_lshl_or_b32 v110, v109, 16, v97
	v_perm_b32 v97, v129, v133, 0xc0c0004
	v_perm_b32 v129, v226, v222, 0xc0c0004
	v_perm_b32 v133, v234, v230, 0xc0c0004
	v_lshl_or_b32 v109, v112, 16, v111
	v_perm_b32 v111, v154, v155, 0xc0c0004
	v_perm_b32 v112, v156, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[109:110], v[165:166], v[144:151] neg_lo:[1,1,0]
	v_perm_b32 v109, v137, v140, 0xc0c0004
	v_lshl_or_b32 v110, v109, 16, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v109, v112, 16, v111
	v_perm_b32 v97, v188, v160, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[144:151], v[109:110], v[167:168], v[144:151] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v120, v119, 16, v97
	v_lshl_or_b32 v119, v125, 16, v124
	v_perm_b32 v97, v191, v134, 0xc0c0004
	v_perm_b32 v124, v211, v205, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v109, v144
	v_cvt_f32_i32_e32 v111, v145
	v_cvt_f32_i32_e32 v113, v146
	v_cvt_f32_i32_e32 v114, v147
	v_cvt_f32_i32_e32 v110, v148
	v_cvt_f32_i32_e32 v112, v149
	v_cvt_f32_i32_e32 v115, v150
	v_cvt_f32_i32_e32 v116, v151
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v125, v124, 16, v97
	v_lshl_or_b32 v124, v133, 16, v129
	v_wmma_i32_16x16x16_iu4 v[144:151], v[119:120], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v97, v127, v126, 0xc0c0004
	v_perm_b32 v119, v132, v128, 0xc0c0004
	v_perm_b32 v132, v208, v203, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[124:125], v[163:164], v[144:151] neg_lo:[1,1,0]
	v_perm_b32 v124, v225, v206, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v125, v240, v237, 0xc0c0004
	v_lshl_or_b32 v120, v119, 16, v97
	v_perm_b32 v133, v219, v214, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v125, 16, v124
	v_wmma_i32_16x16x16_iu4 v[144:151], v[119:120], v[165:166], v[144:151] neg_lo:[1,1,0]
	ds_load_u8 v97, v96 offset:3648
	ds_load_u8 v119, v96 offset:3776
	ds_load_u8 v134, v96 offset:3792
	ds_load_u8 v188, v96 offset:3808
	ds_load_u8 v137, v96 offset:3664
	ds_load_u8 v191, v96 offset:3680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v97, v97, v119, 0xc0c0004
	ds_load_u8 v119, v96 offset:4032
	ds_load_u8 v120, v96 offset:3904
	ds_load_u8 v140, v96 offset:3920
	ds_load_u8 v193, v96 offset:3936
	ds_load_u8 v154, v96 offset:4048
	ds_load_u8 v197, v96 offset:4064
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v96 offset:3136
	ds_load_u8 v124, v96 offset:3264
	ds_load_u8 v155, v96 offset:3280
	ds_load_u8 v202, v96 offset:3296
	ds_load_u8 v156, v96 offset:3152
	ds_load_u8 v205, v96 offset:3168
	v_lshl_or_b32 v97, v119, 16, v97
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v120, v120, v124, 0xc0c0004
	ds_load_u8 v124, v96 offset:3392
	ds_load_u8 v125, v96 offset:3520
	ds_load_u8 v159, v96 offset:3536
	ds_load_u8 v206, v96 offset:3552
	ds_load_u8 v160, v96 offset:3408
	ds_load_u8 v207, v96 offset:3424
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v96, v124, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v120
	v_wmma_i32_16x16x16_iu4 v[144:151], v[96:97], v[167:168], v[144:151] neg_lo:[1,1,0]
	v_perm_b32 v96, v189, v162, 0xc0c0004
	v_perm_b32 v97, v198, v194, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v119, v144
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v144, v235, v231, 0xc0c0004
	v_lshl_or_b32 v97, v97, 16, v96
	v_lshl_or_b32 v96, v133, 16, v132
	v_perm_b32 v132, v195, v138, 0xc0c0004
	v_perm_b32 v133, v216, v210, 0xc0c0004
	v_perm_b32 v138, v227, v223, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v120, v145
	v_cvt_f32_i32_e32 v126, v146
	v_cvt_f32_i32_e32 v128, v147
	v_cvt_f32_i32_e32 v125, v148
	v_cvt_f32_i32_e32 v124, v149
	v_cvt_f32_i32_e32 v127, v150
	v_cvt_f32_i32_e32 v129, v151
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v133, v133, 16, v132
	v_lshl_or_b32 v132, v144, 16, v138
	v_wmma_i32_16x16x16_iu4 v[144:151], v[96:97], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v96, v139, v136, 0xc0c0004
	v_perm_b32 v97, v196, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[132:133], v[163:164], v[144:151] neg_lo:[1,1,0]
	v_perm_b32 v132, v229, v212, 0xc0c0004
	v_perm_b32 v133, v241, v238, 0xc0c0004
	v_lshl_or_b32 v97, v97, 16, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v96, v133, 16, v132
	v_perm_b32 v132, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v133, v160, v159, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[144:151], v[96:97], v[165:166], v[144:151] neg_lo:[1,1,0]
	v_perm_b32 v96, v137, v134, 0xc0c0004
	v_perm_b32 v97, v140, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v97, 16, v96
	v_lshl_or_b32 v96, v133, 16, v132
	v_wmma_i32_16x16x16_iu4 v[144:151], v[96:97], v[167:168], v[144:151] neg_lo:[1,1,0]
	v_perm_b32 v96, v190, v186, 0xc0c0004
	v_perm_b32 v97, v199, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v134, v144
	v_cvt_f32_i32_e32 v136, v145
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v144, v209, v204, 0xc0c0004
	v_perm_b32 v145, v220, v215, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v140, v146
	v_cvt_f32_i32_e32 v139, v147
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v97, v97, 16, v96
	v_perm_b32 v146, v228, v224, 0xc0c0004
	v_lshl_or_b32 v96, v145, 16, v144
	v_perm_b32 v144, v200, v157, 0xc0c0004
	v_perm_b32 v145, v221, v153, 0xc0c0004
	v_perm_b32 v147, v236, v232, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v132, v148
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[153:160], v[96:97], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v145, v145, 16, v144
	v_lshl_or_b32 v144, v147, 16, v146
	v_perm_b32 v96, v192, v187, 0xc0c0004
	v_perm_b32 v97, v201, v161, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v133, v149
	v_cvt_f32_i32_e32 v138, v150
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[153:160], v[144:145], v[163:164], v[153:160] neg_lo:[1,1,0]
	v_perm_b32 v144, v233, v217, 0xc0c0004
	v_perm_b32 v145, v242, v239, 0xc0c0004
	v_lshl_or_b32 v97, v97, 16, v96
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v137, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v96, v145, 16, v144
	v_perm_b32 v144, v205, v202, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v207, v206, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[153:160], v[96:97], v[165:166], v[153:160] neg_lo:[1,1,0]
	v_perm_b32 v96, v191, v188, 0xc0c0004
	v_perm_b32 v97, v193, v197, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v97, 16, v96
	v_lshl_or_b32 v96, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[153:160], v[96:97], v[167:168], v[153:160] neg_lo:[1,1,0]
	v_perm_b32 v97, v130, v117, 0xc0c0004
	ds_load_u8 v117, v95
	v_perm_b32 v96, v98, v123, 0xc0c0004
	v_perm_b32 v98, v121, v118, 0xc0c0004
	v_perm_b32 v118, v122, v185, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v150, v153
	v_cvt_f32_i32_e32 v152, v154
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v95, v97, 16, v96
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v154, v155
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v96, v118, 16, v98
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v151, v157
	v_cvt_f32_i32_e32 v153, v158
	v_cvt_f32_i32_e32 v161, v159
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[95:96], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v143, v169, 0xc0c0004
	v_perm_b32 v10, v170, v131, 0xc0c0004
	v_perm_b32 v95, v135, v141, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v162, v160
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v142, v117, 0xc0c0004
	v_lshl_or_b32 v9, v10, 16, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v10, v96, 16, v95
	v_perm_b32 v95, v172, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[163:164], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v175, v176, 0xc0c0004
	v_perm_b32 v10, v177, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v10, 16, v9
	v_lshl_or_b32 v10, v94, 16, v95
	v_perm_b32 v94, v179, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[165:166], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v182, v183, 0xc0c0004
	v_perm_b32 v10, v184, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v10, 16, v9
	v_lshl_or_b32 v10, v93, 16, v94
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[167:168], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v1
	v_cvt_f32_i32_e32 v166, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v167, v3
	v_cvt_f32_i32_e32 v168, v4
	v_cvt_f32_i32_e32 v4, v5
	v_cvt_f32_i32_e32 v3, v6
	v_cvt_f32_i32_e32 v5, v7
	v_cvt_f32_i32_e32 v169, v8
.LBB0_8:
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s27
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s9, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s26, s0
	s_mov_b32 s11, 0x31027000
	v_add_lshl_u32 v94, s0, v92, 1
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s8, s14
	.loc	1 245 18 is_stmt 1              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v96, s27, v91
	s_mul_i32 s33, s33, s27
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v2, 4, v94
	v_add_nc_u32_e32 v6, 8, v94
	v_add_nc_u32_e32 v7, 12, v94
	v_add_nc_u32_e32 v8, 16, v94
	v_cndmask_b32_e64 v1, 0x80000000, v94, s2
	v_add_nc_u32_e32 v10, 20, v94
	v_add_nc_u32_e32 v92, 24, v94
	v_add_nc_u32_e32 v93, 28, v94
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v95, 0x80000000, v92, s2
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	s_clause 0x7
	buffer_load_u16 v92, v1, s[8:11], 0 offen
	buffer_load_u16 v148, v2, s[8:11], 0 offen
	buffer_load_u16 v142, v6, s[8:11], 0 offen
	buffer_load_u16 v143, v7, s[8:11], 0 offen
	buffer_load_u16 v144, v8, s[8:11], 0 offen
	buffer_load_u16 v145, v10, s[8:11], 0 offen
	buffer_load_u16 v146, v95, s[8:11], 0 offen
	buffer_load_u16 v147, v93, s[8:11], 0 offen
	v_add_nc_u32_e32 v1, 32, v94
	v_add_nc_u32_e32 v2, 36, v94
	v_add_nc_u32_e32 v6, 40, v94
	v_add_nc_u32_e32 v7, 44, v94
	v_add_nc_u32_e32 v8, 52, v94
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	s_clause 0x4
	buffer_load_u16 v157, v1, s[8:11], 0 offen
	buffer_load_u16 v158, v2, s[8:11], 0 offen
	buffer_load_u16 v159, v6, s[8:11], 0 offen
	buffer_load_u16 v160, v7, s[8:11], 0 offen
	buffer_load_u16 v149, v8, s[8:11], 0 offen
	v_add_nc_u32_e32 v1, 48, v94
	v_add_nc_u32_e32 v6, 56, v94
	v_add_nc_u32_e32 v7, 60, v94
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v2.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(13)
	v_mov_b16_e32 v2.h, v12.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x2
	buffer_load_u16 v173, v6, s[8:11], 0 offen
	buffer_load_u16 v174, v7, s[8:11], 0 offen
	buffer_load_u16 v123, v1, s[8:11], 0 offen
	v_add_nc_u32_e32 v6, 64, v94
	v_add_nc_u32_e32 v7, 0x44, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v178, v15, v2
	v_mul_f32_e32 v175, v17, v2
	v_mul_f32_e32 v177, v14, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_load_u16 v191, v6, s[8:11], 0 offen
	buffer_load_u16 v192, v7, s[8:11], 0 offen
	v_add_nc_u32_e32 v6, 0x48, v94
	v_add_nc_u32_e32 v7, 0x4c, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v176, v18, v2
	v_mul_f32_e32 v184, v99, v2
	v_mul_f32_e32 v18, v156, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_load_u16 v194, v6, s[8:11], 0 offen
	buffer_load_u16 v195, v7, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v156.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v6, 0x50, v94
	v_add_nc_u32_e32 v7, 0x54, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v93, v140, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v199.h, v2.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v190, v104, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_load_u16 v140, v6, s[8:11], 0 offen
	buffer_load_u16 v196, v7, s[8:11], 0 offen
	v_add_nc_u32_e32 v6, 0x58, v94
	v_add_nc_u32_e32 v7, 0x5c, v94
	v_add_nc_u32_e32 v104, 0x8c, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v182, v22, v2
	v_mul_f32_e32 v98, v136, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e64 v104, 0x80000000, v104, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v15, v151, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v151.h, v2.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v186, v23, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v23, 0x60, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v8, v167, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v167.h, v2.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v171, v16, v2
	v_mul_f32_e32 v180, v20, v2
	v_mul_f32_e32 v20, v152, v2
	v_mul_f32_e32 v16, v153, v2
	v_mul_f32_e32 v10, v9, v2
	v_mul_f32_e32 v9, v168, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v168.h, v2.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v187, v26, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v26, 0x78, v94
	v_add_nc_u32_e32 v99, 0x80, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v172, v13, v2
	v_mul_f32_e32 v13, v161, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v161.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v193, v107, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v107, 0x90, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v170, v108, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v108, 0x94, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v141, v111, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v111, 0x98, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v122, v112, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v112, 0x9c, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v155, v106, v2
	v_mul_f32_e32 v163, v105, v2
	v_mul_f32_e32 v130, v113, v2
	v_mul_f32_e32 v131, v114, v2
	v_mul_f32_e32 v117, v115, v2
	v_mul_f32_e32 v118, v116, v2
	v_mul_f32_e32 v113, v119, v2
	v_mul_f32_e32 v114, v120, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v115, 0xa0, v94
	v_add_nc_u32_e32 v116, 0xa4, v94
	v_add_nc_u32_e32 v119, 0xa8, v94
	v_add_nc_u32_e32 v120, 0xac, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v164, v101, v2
	v_mul_f32_e32 v165, v102, v2
	v_mul_f32_e32 v135, v109, v2
	v_mul_f32_e32 v101, v127, v2
	v_mul_f32_e32 v102, v129, v2
	v_mul_f32_e32 v97, v134, v2
	v_mul_f32_e32 v22, v137, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v127, 0xc4, v94
	v_add_nc_u32_e32 v129, 0xcc, v94
	v_add_nc_u32_e32 v134, 0xe0, v94
	v_add_nc_u32_e32 v137, 0xe4, v94
	v_cndmask_b32_e64 v107, 0x80000000, v107, s2
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	v_cndmask_b32_e64 v115, 0x80000000, v115, s2
	v_cndmask_b32_e64 v116, 0x80000000, v116, s2
	v_cndmask_b32_e64 v212, 0x80000000, v127, s2
	v_cndmask_b32_e64 v214, 0x80000000, v129, s2
	v_cndmask_b32_e64 v218, 0x80000000, v134, s2
	v_cndmask_b32_e64 v219, 0x80000000, v137, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v95, v139, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v139.h, v2.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v14, v162, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v162.h, v2.l
	v_mov_b16_e64 v198.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v204, 0xe8, v94
	v_add_nc_u32_e32 v205, 0xec, v94
	v_add_nc_u32_e32 v206, 0xf0, v94
	v_add_nc_u32_e32 v207, 0xf4, v94
	v_add_nc_u32_e32 v208, 0xf8, v94
	v_cndmask_b32_e64 v204, 0x80000000, v204, s2
	v_cndmask_b32_e64 v205, 0x80000000, v205, s2
	v_cndmask_b32_e64 v206, 0x80000000, v206, s2
	v_cndmask_b32_e64 v207, 0x80000000, v207, s2
	v_cndmask_b32_e64 v208, 0x80000000, v208, s2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v1, 1, v11
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s11
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v148, 16, v148
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v142, 16, v142
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v143, 16, v143
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v142, v175, v142, v89
	v_fma_f32 v143, v176, v143, v88
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v147, 16, v147
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v145, v178, v145, v86
	v_fma_f32 v148, v171, v148, v90
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v89, v89, v142, s2
	v_cndmask_b32_e64 v88, v88, v143, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v86, v86, v145, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v144, v177, v144, v87
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v156.l, v86.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v183, v25, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v151.l, v88.h
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v87, v87, v144, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v181, v21, v2 :: v_dual_and_b32 v144, 1, v156
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v159, v183, v159, v81
	v_fma_f32 v158, v182, v158, v82
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v161.l, v87.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v188, v100, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v100, 0x84, v94
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v142, v81, v159, s2
	v_cndmask_b32_e64 v82, v82, v158, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v25, v132, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v132, 0xd0, v94
	v_cndmask_b32_e64 v100, 0x80000000, v100, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v199.l, v142.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v189, v103, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v103, 0x88, v94
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v167.l, v82.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v185, v24, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v24, 0x64, v94
	s_clause 0x1
	buffer_load_u16 v209, v99, s[8:11], 0 offen
	buffer_load_u16 v210, v100, s[8:11], 0 offen
	v_cndmask_b32_e64 v103, 0x80000000, v103, s2
	s_clause 0x1
	buffer_load_u16 v216, v103, s[8:11], 0 offen
	buffer_load_u16 v217, v104, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v138, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v136, v6, s[8:11], 0 offen
	buffer_load_u16 v138, v7, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v6, v3, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v3, 0x80000000, v23, s2
	v_cndmask_b32_e64 v23, 0x80000000, v24, s2
	s_clause 0x1
	buffer_load_u16 v152, v3, s[8:11], 0 offen
	buffer_load_u16 v153, v23, s[8:11], 0 offen
	v_add_nc_u32_e32 v3, 0x68, v94
	v_add_nc_u32_e32 v23, 0x6c, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v7, v4, v2
	v_mul_f32_e32 v4, v5, v2
	v_mul_f32_e32 v5, v169, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	s_clause 0x1
	buffer_load_u16 v169, v3, s[8:11], 0 offen
	buffer_load_u16 v197, v23, s[8:11], 0 offen
	v_add_nc_u32_e32 v23, 0x70, v94
	v_add_nc_u32_e32 v24, 0x74, v94
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add3_u32 v3, s33, s26, v96
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v96, 0x7c, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v105, v125, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	s_clause 0x1
	buffer_load_u16 v200, v23, s[8:11], 0 offen
	buffer_load_u16 v201, v24, s[8:11], 0 offen
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	s_clause 0x1
	buffer_load_u16 v202, v26, s[8:11], 0 offen
	buffer_load_u16 v203, v96, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v106, v124, v2
	v_mul_f32_e32 v91, v133, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v124, 0xb8, v94
	v_add_nc_u32_e32 v125, 0xbc, v94
	v_add_nc_u32_e32 v133, 0xdc, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v121, v110, v2
	v_mul_f32_e32 v109, v126, v2
	v_mul_f32_e32 v110, v128, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v23, 0xb0, v94
	v_add_nc_u32_e32 v24, 0xb4, v94
	v_add_nc_u32_e32 v126, 0xc0, v94
	v_add_nc_u32_e32 v128, 0xc8, v94
	v_add_nc_u32_e32 v26, 0xd4, v94
	v_add_nc_u32_e32 v96, 0xd8, v94
	v_cndmask_b32_e64 v99, 0x80000000, v119, s2
	v_cndmask_b32_e64 v100, 0x80000000, v120, s2
	v_cndmask_b32_e64 v119, 0x80000000, v124, s2
	v_cndmask_b32_e64 v120, 0x80000000, v125, s2
	v_cndmask_b32_e64 v104, 0x80000000, v133, s2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_cndmask_b32_e64 v211, 0x80000000, v126, s2
	v_cndmask_b32_e64 v213, 0x80000000, v128, s2
	v_cndmask_b32_e64 v215, 0x80000000, v132, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	s_clause 0x13
	buffer_load_u16 v134, v107, s[8:11], 0 offen
	buffer_load_u16 v137, v108, s[8:11], 0 offen
	buffer_load_u16 v132, v111, s[8:11], 0 offen
	buffer_load_u16 v133, v112, s[8:11], 0 offen
	buffer_load_u16 v128, v115, s[8:11], 0 offen
	buffer_load_u16 v129, v116, s[8:11], 0 offen
	buffer_load_u16 v126, v99, s[8:11], 0 offen
	buffer_load_u16 v127, v100, s[8:11], 0 offen
	buffer_load_u16 v124, v23, s[8:11], 0 offen
	buffer_load_u16 v125, v24, s[8:11], 0 offen
	buffer_load_u16 v119, v119, s[8:11], 0 offen
	buffer_load_u16 v120, v120, s[8:11], 0 offen
	buffer_load_u16 v115, v211, s[8:11], 0 offen
	buffer_load_u16 v116, v212, s[8:11], 0 offen
	buffer_load_u16 v111, v213, s[8:11], 0 offen
	buffer_load_u16 v112, v214, s[8:11], 0 offen
	buffer_load_u16 v107, v215, s[8:11], 0 offen
	buffer_load_u16 v108, v26, s[8:11], 0 offen
	buffer_load_u16 v103, v96, s[8:11], 0 offen
	buffer_load_u16 v104, v104, s[8:11], 0 offen
	v_lshlrev_b32_e32 v211, 16, v92
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v160, v184, v160, v80
	v_fma_f32 v147, v180, v147, v84
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v90, v90, v148, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v12, v166, v2
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v172, v172, v211, v79
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v143, v80, v160, s2
	v_cndmask_b32_e64 v84, v84, v147, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v166.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v94, 0xfc, v94
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v79, v79, v172, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v198.l, v143.h
	v_mov_b16_e64 v162.l, v84.h
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v149, 16, v149
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v90, v90
	v_mov_b16_e64 v139.l, v79.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v179, v19, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v150, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v150.h, v2.l
	v_and_b32_e32 v80, 1, v139
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v146, v179, v146, v85
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v150.l, v90.h
	v_cmp_o_f32_e64 s4, v86, v86
	v_cmp_o_f32_e64 s6, v84, v84
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v85, v85, v146, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v80, 1, v151
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v157, v181, v157, v83
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v81, 1, v150
	v_and_b32_e32 v146, 1, v162
	v_mov_b16_e64 v166.l, v85.h
	v_cmp_o_f32_e64 s7, v85, v85
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v83, v83, v157, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v148, 1, v167
	v_and_b32_e32 v151, 1, v198
	v_and_b32_e32 v147, 1, v166
	v_add3_u32 v81, v90, v81, 0x7fff
	v_mov_b16_e64 v168.l, v83.h
	v_add3_u32 v86, v86, v144, 0x7fff
	v_add3_u32 v84, v84, v146, 0x7fff
	v_add3_u32 v85, v85, v147, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v220, 0x80000000, v94, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v150, 1, v168
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v99, v218, s[8:11], 0 offen
	buffer_load_u16 v100, v219, s[8:11], 0 offen
	buffer_load_u16 v94, v204, s[8:11], 0 offen
	buffer_load_u16 v96, v205, s[8:11], 0 offen
	buffer_load_u16 v92, v206, s[8:11], 0 offen
	buffer_load_u16 v26, v207, s[8:11], 0 offen
	buffer_load_u16 v23, v208, s[8:11], 0 offen
	buffer_load_u16 v24, v220, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v88, v88
	v_cmp_o_f32_e64 s8, v82, v82
	v_cmp_o_f32_e64 s9, v83, v83
	v_cndmask_b16 v79.l, 0x7fff, v79.h, vcc_lo
	v_add3_u32 v80, v88, v80, 0x7fff
	v_add3_u32 v88, v83, v150, 0x7fff
	v_add3_u32 v83, v82, v148, 0x7fff
	v_cndmask_b16 v79.h, 0x7fff, v81.h, s0
	v_cndmask_b16 v81.h, 0x7fff, v86.h, s4
	v_cndmask_b16 v82.h, 0x7fff, v84.h, s6
	v_cndmask_b16 v82.l, 0x7fff, v85.h, s7
	v_add3_u32 v84, v143, v151, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v85, 16, v123
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v86, v186, v149, v78
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v17, v154, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v154.h, v2.l
	v_mov_b16_e64 v154.l, v89.h
	v_and_b32_e32 v145, 1, v161
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v85, v185, v85, v77
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v86, v78, v86, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v78.h, 0x7fff, v84.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v84, 16, v174
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s5, v87, v87
	v_and_b32_e32 v139, 1, v154
	v_and_b32_e32 v154, 1, v199
	v_add3_u32 v87, v87, v145, 0x7fff
	v_cndmask_b16 v83.l, 0x7fff, v88.h, s9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v77, v77, v85, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v85.l, v86.h
	v_mov_b16_e32 v85.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v88, 16, v173
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v84, v188, v84, v76
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v89, v89
	v_add3_u32 v89, v89, v139, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v87.h, s5
	v_add3_u32 v87, v142, v154, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v142, v142
	v_and_b32_e32 v85, 1, v85
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v88, v187, v88, v75
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v76, v76, v84, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v80.l, 0x7fff, v89.h, s3
	v_mov_b16_e32 v89.l, v77.h
	v_mov_b16_e32 v89.h, v2.l
	v_cndmask_b16 v78.l, 0x7fff, v87.h, vcc_lo
	v_add3_u32 v85, v86, v85, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v87, v75, v88, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v75.l, v76.h
	v_mov_b16_e32 v75.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_and_b32_e32 v84, 1, v89
	v_mov_b16_e32 v86.l, v87.h
	v_mov_b16_e32 v86.h, v2.l
	v_and_b32_e32 v88, 1, v75
	v_cndmask_b16 v75.h, 0x7fff, v85.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v85, 16, v192
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v84, v77, v84, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_and_b32_e32 v77, 1, v86
	v_add3_u32 v86, v76, v88, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v88, 16, v191
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v85, v190, v85, v74
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v76, v76
	v_cndmask_b16 v75.l, 0x7fff, v84.h, vcc_lo
	v_add3_u32 v76, v87, v77, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v77, v189, v88, v73
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v84, v74, v85, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v85, 16, v195
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v74.h, 0x7fff, v86.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v86, 16, v194
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v73, v73, v77, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v77.l, v84.h
	v_mov_b16_e32 v77.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v85, v193, v85, v72
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v86, v170, v86, v71
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v87.l, v73.h
	v_and_b32_e32 v77, 1, v77
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v72, v72, v85, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v87.h, v2.l
	v_cndmask_b16 v74.l, 0x7fff, v76.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v85, v71, v86, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v77, v84, v77, 0x7fff
	v_mov_b16_e32 v71.l, v72.h
	v_mov_b16_e32 v71.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	v_and_b32_e32 v76, 1, v87
	v_mov_b16_e32 v84.l, v85.h
	v_mov_b16_e32 v84.h, v2.l
	v_and_b32_e32 v86, 1, v71
	v_cndmask_b16 v71.h, 0x7fff, v77.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v77, 16, v196
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v76, v73, v76, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_and_b32_e32 v73, 1, v84
	v_add3_u32 v84, v72, v86, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v86, 16, v140
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v77, v165, v77, v70
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v72, v72
	v_cndmask_b16 v71.l, 0x7fff, v76.h, vcc_lo
	v_add3_u32 v72, v85, v73, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v73, v164, v86, v69
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v76, v70, v77, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v70.h, 0x7fff, v84.h, s0
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_mov_b16_e32 v85.h, v2.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v69, v69, v73, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v73.l, v76.h
	v_mov_b16_e32 v73.h, v2.l
	v_cndmask_b16 v70.l, 0x7fff, v72.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_mov_b16_e32 v85.l, v69.h
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s1
	v_and_b32_e32 v73, 1, v73
	v_cndmask_b16 v83.h, 0x7fff, v83.h, s8
	s_mov_b32 s26, s10
	v_and_b32_e32 v72, 1, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v73, v76, v73, 0x7fff
	v_mov_b16_e32 v76.h, v2.l
	v_add3_u32 v72, v69, v72, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v84, 16, v136
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v77, 16, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v84, v155, v84, v67
	v_fma_f32 v77, v163, v77, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v68, v68, v77, s2
	v_cndmask_b32_e64 v77, v67, v84, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v67.h, v2.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v67.l, v68.h
	v_mov_b16_e32 v76.l, v77.h
	v_cmp_o_f32_e64 s0, v68, v68
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v84, 1, v67
	v_cndmask_b16 v67.h, 0x7fff, v73.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v73, 16, v153
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_and_b32_e32 v69, 1, v76
	v_add3_u32 v76, v68, v84, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v84, 16, v152
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v73, v141, v73, v66
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v67.l, 0x7fff, v72.h, vcc_lo
	v_add3_u32 v68, v77, v69, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v69, v135, v84, v65
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v72, v66, v73, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v73, 16, v197
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v66.h, 0x7fff, v76.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v76, 16, v169
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v65, v65, v69, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v69.l, v72.h
	v_mov_b16_e32 v69.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v73, v131, v73, v64
	v_fma_f32 v76, v130, v76, v63
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v77.l, v65.h
	v_mov_b16_e32 v77.h, v2.l
	v_and_b32_e32 v69, 1, v69
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v64, v64, v73, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v66.l, 0x7fff, v68.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v73, v63, v76, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v63.h, v2.l
	v_add3_u32 v69, v72, v69, 0x7fff
	v_mov_b16_e32 v63.l, v64.h
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_and_b32_e32 v68, 1, v77
	v_mov_b16_e32 v72.l, v73.h
	v_mov_b16_e32 v72.h, v2.l
	v_and_b32_e32 v76, 1, v63
	v_cndmask_b16 v63.h, 0x7fff, v69.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v69, 16, v201
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v68, v65, v68, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_and_b32_e32 v65, 1, v72
	v_add3_u32 v72, v64, v76, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v76, 16, v200
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v69, v122, v69, v62
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v64, v64
	v_cndmask_b16 v63.l, 0x7fff, v68.h, vcc_lo
	v_add3_u32 v64, v73, v65, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v65, v121, v76, v61
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v68, v62, v69, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v69, 16, v203
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v62.h, 0x7fff, v72.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v72, 16, v202
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v61, v61, v65, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v65.l, v68.h
	v_mov_b16_e32 v65.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v69, v118, v69, v60
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v72, v117, v72, v59
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v73.l, v61.h
	v_and_b32_e32 v65, 1, v65
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v60, v60, v69, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v73.h, v2.l
	v_cndmask_b16 v62.l, 0x7fff, v64.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v69, v59, v72, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v65, v68, v65, 0x7fff
	v_mov_b16_e32 v59.l, v60.h
	v_mov_b16_e32 v59.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_and_b32_e32 v64, 1, v73
	v_mov_b16_e32 v68.l, v69.h
	v_mov_b16_e32 v68.h, v2.l
	v_and_b32_e32 v72, 1, v59
	v_cndmask_b16 v59.h, 0x7fff, v65.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v65, 16, v210
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v64, v61, v64, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_and_b32_e32 v61, 1, v68
	v_add3_u32 v68, v60, v72, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v65, v114, v65, v58
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v72, 16, v209
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v60, v60
	v_cndmask_b16 v59.l, 0x7fff, v64.h, vcc_lo
	v_add3_u32 v60, v69, v61, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v64, v58, v65, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v65, 16, v217
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v61, v113, v72, v57
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v58.h, 0x7fff, v68.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v68, 16, v216
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v65, v110, v65, v56
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v57, v57, v61, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v61.l, v64.h
	v_mov_b16_e32 v61.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v68, v109, v68, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v56, v56, v65, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v69.l, v57.h
	v_mov_b16_e32 v69.h, v2.l
	v_and_b32_e32 v61, 1, v61
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v55, v55, v68, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v65.l, v56.h
	v_mov_b16_e32 v65.h, v2.l
	v_cndmask_b16 v58.l, 0x7fff, v60.h, vcc_lo
	v_and_b32_e32 v60, 1, v69
	v_add3_u32 v61, v64, v61, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	v_mov_b16_e32 v64.l, v55.h
	v_mov_b16_e32 v64.h, v2.l
	v_and_b32_e32 v65, 1, v65
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v68, 16, v137
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v60, v57, v60, 0x7fff
	v_cndmask_b16 v61.h, 0x7fff, v61.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_and_b32_e32 v57, 1, v64
	v_add3_u32 v64, v56, v65, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v65, 16, v134
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v68, v106, v68, v54
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v56, v56
	v_cndmask_b16 v61.l, 0x7fff, v60.h, vcc_lo
	v_add3_u32 v56, v55, v57, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v57, v105, v65, v53
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v54, v54, v68, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v55, 16, v133
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v60.h, 0x7fff, v64.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v53, v53, v57, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v57.l, v54.h
	v_mov_b16_e32 v57.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v64, 16, v132
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v55, v102, v55, v52
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v65.l, v53.h
	v_mov_b16_e32 v65.h, v2.l
	v_and_b32_e32 v57, 1, v57
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v64, v101, v64, v51
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v52, v52, v55, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v60.l, 0x7fff, v56.h, vcc_lo
	v_and_b32_e32 v55, 1, v65
	v_add3_u32 v56, v54, v57, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v51, v51, v64, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v57.l, v52.h
	v_mov_b16_e32 v57.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_add3_u32 v54, v53, v55, 0x7fff
	v_mov_b16_e32 v55.l, v51.h
	v_mov_b16_e32 v55.h, v2.l
	v_and_b32_e32 v57, 1, v57
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v64, 16, v129
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v56.h, 0x7fff, v56.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_and_b32_e32 v53, 1, v55
	v_add3_u32 v55, v52, v57, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v57, 16, v128
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v64, v98, v64, v50
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v52, v52
	v_cndmask_b16 v56.l, 0x7fff, v54.h, vcc_lo
	v_add3_u32 v52, v51, v53, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v53, v97, v57, v49
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v50, v50, v64, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v51, 16, v127
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v54.h, 0x7fff, v55.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v49, v49, v53, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v53.l, v50.h
	v_mov_b16_e32 v53.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v55, 16, v126
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v51, v95, v51, v48
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v57.l, v49.h
	v_mov_b16_e32 v57.h, v2.l
	v_and_b32_e32 v53, 1, v53
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v55, v93, v55, v47
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v48, v48, v51, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v54.l, 0x7fff, v52.h, vcc_lo
	v_and_b32_e32 v51, 1, v57
	v_add3_u32 v52, v50, v53, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v47, v47, v55, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v53.l, v48.h
	v_mov_b16_e32 v53.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_add3_u32 v50, v49, v51, 0x7fff
	v_mov_b16_e32 v51.l, v47.h
	v_mov_b16_e32 v51.h, v2.l
	v_and_b32_e32 v53, 1, v53
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v55, 16, v125
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v52.h, 0x7fff, v52.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_and_b32_e32 v49, 1, v51
	v_add3_u32 v51, v48, v53, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v53, 16, v124
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v55, v91, v55, v46
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v48, v48
	v_cndmask_b16 v52.l, 0x7fff, v50.h, vcc_lo
	v_add3_u32 v48, v47, v49, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v25, v25, v53, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v46, v55, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v47, 16, v120
	v_lshlrev_b32_e32 v50, 16, v119
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v45, v25, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v45.l, v46.h
	v_mov_b16_e32 v45.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v22, v22, v47, v44
	v_fma_f32 v21, v21, v50, v43
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v47.l, v25.h
	v_mov_b16_e32 v47.h, v2.l
	v_and_b32_e32 v45, 1, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v44, v22, s2
	v_cndmask_b32_e64 v21, v43, v21, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v49.l, 0x7fff, v48.h, vcc_lo
	v_and_b32_e32 v44, 1, v47
	v_add3_u32 v45, v46, v45, 0x7fff
	v_mov_b16_e32 v43.l, v22.h
	v_mov_b16_e32 v43.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_mov_b16_e32 v46.l, v21.h
	v_mov_b16_e32 v46.h, v2.l
	v_add3_u32 v44, v25, v44, 0x7fff
	v_and_b32_e32 v43, 1, v43
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v47, 16, v116
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_and_b32_e32 v25, 1, v46
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v46, 16, v115
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s0
	v_add3_u32 v43, v22, v43, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v20, v20, v47, v42
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v22, v22
	v_cndmask_b16 v45.l, 0x7fff, v44.h, vcc_lo
	v_add3_u32 v22, v21, v25, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v19, v46, v41
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v21, 16, v112
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v42, v20, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v42, 16, v111
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v41, v19, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v41.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v18, v18, v21, v40
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v41.l, v20.h
	v_mov_b16_e32 v21.h, v2.l
	v_mov_b16_e32 v21.l, v19.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v17, v17, v42, v39
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v18, v40, v18, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v41, 1, v41
	v_cndmask_b16 v25.l, 0x7fff, v22.h, vcc_lo
	v_and_b32_e32 v21, 1, v21
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v39, v17, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v39.l, v18.h
	v_mov_b16_e32 v39.h, v2.l
	v_add3_u32 v22, v20, v41, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v20, v19, v21, 0x7fff
	v_mov_b16_e32 v21.l, v17.h
	v_mov_b16_e32 v21.h, v2.l
	v_and_b32_e32 v39, 1, v39
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v40, 16, v108
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_and_b32_e32 v19, 1, v21
	v_add3_u32 v21, v18, v39, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v39, 16, v107
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v16, v16, v40, v38
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v25.h, 0x7fff, v43.h, s0
	v_cmp_o_f32_e64 s0, v18, v18
	v_cndmask_b16 v22.l, 0x7fff, v20.h, vcc_lo
	v_add3_u32 v18, v17, v19, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v15, v15, v39, v37
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v38, v16, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v17, 16, v104
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v37, v15, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v20.l, v16.h
	v_mov_b16_e32 v20.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v21, 16, v103
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v14, v14, v17, v36
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v17.l, v15.h
	v_mov_b16_e32 v17.h, v2.l
	v_and_b32_e32 v20, 1, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v13, v13, v21, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v36, v14, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v19.l, 0x7fff, v18.h, vcc_lo
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v18, v16, v20, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v13, v35, v13, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v20.l, v14.h
	v_mov_b16_e32 v20.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v16, v15, v17, 0x7fff
	v_mov_b16_e32 v17.l, v13.h
	v_mov_b16_e32 v17.h, v2.l
	v_and_b32_e32 v20, 1, v20
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v21, 16, v100
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_and_b32_e32 v15, 1, v17
	v_add3_u32 v17, v14, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v14, v14
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v12, v12, v21, v34
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v18.l, 0x7fff, v16.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v20, 16, v99
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v14, v13, v15, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v34, v12, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v16, 16, v96
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v10, v10, v20, v33
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v17, 16, v94
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_mov_b16_e32 v13.l, v12.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v16, v32
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v33, v10, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v13.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v8, v8, v17, v31
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v16.h, v2.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v32, v9, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v16.l, v10.h
	v_and_b32_e32 v13, 1, v13
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v31, v8, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v15.l, 0x7fff, v14.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_and_b32_e32 v14, 1, v16
	v_mov_b16_e32 v16.l, v9.h
	v_add3_u32 v13, v12, v13, 0x7fff
	v_mov_b16_e32 v12.l, v8.h
	v_mov_b16_e32 v12.h, v2.l
	v_add3_u32 v14, v10, v14, 0x7fff
	v_and_b32_e32 v16, 1, v16
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v10, 1, v12
	v_cmp_o_f32_e64 s0, v9, v9
	v_add3_u32 v12, v9, v16, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v92
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v13.l, 0x7fff, v14.h, vcc_lo
	v_add3_u32 v9, v8, v10, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v10, 16, v26
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v2.h, 0x7fff, v12.h, s0
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v16, v30
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v24
	v_lshlrev_b32_e32 v14, 16, v23
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v10, v29
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v30, v7, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v12, v27
	v_fma_f32 v4, v4, v14, v28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v29, v6, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v8.h, v2.l
	v_mov_b16_e32 v8.l, v7.h
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v27, v5, s2
	v_cndmask_b32_e64 v4, v28, v4, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v10.l, v6.h
	v_mov_b16_e32 v10.h, v2.l
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v12.l, v5.h
	v_mov_b16_e32 v14.l, v4.h
	v_mov_b16_e32 v14.h, v2.l
	v_mov_b16_e32 v12.h, v2.l
	v_and_b32_e32 v10, 1, v10
	v_cndmask_b16 v2.l, 0x7fff, v9.h, vcc_lo
	v_add3_u32 v8, v7, v8, 0x7fff
	v_and_b32_e32 v9, 1, v14
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v10, v6, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_cmp_o_f32_e64 s0, v7, v7
	v_add3_u32 v6, v4, v9, 0x7fff
	v_add3_u32 v7, v5, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v5, v5
	v_cmp_o_f32_e64 s2, v4, v4
	v_cndmask_b16 v4.h, 0x7fff, v10.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v7, v79, v81, vcc_lo
	v_cndmask_b32_e32 v36, v15, v19, vcc_lo
	v_cndmask_b32_e32 v15, v19, v15, vcc_lo
	v_dual_cndmask_b32 v37, v4, v13 :: v_dual_cndmask_b32 v4, v13, v4
	v_mov_b32_e32 v13, 0x5410
	v_dual_mov_b32 v19, 0x7632 :: v_dual_cndmask_b32 v38, v5, v2
	v_cndmask_b32_e32 v2, v2, v5, vcc_lo
	v_permlanex16_b32 v5, v7, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v7, 0x1054, v13, vcc_lo
	v_cndmask_b32_e32 v13, 0x3276, v19, vcc_lo
	v_cndmask_b32_e32 v9, v80, v82, vcc_lo
	v_dual_cndmask_b32 v11, v83, v75 :: v_dual_cndmask_b32 v14, v78, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v13, v13, 8, v13
	v_cndmask_b32_e32 v17, v71, v67, vcc_lo
	v_dual_cndmask_b32 v21, v70, v66 :: v_dual_cndmask_b32 v24, v63, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v13, 0x760076, v13
	v_cndmask_b32_e32 v29, v61, v56, vcc_lo
	v_cndmask_b32_e32 v33, v52, v45, vcc_lo
	v_cndmask_b32_e32 v35, v18, v22, vcc_lo
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v13, v13, 4, v13
	v_cndmask_b32_e32 v18, v22, v18, vcc_lo
	v_cndmask_b32_e32 v6, v81, v79, vcc_lo
	v_cndmask_b32_e32 v8, v82, v80, vcc_lo
	v_cndmask_b32_e32 v10, v75, v83, vcc_lo
	v_cndmask_b32_e32 v12, v74, v78, vcc_lo
	v_cndmask_b32_e32 v16, v67, v71, vcc_lo
	v_dual_cndmask_b32 v20, v66, v70 :: v_dual_cndmask_b32 v23, v59, v63
	v_dual_cndmask_b32 v27, v62, v58 :: v_dual_cndmask_b32 v28, v56, v61
	v_dual_cndmask_b32 v31, v60, v54 :: v_dual_cndmask_b32 v32, v45, v52
	v_cndmask_b32_e32 v34, v25, v49, vcc_lo
	v_cndmask_b32_e32 v25, v49, v25, vcc_lo
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v39, 0x5040504, v7
	v_and_b32_e32 v40, 0x7060706, v13
	v_permlanex16_b32 v33, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v5, v6, v39
	v_perm_b32 v5, v5, v6, v40
	v_perm_b32 v6, v9, v8, v39
	v_perm_b32 v7, v9, v8, v40
	v_perm_b32 v8, v11, v10, v39
	v_perm_b32 v9, v11, v10, v40
	v_perm_b32 v10, v14, v12, v39
	v_perm_b32 v11, v14, v12, v40
	v_perm_b32 v12, v17, v16, v39
	v_perm_b32 v13, v17, v16, v40
	v_perm_b32 v14, v19, v20, v39
	v_perm_b32 v15, v19, v20, v40
	v_perm_b32 v16, v21, v23, v39
	v_perm_b32 v17, v21, v23, v40
	v_perm_b32 v20, v24, v28, v39
	v_perm_b32 v21, v24, v28, v40
	v_perm_b32 v24, v29, v32, v39
	v_perm_b32 v25, v29, v32, v40
	v_and_b32_e32 v32, 0x1e0, v0
	v_perm_b32 v28, v33, v35, v39
	v_perm_b32 v29, v33, v35, v40
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v33, v3, v1, 1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b32_e32 v26, v58, v62, vcc_lo
	v_cndmask_b32_e32 v30, v54, v60, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v32
	v_permlanex16_b32 v43, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v3, 32, v33
	v_add_nc_u32_e32 v32, 64, v33
	v_perm_b32 v18, v22, v26, v39
	v_perm_b32 v19, v22, v26, v40
	v_perm_b32 v22, v27, v30, v39
	v_perm_b32 v23, v27, v30, v40
	v_perm_b32 v26, v31, v34, v39
	v_perm_b32 v27, v31, v34, v40
	v_dual_cndmask_b32 v34, 0x80000000, v33 :: v_dual_cndmask_b32 v35, 0x80000000, v3
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[4:7], v34, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v35, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v32, s[24:27], 0 offen
	v_add_nc_u32_e32 v4, 0x60, v33
	v_add_nc_u32_e32 v5, 0x80, v33
	v_add_nc_u32_e32 v6, 0xa0, v33
	v_add_nc_u32_e32 v7, 0xc0, v33
	v_add_nc_u32_e32 v8, 0xe0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_perm_b32 v30, v41, v36, v39
	v_perm_b32 v31, v41, v36, v40
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_perm_b32 v0, v42, v37, v39
	v_perm_b32 v1, v42, v37, v40
	v_perm_b32 v2, v43, v38, v39
	v_perm_b32 v3, v43, v38, v40
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[16:19], v4, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v5, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v6, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v7, s[24:27], 0 offen
	buffer_store_b128 v[0:3], v8, s[24:27], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 243
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 243
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21352
; TotalNumSgprs: 51
; NumVgprs: 243
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 243
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     243
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
