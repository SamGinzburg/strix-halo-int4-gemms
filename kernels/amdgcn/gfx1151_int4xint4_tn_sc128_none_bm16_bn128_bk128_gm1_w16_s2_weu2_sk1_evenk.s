	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s15, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v2, 7, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v10, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v108, 0, v9
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v109, 0, v10
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s22, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s12, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	s_sub_i32 s16, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s16
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s12, s16, s12
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s17, s4, 1
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s14, s17
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s12
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s13, s14
	s_abs_i32 s12, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s13
	v_readfirstlane_b32 s13, v1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 1, v2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v2, 4, v2
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s7, 0, s14
	s_mul_f32 s13, s13, 0x4f7ffffe
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[4:5], null, s22, v3, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s6, s13
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[5:6], null, s23, v3, v[2:3]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s18, s12, s6
	s_xor_b32 s6, s2, s17
	s_mul_i32 s19, s18, s14
	s_ashr_i32 s13, s6, 31
	s_sub_i32 s12, s12, s19
	s_add_i32 s19, s18, 1
	s_sub_i32 s20, s12, s14
	s_cmp_ge_u32 s12, s14
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s18, s19, s18
	s_cselect_b32 s12, s20, s12
	s_add_i32 s19, s18, 1
	s_cmp_ge_u32 s12, s14
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s30, s6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s14, s19, s18
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s12, s3, 6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s14, s14, s13
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s18, s15, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s19, s15, 0x7f
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s21, s14, s13
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v6, s12, v3
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s15, s15, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s17, s21, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s15, s15, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s17
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s33, s21, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s19, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s15, v6
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 64, v6
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s18, s22, s12
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s35, s21, 7
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 4
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s20, s23, s12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s19, 0x7f
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_add3_u32 v4, s18, s34, v4
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v5, s20, s33, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s3, vcc_lo
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s31, s7
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u16 v8, v4, s[4:7], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[4:7], v5, s[28:31], 0 offen
	s_mov_b32 s16, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s19, 0xff
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v108, v8 offset:8192
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v109, v[4:7]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s25, s9, 0xffff
	s_mov_b32 s24, s8
	s_mov_b64 s[26:27], s[6:7]
	s_mov_b32 s16, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr24_sgpr25
.LBB0_3:                                ; %Flow1030
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v97, 15, v0
	v_bfe_u32 v98, v0, 4, 1
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_or_b32_e32 v107, 0x3f0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v99, 0, v97
	v_or_b32_e32 v106, 0x7f0, v0
	v_or_b32_e32 v105, 0xbf0, v0
	v_or_b32_e32 v104, 0xff0, v0
	v_or_b32_e32 v103, 0x13f0, v0
	v_or_b32_e32 v102, 0x17f0, v0
	v_or_b32_e32 v101, 0x1bf0, v0
	v_or_b32_e32 v100, 0x1ff0, v0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v85, 0
	s_and_not1_b32 vcc_lo, exec_lo, s16
	s_add_i32 s0, s35, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s1, s12, 64
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v5, s34, v97
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v4, s1, v3
	v_sub_nc_u32_e32 v110, s15, v3
	s_lshl_b32 s15, s14, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v3, s35, v5
	v_mul_lo_u32 v6, s23, v4
	s_lshl_b32 s14, s14, 7
	v_mul_lo_u32 v4, s22, v4
	s_mov_b32 s12, 0
	s_lshl_b32 s16, s13, 8
	s_lshl_b32 s13, s13, 7
	s_sub_i32 s45, s15, s16
	s_mov_b32 s15, s12
	v_add3_u32 v2, v6, s14, v2
	s_mov_b32 s14, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_subrev_nc_u32_e32 v113, s13, v2
	s_mov_b32 s13, s12
	s_mov_b32 s19, s12
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v112, 1, v3
	v_add3_u32 v114, v4, s34, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v111, 1, v98
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v115, 0, v107
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v116, 0, v106
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v117, 0, v105
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v118, 0, v104
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v119, 0, v103
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v120, 0, v102
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v121, 0, v101
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v122, 0, v100
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b64 s[24:25], s[8:9]
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_max_i32 s44, s0, 1
	s_lshl_b32 s46, s23, 1
	s_lshl_b32 s47, s23, 6
	s_lshl_b32 s22, s22, 6
	s_mov_b32 s40, s8
	s_mov_b32 s41, s9
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s1, v110
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s44, s44, -1
	s_add_i32 s1, s1, 64
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v9, 0x80000000, v114, vcc_lo
	buffer_load_u16 v123, v9, s[4:7], 0 offen
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v124, v112, s[40:43], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:8272
	ds_load_u8 v10, v99 offset:8256
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v114, s22, v114
	v_add_nc_u32_e32 v112, 2, v112
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:8304
	ds_load_u8 v11, v99 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8208
	ds_load_u8 v12, v99 offset:8192
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v99 offset:640
	ds_load_u8 v10, v99 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:8240
	ds_load_u8 v13, v99 offset:8224
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v12, 16, v11
	ds_load_u8 v10, v99 offset:896
	ds_load_u8 v11, v99 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:128
	ds_load_u8 v12, v99
	v_lshl_or_b32 v126, v10, 16, v9
	ds_load_u8 v9, v99 offset:8400
	ds_load_u8 v10, v99 offset:8384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:384
	ds_load_u8 v13, v99 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v125, v12, 16, v11
	ds_load_u8 v10, v99 offset:8432
	ds_load_u8 v11, v99 offset:8416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8336
	ds_load_u8 v12, v99 offset:8320
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v99 offset:1664
	ds_load_u8 v10, v99 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:8368
	ds_load_u8 v13, v99 offset:8352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v99 offset:1920
	ds_load_u8 v11, v99 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1152
	ds_load_u8 v12, v99 offset:1024
	v_lshl_or_b32 v128, v10, 16, v9
	ds_load_u8 v9, v99 offset:8528
	ds_load_u8 v10, v99 offset:8512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1408
	ds_load_u8 v13, v99 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v127, v12, 16, v11
	ds_load_u8 v10, v99 offset:8560
	ds_load_u8 v11, v99 offset:8544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8464
	ds_load_u8 v12, v99 offset:8448
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v99 offset:2688
	ds_load_u8 v10, v99 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:8496
	ds_load_u8 v13, v99 offset:8480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v12, 16, v11
	ds_load_u8 v10, v99 offset:2944
	ds_load_u8 v11, v99 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2176
	ds_load_u8 v12, v99 offset:2048
	v_lshl_or_b32 v130, v10, 16, v9
	ds_load_u8 v9, v99 offset:8656
	ds_load_u8 v10, v99 offset:8640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2432
	ds_load_u8 v13, v99 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v12, 16, v11
	ds_load_u8 v10, v99 offset:8688
	ds_load_u8 v11, v99 offset:8672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8592
	ds_load_u8 v12, v99 offset:8576
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v99 offset:3712
	ds_load_u8 v10, v99 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:8624
	ds_load_u8 v13, v99 offset:8608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v12, 16, v11
	ds_load_u8 v10, v99 offset:3968
	ds_load_u8 v11, v99 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3200
	ds_load_u8 v12, v99 offset:3072
	v_lshl_or_b32 v132, v10, 16, v9
	ds_load_u8 v9, v99 offset:8784
	ds_load_u8 v10, v99 offset:8768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3456
	ds_load_u8 v13, v99 offset:3328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v12, 16, v11
	ds_load_u8 v10, v99 offset:8816
	ds_load_u8 v11, v99 offset:8800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8720
	ds_load_u8 v12, v99 offset:8704
	v_lshl_or_b32 v24, v10, 16, v9
	ds_load_u8 v9, v99 offset:4736
	ds_load_u8 v10, v99 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:8752
	ds_load_u8 v13, v99 offset:8736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v12, 16, v11
	ds_load_u8 v10, v99 offset:4992
	ds_load_u8 v11, v99 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4224
	ds_load_u8 v12, v99 offset:4096
	v_lshl_or_b32 v134, v10, 16, v9
	ds_load_u8 v9, v99 offset:8912
	ds_load_u8 v10, v99 offset:8896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4480
	ds_load_u8 v13, v99 offset:4352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v12, 16, v11
	ds_load_u8 v10, v99 offset:8944
	ds_load_u8 v11, v99 offset:8928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8848
	ds_load_u8 v12, v99 offset:8832
	v_lshl_or_b32 v22, v10, 16, v9
	ds_load_u8 v9, v99 offset:5760
	ds_load_u8 v10, v99 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:8880
	ds_load_u8 v13, v99 offset:8864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v12, 16, v11
	ds_load_u8 v10, v99 offset:6016
	ds_load_u8 v11, v99 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5248
	ds_load_u8 v12, v99 offset:5120
	v_lshl_or_b32 v136, v10, 16, v9
	ds_load_u8 v9, v99 offset:9040
	ds_load_u8 v10, v99 offset:9024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5504
	ds_load_u8 v13, v99 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v12, 16, v11
	ds_load_u8 v10, v99 offset:9072
	ds_load_u8 v11, v99 offset:9056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:8976
	ds_load_u8 v12, v99 offset:8960
	v_lshl_or_b32 v20, v10, 16, v9
	ds_load_u8 v9, v99 offset:6784
	ds_load_u8 v10, v99 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:9008
	ds_load_u8 v13, v99 offset:8992
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v12, 16, v11
	ds_load_u8 v10, v99 offset:7040
	ds_load_u8 v11, v99 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6272
	ds_load_u8 v12, v99 offset:6144
	v_lshl_or_b32 v138, v10, 16, v9
	ds_load_u8 v9, v99 offset:9104
	ds_load_u8 v10, v99 offset:9088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6528
	ds_load_u8 v13, v99 offset:6400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v12, 16, v11
	ds_load_u8 v10, v99 offset:9136
	ds_load_u8 v11, v99 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:9168
	ds_load_u8 v12, v99 offset:9152
	v_lshl_or_b32 v17, v10, 16, v9
	ds_load_u8 v9, v99 offset:7808
	ds_load_u8 v10, v99 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v115 offset:8192
	ds_load_u8 v13, v99 offset:9184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v12, 16, v11
	ds_load_u8 v10, v99 offset:8064
	ds_load_u8 v11, v99 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7296
	ds_load_u8 v12, v99 offset:7168
	v_lshl_or_b32 v140, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7552
	ds_load_u8 v13, v99 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v139, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[129:130], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[133:134], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v132, v9
	v_cvt_f32_i32_e32 v131, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:656
	ds_load_u8 v10, v99 offset:528
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v130, v11
	v_cvt_f32_i32_e32 v129, v12
	v_cvt_f32_i32_e32 v128, v13
	v_cvt_f32_i32_e32 v127, v14
	v_cvt_f32_i32_e32 v126, v15
	v_cvt_f32_i32_e32 v125, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:912
	ds_load_u8 v11, v99 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:16
	ds_load_u8 v12, v99 offset:144
	v_lshl_or_b32 v134, v10, 16, v9
	ds_load_u8 v9, v99 offset:1680
	ds_load_u8 v10, v99 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:400
	ds_load_u8 v13, v99 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v12, 16, v11
	ds_load_u8 v10, v99 offset:1936
	ds_load_u8 v11, v99 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1168
	ds_load_u8 v12, v99 offset:1040
	v_lshl_or_b32 v136, v10, 16, v9
	ds_load_u8 v9, v99 offset:2704
	ds_load_u8 v10, v99 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1424
	ds_load_u8 v13, v99 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v12, 16, v11
	ds_load_u8 v10, v99 offset:2960
	ds_load_u8 v11, v99 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2192
	ds_load_u8 v12, v99 offset:2064
	v_lshl_or_b32 v138, v10, 16, v9
	ds_load_u8 v9, v99 offset:3728
	ds_load_u8 v10, v99 offset:3600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2448
	ds_load_u8 v13, v99 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v12, 16, v11
	ds_load_u8 v10, v99 offset:3984
	ds_load_u8 v11, v99 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3216
	ds_load_u8 v12, v99 offset:3088
	v_lshl_or_b32 v140, v10, 16, v9
	ds_load_u8 v9, v99 offset:4752
	ds_load_u8 v10, v99 offset:4624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3472
	ds_load_u8 v13, v99 offset:3344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v12, 16, v11
	ds_load_u8 v10, v99 offset:5008
	ds_load_u8 v11, v99 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4240
	ds_load_u8 v12, v99 offset:4112
	v_lshl_or_b32 v142, v10, 16, v9
	ds_load_u8 v9, v99 offset:5776
	ds_load_u8 v10, v99 offset:5648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4496
	ds_load_u8 v13, v99 offset:4368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v12, 16, v11
	ds_load_u8 v10, v99 offset:6032
	ds_load_u8 v11, v99 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5264
	ds_load_u8 v12, v99 offset:5136
	v_lshl_or_b32 v144, v10, 16, v9
	ds_load_u8 v9, v99 offset:6800
	ds_load_u8 v10, v99 offset:6672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5520
	ds_load_u8 v13, v99 offset:5392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v12, 16, v11
	ds_load_u8 v10, v99 offset:7056
	ds_load_u8 v11, v99 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6288
	ds_load_u8 v12, v99 offset:6160
	v_lshl_or_b32 v146, v10, 16, v9
	ds_load_u8 v9, v99 offset:7824
	ds_load_u8 v10, v99 offset:7696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6544
	ds_load_u8 v13, v99 offset:6416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v145, v12, 16, v11
	ds_load_u8 v10, v99 offset:8080
	ds_load_u8 v11, v99 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7312
	ds_load_u8 v12, v99 offset:7184
	v_lshl_or_b32 v148, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7568
	ds_load_u8 v13, v99 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v147, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[133:134], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[145:146], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v140, v9
	v_cvt_f32_i32_e32 v139, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:672
	ds_load_u8 v10, v99 offset:544
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v138, v11
	v_cvt_f32_i32_e32 v137, v12
	v_cvt_f32_i32_e32 v136, v13
	v_cvt_f32_i32_e32 v135, v14
	v_cvt_f32_i32_e32 v134, v15
	v_cvt_f32_i32_e32 v133, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:928
	ds_load_u8 v11, v99 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:32
	ds_load_u8 v12, v99 offset:160
	v_lshl_or_b32 v142, v10, 16, v9
	ds_load_u8 v9, v99 offset:1696
	ds_load_u8 v10, v99 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:416
	ds_load_u8 v13, v99 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v12, 16, v11
	ds_load_u8 v10, v99 offset:1952
	ds_load_u8 v11, v99 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1184
	ds_load_u8 v12, v99 offset:1056
	v_lshl_or_b32 v144, v10, 16, v9
	ds_load_u8 v9, v99 offset:2720
	ds_load_u8 v10, v99 offset:2592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1440
	ds_load_u8 v13, v99 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v12, 16, v11
	ds_load_u8 v10, v99 offset:2976
	ds_load_u8 v11, v99 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2208
	ds_load_u8 v12, v99 offset:2080
	v_lshl_or_b32 v146, v10, 16, v9
	ds_load_u8 v9, v99 offset:3744
	ds_load_u8 v10, v99 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2464
	ds_load_u8 v13, v99 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v145, v12, 16, v11
	ds_load_u8 v10, v99 offset:4000
	ds_load_u8 v11, v99 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3232
	ds_load_u8 v12, v99 offset:3104
	v_lshl_or_b32 v148, v10, 16, v9
	ds_load_u8 v9, v99 offset:4768
	ds_load_u8 v10, v99 offset:4640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3488
	ds_load_u8 v13, v99 offset:3360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v12, 16, v11
	ds_load_u8 v10, v99 offset:5024
	ds_load_u8 v11, v99 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4256
	ds_load_u8 v12, v99 offset:4128
	v_lshl_or_b32 v150, v10, 16, v9
	ds_load_u8 v9, v99 offset:5792
	ds_load_u8 v10, v99 offset:5664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4512
	ds_load_u8 v13, v99 offset:4384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v12, 16, v11
	ds_load_u8 v10, v99 offset:6048
	ds_load_u8 v11, v99 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5280
	ds_load_u8 v12, v99 offset:5152
	v_lshl_or_b32 v152, v10, 16, v9
	ds_load_u8 v9, v99 offset:6816
	ds_load_u8 v10, v99 offset:6688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5536
	ds_load_u8 v13, v99 offset:5408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v12, 16, v11
	ds_load_u8 v10, v99 offset:7072
	ds_load_u8 v11, v99 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6304
	ds_load_u8 v12, v99 offset:6176
	v_lshl_or_b32 v154, v10, 16, v9
	ds_load_u8 v9, v99 offset:7840
	ds_load_u8 v10, v99 offset:7712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6560
	ds_load_u8 v13, v99 offset:6432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v12, 16, v11
	ds_load_u8 v10, v99 offset:8096
	ds_load_u8 v11, v99 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7328
	ds_load_u8 v12, v99 offset:7200
	v_lshl_or_b32 v156, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7584
	ds_load_u8 v13, v99 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v155, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[145:146], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[149:150], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[155:156], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v148, v9
	v_cvt_f32_i32_e32 v147, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:688
	ds_load_u8 v10, v99 offset:560
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v146, v11
	v_cvt_f32_i32_e32 v145, v12
	v_cvt_f32_i32_e32 v144, v13
	v_cvt_f32_i32_e32 v143, v14
	v_cvt_f32_i32_e32 v142, v15
	v_cvt_f32_i32_e32 v141, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:944
	ds_load_u8 v11, v99 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:48
	ds_load_u8 v12, v99 offset:176
	v_lshl_or_b32 v150, v10, 16, v9
	ds_load_u8 v9, v99 offset:1712
	ds_load_u8 v10, v99 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:432
	ds_load_u8 v13, v99 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v12, 16, v11
	ds_load_u8 v10, v99 offset:1968
	ds_load_u8 v11, v99 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1200
	ds_load_u8 v12, v99 offset:1072
	v_lshl_or_b32 v152, v10, 16, v9
	ds_load_u8 v9, v99 offset:2736
	ds_load_u8 v10, v99 offset:2608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1456
	ds_load_u8 v13, v99 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v12, 16, v11
	ds_load_u8 v10, v99 offset:2992
	ds_load_u8 v11, v99 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2224
	ds_load_u8 v12, v99 offset:2096
	v_lshl_or_b32 v154, v10, 16, v9
	ds_load_u8 v9, v99 offset:3760
	ds_load_u8 v10, v99 offset:3632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2480
	ds_load_u8 v13, v99 offset:2352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v12, 16, v11
	ds_load_u8 v10, v99 offset:4016
	ds_load_u8 v11, v99 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3248
	ds_load_u8 v12, v99 offset:3120
	v_lshl_or_b32 v156, v10, 16, v9
	ds_load_u8 v9, v99 offset:4784
	ds_load_u8 v10, v99 offset:4656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3504
	ds_load_u8 v13, v99 offset:3376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v155, v12, 16, v11
	ds_load_u8 v10, v99 offset:5040
	ds_load_u8 v11, v99 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4272
	ds_load_u8 v12, v99 offset:4144
	v_lshl_or_b32 v158, v10, 16, v9
	ds_load_u8 v9, v99 offset:5808
	ds_load_u8 v10, v99 offset:5680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4528
	ds_load_u8 v13, v99 offset:4400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v12, 16, v11
	ds_load_u8 v10, v99 offset:6064
	ds_load_u8 v11, v99 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5296
	ds_load_u8 v12, v99 offset:5168
	v_lshl_or_b32 v160, v10, 16, v9
	ds_load_u8 v9, v99 offset:6832
	ds_load_u8 v10, v99 offset:6704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5552
	ds_load_u8 v13, v99 offset:5424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v12, 16, v11
	ds_load_u8 v10, v99 offset:7088
	ds_load_u8 v11, v99 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6320
	ds_load_u8 v12, v99 offset:6192
	v_lshl_or_b32 v162, v10, 16, v9
	ds_load_u8 v9, v99 offset:7856
	ds_load_u8 v10, v99 offset:7728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6576
	ds_load_u8 v13, v99 offset:6448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v12, 16, v11
	ds_load_u8 v10, v99 offset:8112
	ds_load_u8 v11, v99 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7344
	ds_load_u8 v12, v99 offset:7216
	v_lshl_or_b32 v164, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7600
	ds_load_u8 v13, v99 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v163, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[149:150], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[155:156], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[161:162], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[163:164], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v156, v9
	v_cvt_f32_i32_e32 v155, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:704
	ds_load_u8 v10, v99 offset:576
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v154, v11
	v_cvt_f32_i32_e32 v153, v12
	v_cvt_f32_i32_e32 v152, v13
	v_cvt_f32_i32_e32 v151, v14
	v_cvt_f32_i32_e32 v150, v15
	v_cvt_f32_i32_e32 v149, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:960
	ds_load_u8 v11, v99 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:192
	ds_load_u8 v12, v99 offset:64
	v_lshl_or_b32 v158, v10, 16, v9
	ds_load_u8 v9, v99 offset:1728
	ds_load_u8 v10, v99 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:448
	ds_load_u8 v13, v99 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v12, 16, v11
	ds_load_u8 v10, v99 offset:1984
	ds_load_u8 v11, v99 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1216
	ds_load_u8 v12, v99 offset:1088
	v_lshl_or_b32 v160, v10, 16, v9
	ds_load_u8 v9, v99 offset:2752
	ds_load_u8 v10, v99 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1472
	ds_load_u8 v13, v99 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v12, 16, v11
	ds_load_u8 v10, v99 offset:3008
	ds_load_u8 v11, v99 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2240
	ds_load_u8 v12, v99 offset:2112
	v_lshl_or_b32 v162, v10, 16, v9
	ds_load_u8 v9, v99 offset:3776
	ds_load_u8 v10, v99 offset:3648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2496
	ds_load_u8 v13, v99 offset:2368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v12, 16, v11
	ds_load_u8 v10, v99 offset:4032
	ds_load_u8 v11, v99 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3264
	ds_load_u8 v12, v99 offset:3136
	v_lshl_or_b32 v164, v10, 16, v9
	ds_load_u8 v9, v99 offset:4800
	ds_load_u8 v10, v99 offset:4672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3520
	ds_load_u8 v13, v99 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v12, 16, v11
	ds_load_u8 v10, v99 offset:5056
	ds_load_u8 v11, v99 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4288
	ds_load_u8 v12, v99 offset:4160
	v_lshl_or_b32 v166, v10, 16, v9
	ds_load_u8 v9, v99 offset:5824
	ds_load_u8 v10, v99 offset:5696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4544
	ds_load_u8 v13, v99 offset:4416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v12, 16, v11
	ds_load_u8 v10, v99 offset:6080
	ds_load_u8 v11, v99 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5312
	ds_load_u8 v12, v99 offset:5184
	v_lshl_or_b32 v168, v10, 16, v9
	ds_load_u8 v9, v99 offset:6848
	ds_load_u8 v10, v99 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5568
	ds_load_u8 v13, v99 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v12, 16, v11
	ds_load_u8 v10, v99 offset:7104
	ds_load_u8 v11, v99 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6336
	ds_load_u8 v12, v99 offset:6208
	v_lshl_or_b32 v170, v10, 16, v9
	ds_load_u8 v9, v99 offset:7872
	ds_load_u8 v10, v99 offset:7744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6592
	ds_load_u8 v13, v99 offset:6464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v12, 16, v11
	ds_load_u8 v10, v99 offset:8128
	ds_load_u8 v11, v99 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7360
	ds_load_u8 v12, v99 offset:7232
	v_lshl_or_b32 v172, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7616
	ds_load_u8 v13, v99 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v171, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[161:162], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[163:164], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[165:166], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[167:168], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[171:172], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v164, v9
	v_cvt_f32_i32_e32 v163, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:720
	ds_load_u8 v10, v99 offset:592
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v162, v11
	v_cvt_f32_i32_e32 v161, v12
	v_cvt_f32_i32_e32 v160, v13
	v_cvt_f32_i32_e32 v159, v14
	v_cvt_f32_i32_e32 v158, v15
	v_cvt_f32_i32_e32 v157, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:976
	ds_load_u8 v11, v99 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:208
	ds_load_u8 v12, v99 offset:80
	v_lshl_or_b32 v166, v10, 16, v9
	ds_load_u8 v9, v99 offset:1744
	ds_load_u8 v10, v99 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:464
	ds_load_u8 v13, v99 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v12, 16, v11
	ds_load_u8 v10, v99 offset:2000
	ds_load_u8 v11, v99 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1232
	ds_load_u8 v12, v99 offset:1104
	v_lshl_or_b32 v168, v10, 16, v9
	ds_load_u8 v9, v99 offset:2768
	ds_load_u8 v10, v99 offset:2640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1488
	ds_load_u8 v13, v99 offset:1360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v12, 16, v11
	ds_load_u8 v10, v99 offset:3024
	ds_load_u8 v11, v99 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2256
	ds_load_u8 v12, v99 offset:2128
	v_lshl_or_b32 v170, v10, 16, v9
	ds_load_u8 v9, v99 offset:3792
	ds_load_u8 v10, v99 offset:3664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2512
	ds_load_u8 v13, v99 offset:2384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v12, 16, v11
	ds_load_u8 v10, v99 offset:4048
	ds_load_u8 v11, v99 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3280
	ds_load_u8 v12, v99 offset:3152
	v_lshl_or_b32 v172, v10, 16, v9
	ds_load_u8 v9, v99 offset:4816
	ds_load_u8 v10, v99 offset:4688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3536
	ds_load_u8 v13, v99 offset:3408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v12, 16, v11
	ds_load_u8 v10, v99 offset:5072
	ds_load_u8 v11, v99 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4304
	ds_load_u8 v12, v99 offset:4176
	v_lshl_or_b32 v174, v10, 16, v9
	ds_load_u8 v9, v99 offset:5840
	ds_load_u8 v10, v99 offset:5712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4560
	ds_load_u8 v13, v99 offset:4432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v12, 16, v11
	ds_load_u8 v10, v99 offset:6096
	ds_load_u8 v11, v99 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5328
	ds_load_u8 v12, v99 offset:5200
	v_lshl_or_b32 v176, v10, 16, v9
	ds_load_u8 v9, v99 offset:6864
	ds_load_u8 v10, v99 offset:6736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5584
	ds_load_u8 v13, v99 offset:5456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v12, 16, v11
	ds_load_u8 v10, v99 offset:7120
	ds_load_u8 v11, v99 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6352
	ds_load_u8 v12, v99 offset:6224
	v_lshl_or_b32 v178, v10, 16, v9
	ds_load_u8 v9, v99 offset:7888
	ds_load_u8 v10, v99 offset:7760
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6608
	ds_load_u8 v13, v99 offset:6480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v12, 16, v11
	ds_load_u8 v10, v99 offset:8144
	ds_load_u8 v11, v99 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7376
	ds_load_u8 v12, v99 offset:7248
	v_lshl_or_b32 v180, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7632
	ds_load_u8 v13, v99 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v179, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[165:166], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[167:168], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[171:172], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[175:176], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[179:180], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v172, v9
	v_cvt_f32_i32_e32 v171, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:736
	ds_load_u8 v10, v99 offset:608
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v170, v11
	v_cvt_f32_i32_e32 v169, v12
	v_cvt_f32_i32_e32 v168, v13
	v_cvt_f32_i32_e32 v167, v14
	v_cvt_f32_i32_e32 v166, v15
	v_cvt_f32_i32_e32 v165, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:992
	ds_load_u8 v11, v99 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:224
	ds_load_u8 v12, v99 offset:96
	v_lshl_or_b32 v174, v10, 16, v9
	ds_load_u8 v9, v99 offset:1760
	ds_load_u8 v10, v99 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:480
	ds_load_u8 v13, v99 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v12, 16, v11
	ds_load_u8 v10, v99 offset:2016
	ds_load_u8 v11, v99 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1248
	ds_load_u8 v12, v99 offset:1120
	v_lshl_or_b32 v176, v10, 16, v9
	ds_load_u8 v9, v99 offset:2784
	ds_load_u8 v10, v99 offset:2656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1504
	ds_load_u8 v13, v99 offset:1376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v12, 16, v11
	ds_load_u8 v10, v99 offset:3040
	ds_load_u8 v11, v99 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:2272
	ds_load_u8 v12, v99 offset:2144
	v_lshl_or_b32 v178, v10, 16, v9
	ds_load_u8 v9, v99 offset:3808
	ds_load_u8 v10, v99 offset:3680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:2528
	ds_load_u8 v13, v99 offset:2400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v12, 16, v11
	ds_load_u8 v10, v99 offset:4064
	ds_load_u8 v11, v99 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:3296
	ds_load_u8 v12, v99 offset:3168
	v_lshl_or_b32 v180, v10, 16, v9
	ds_load_u8 v9, v99 offset:4832
	ds_load_u8 v10, v99 offset:4704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:3552
	ds_load_u8 v13, v99 offset:3424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v12, 16, v11
	ds_load_u8 v10, v99 offset:5088
	ds_load_u8 v11, v99 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:4320
	ds_load_u8 v12, v99 offset:4192
	v_lshl_or_b32 v182, v10, 16, v9
	ds_load_u8 v9, v99 offset:5856
	ds_load_u8 v10, v99 offset:5728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:4576
	ds_load_u8 v13, v99 offset:4448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v12, 16, v11
	ds_load_u8 v10, v99 offset:6112
	ds_load_u8 v11, v99 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:5344
	ds_load_u8 v12, v99 offset:5216
	v_lshl_or_b32 v184, v10, 16, v9
	ds_load_u8 v9, v99 offset:6880
	ds_load_u8 v10, v99 offset:6752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:5600
	ds_load_u8 v13, v99 offset:5472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v183, v12, 16, v11
	ds_load_u8 v10, v99 offset:7136
	ds_load_u8 v11, v99 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:6368
	ds_load_u8 v12, v99 offset:6240
	v_lshl_or_b32 v186, v10, 16, v9
	ds_load_u8 v9, v99 offset:7904
	ds_load_u8 v10, v99 offset:7776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:6624
	ds_load_u8 v13, v99 offset:6496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v185, v12, 16, v11
	ds_load_u8 v10, v99 offset:8160
	ds_load_u8 v11, v99 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:7392
	ds_load_u8 v12, v99 offset:7264
	v_lshl_or_b32 v188, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:7648
	ds_load_u8 v13, v99 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v187, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[175:176], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[179:180], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[181:182], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[183:184], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[187:188], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v180, v9
	v_cvt_f32_i32_e32 v179, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:240
	ds_load_u8 v10, v99 offset:112
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v178, v11
	v_cvt_f32_i32_e32 v177, v12
	v_cvt_f32_i32_e32 v176, v13
	v_cvt_f32_i32_e32 v175, v14
	v_cvt_f32_i32_e32 v174, v15
	v_cvt_f32_i32_e32 v173, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:496
	ds_load_u8 v11, v99 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:752
	ds_load_u8 v12, v99 offset:624
	v_lshl_or_b32 v181, v10, 16, v9
	ds_load_u8 v9, v99 offset:1264
	ds_load_u8 v10, v99 offset:1136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v115
	ds_load_u8 v13, v99 offset:880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v12, 16, v11
	ds_load_u8 v10, v99 offset:1520
	ds_load_u8 v11, v99 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1776
	ds_load_u8 v12, v99 offset:1648
	v_lshl_or_b32 v183, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v116
	ds_load_u8 v13, v99 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v184, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[181:182], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v99 offset:2288
	ds_load_u8 v30, v99 offset:2160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[183:184], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v99 offset:2544
	ds_load_u8 v31, v99 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v99 offset:2800
	ds_load_u8 v32, v99 offset:2672
	v_lshl_or_b32 v29, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v117
	ds_load_u8 v181, v99 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v181, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v32, 16, v31
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v27, v99 offset:3312
	ds_load_u8 v28, v99 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v99 offset:3568
	ds_load_u8 v29, v99 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v99 offset:3824
	ds_load_u8 v30, v99 offset:3696
	v_lshl_or_b32 v27, v28, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v118
	ds_load_u8 v31, v99 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v30, 16, v29
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v99 offset:4336
	ds_load_u8 v26, v99 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v99 offset:4592
	ds_load_u8 v27, v99 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v99 offset:4848
	ds_load_u8 v28, v99 offset:4720
	v_lshl_or_b32 v25, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v119
	ds_load_u8 v29, v99 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v23, v99 offset:5360
	ds_load_u8 v24, v99 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v99 offset:5616
	ds_load_u8 v25, v99 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v99 offset:5872
	ds_load_u8 v26, v99 offset:5744
	v_lshl_or_b32 v23, v24, 16, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v120
	ds_load_u8 v27, v99 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v21, v99 offset:6384
	ds_load_u8 v22, v99 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v99 offset:6640
	ds_load_u8 v23, v99 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v99 offset:6896
	ds_load_u8 v24, v99 offset:6768
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v121
	ds_load_u8 v25, v99 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v19, v99 offset:7408
	ds_load_u8 v20, v99 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:7664
	ds_load_u8 v21, v99 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v99 offset:7920
	ds_load_u8 v22, v99 offset:7792
	v_lshl_or_b32 v19, v20, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v122
	ds_load_u8 v23, v99 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v20, v22, 16, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[17:18], v[9:16] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v18, 0x80000000, v113, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v113, s47, v113
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v17, v9
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[18:21], v18, s[28:31], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v12
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v14, v16
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v16, s45, v111
	s_clause 0x1f
	buffer_load_u16 v22, v16, s[36:39], 0 offen
	buffer_load_u16 v23, v16, s[36:39], 0 offen offset:4
	buffer_load_u16 v24, v16, s[36:39], 0 offen offset:8
	buffer_load_u16 v25, v16, s[36:39], 0 offen offset:12
	buffer_load_u16 v26, v16, s[36:39], 0 offen offset:16
	buffer_load_u16 v27, v16, s[36:39], 0 offen offset:20
	buffer_load_u16 v28, v16, s[36:39], 0 offen offset:24
	buffer_load_u16 v29, v16, s[36:39], 0 offen offset:28
	buffer_load_u16 v30, v16, s[36:39], 0 offen offset:32
	buffer_load_u16 v31, v16, s[36:39], 0 offen offset:36
	buffer_load_u16 v32, v16, s[36:39], 0 offen offset:40
	buffer_load_u16 v181, v16, s[36:39], 0 offen offset:44
	buffer_load_u16 v182, v16, s[36:39], 0 offen offset:48
	buffer_load_u16 v183, v16, s[36:39], 0 offen offset:52
	buffer_load_u16 v184, v16, s[36:39], 0 offen offset:56
	buffer_load_u16 v185, v16, s[36:39], 0 offen offset:60
	buffer_load_u16 v186, v16, s[36:39], 0 offen offset:64
	buffer_load_u16 v187, v16, s[36:39], 0 offen offset:68
	buffer_load_u16 v188, v16, s[36:39], 0 offen offset:72
	buffer_load_u16 v189, v16, s[36:39], 0 offen offset:76
	buffer_load_u16 v190, v16, s[36:39], 0 offen offset:80
	buffer_load_u16 v191, v16, s[36:39], 0 offen offset:84
	buffer_load_u16 v192, v16, s[36:39], 0 offen offset:88
	buffer_load_u16 v193, v16, s[36:39], 0 offen offset:92
	buffer_load_u16 v194, v16, s[36:39], 0 offen offset:96
	buffer_load_u16 v195, v16, s[36:39], 0 offen offset:100
	buffer_load_u16 v196, v16, s[36:39], 0 offen offset:104
	buffer_load_u16 v197, v16, s[36:39], 0 offen offset:108
	buffer_load_u16 v198, v16, s[36:39], 0 offen offset:112
	buffer_load_u16 v199, v16, s[36:39], 0 offen offset:116
	buffer_load_u16 v200, v16, s[36:39], 0 offen offset:120
	buffer_load_u16 v201, v16, s[36:39], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v202, v16, s[36:39], 0 offen offset:128
	buffer_load_u16 v203, v16, s[36:39], 0 offen offset:132
	buffer_load_u16 v204, v16, s[36:39], 0 offen offset:136
	buffer_load_u16 v205, v16, s[36:39], 0 offen offset:140
	buffer_load_u16 v206, v16, s[36:39], 0 offen offset:144
	buffer_load_u16 v207, v16, s[36:39], 0 offen offset:148
	buffer_load_u16 v208, v16, s[36:39], 0 offen offset:152
	buffer_load_u16 v209, v16, s[36:39], 0 offen offset:156
	buffer_load_u16 v210, v16, s[36:39], 0 offen offset:160
	buffer_load_u16 v211, v16, s[36:39], 0 offen offset:164
	buffer_load_u16 v212, v16, s[36:39], 0 offen offset:168
	buffer_load_u16 v213, v16, s[36:39], 0 offen offset:172
	buffer_load_u16 v214, v16, s[36:39], 0 offen offset:176
	buffer_load_u16 v215, v16, s[36:39], 0 offen offset:180
	buffer_load_u16 v216, v16, s[36:39], 0 offen offset:184
	buffer_load_u16 v217, v16, s[36:39], 0 offen offset:188
	buffer_load_u16 v218, v16, s[36:39], 0 offen offset:192
	buffer_load_u16 v219, v16, s[36:39], 0 offen offset:196
	buffer_load_u16 v220, v16, s[36:39], 0 offen offset:200
	buffer_load_u16 v221, v16, s[36:39], 0 offen offset:204
	buffer_load_u16 v222, v16, s[36:39], 0 offen offset:208
	buffer_load_u16 v223, v16, s[36:39], 0 offen offset:212
	buffer_load_u16 v224, v16, s[36:39], 0 offen offset:216
	buffer_load_u16 v225, v16, s[36:39], 0 offen offset:220
	buffer_load_u16 v226, v16, s[36:39], 0 offen offset:224
	buffer_load_u16 v227, v16, s[36:39], 0 offen offset:228
	buffer_load_u16 v228, v16, s[36:39], 0 offen offset:232
	buffer_load_u16 v229, v16, s[36:39], 0 offen offset:236
	buffer_load_u16 v230, v16, s[36:39], 0 offen offset:240
	buffer_load_u16 v231, v16, s[36:39], 0 offen offset:244
	buffer_load_u16 v232, v16, s[36:39], 0 offen offset:248
	buffer_load_u16 v16, v16, s[36:39], 0 offen offset:252
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s45, s45, s46
	s_cmp_lg_u32 s44, 0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	ds_store_b16 v108, v123 offset:8192
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b128 v109, v[18:21]
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v18, 16, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v19, v18, v132 :: v_dual_lshlrev_b32 v20, 16, v22
	v_mul_f32_e32 v17, v18, v17
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(62)
	v_dual_fmac_f32 v85, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v23
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v96, v19, v20 :: v_dual_mul_f32 v19, v18, v130
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v20, 16, v24
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(60)
	v_dual_fmac_f32 v95, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v25
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v94, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(59)
	v_dual_mul_f32 v19, v18, v128 :: v_dual_lshlrev_b32 v20, 16, v26
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(58)
	v_dual_fmac_f32 v93, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v27
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v92, v19, v20 :: v_dual_mul_f32 v19, v18, v126
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v20, 16, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(56)
	v_dual_fmac_f32 v91, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v29
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v90, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(55)
	v_dual_mul_f32 v19, v18, v140 :: v_dual_lshlrev_b32 v20, 16, v30
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(54)
	v_dual_fmac_f32 v89, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v31
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v88, v19, v20 :: v_dual_mul_f32 v19, v18, v138
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(53)
	v_lshlrev_b32_e32 v20, 16, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(52)
	v_dual_fmac_f32 v87, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v181
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v86, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(51)
	v_dual_mul_f32 v19, v18, v136 :: v_dual_lshlrev_b32 v20, 16, v182
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(50)
	v_dual_fmac_f32 v83, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v183
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v84, v19, v20 :: v_dual_mul_f32 v19, v18, v134
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v20, 16, v184
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(48)
	v_dual_fmac_f32 v81, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v185
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v82, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(47)
	v_dual_mul_f32 v19, v18, v148 :: v_dual_lshlrev_b32 v20, 16, v186
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(46)
	v_dual_fmac_f32 v79, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v187
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v80, v19, v20 :: v_dual_mul_f32 v19, v18, v146
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v20, 16, v188
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(44)
	v_dual_fmac_f32 v77, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v189
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v78, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(43)
	v_dual_mul_f32 v19, v18, v144 :: v_dual_lshlrev_b32 v20, 16, v190
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(42)
	v_dual_fmac_f32 v75, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v191
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v76, v19, v20 :: v_dual_mul_f32 v19, v18, v142
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v20, 16, v192
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(40)
	v_dual_fmac_f32 v73, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v193
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v74, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(39)
	v_dual_mul_f32 v19, v18, v156 :: v_dual_lshlrev_b32 v20, 16, v194
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(38)
	v_dual_fmac_f32 v71, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v195
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v72, v19, v20 :: v_dual_mul_f32 v19, v18, v154
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v20, 16, v196
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(36)
	v_dual_fmac_f32 v69, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v197
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v70, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(35)
	v_dual_mul_f32 v19, v18, v152 :: v_dual_lshlrev_b32 v20, 16, v198
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(34)
	v_dual_fmac_f32 v67, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v199
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v68, v19, v20 :: v_dual_mul_f32 v19, v18, v150
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v20, 16, v200
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(32)
	v_dual_fmac_f32 v65, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v201
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v66, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(31)
	v_dual_mul_f32 v19, v18, v164 :: v_dual_lshlrev_b32 v20, 16, v202
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(30)
	v_dual_fmac_f32 v63, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v203
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v64, v19, v20 :: v_dual_mul_f32 v19, v18, v162
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v20, 16, v204
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(28)
	v_dual_fmac_f32 v61, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v205
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v62, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(27)
	v_dual_mul_f32 v19, v18, v160 :: v_dual_lshlrev_b32 v20, 16, v206
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(26)
	v_dual_fmac_f32 v59, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v207
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v60, v19, v20 :: v_dual_mul_f32 v19, v18, v158
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v20, 16, v208
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(24)
	v_dual_fmac_f32 v57, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v209
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v58, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v19, v18, v172 :: v_dual_lshlrev_b32 v20, 16, v210
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(22)
	v_dual_fmac_f32 v55, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v211
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v56, v19, v20 :: v_dual_mul_f32 v19, v18, v170
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v20, 16, v212
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(20)
	v_dual_fmac_f32 v53, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v213
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v54, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v19, v18, v168 :: v_dual_lshlrev_b32 v20, 16, v214
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(18)
	v_dual_fmac_f32 v51, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v215
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v52, v19, v20 :: v_dual_mul_f32 v19, v18, v166
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v20, 16, v216
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(16)
	v_dual_fmac_f32 v49, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v217
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v50, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v19, v18, v180 :: v_dual_lshlrev_b32 v20, 16, v218
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(14)
	v_dual_fmac_f32 v47, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v219
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v48, v19, v20 :: v_dual_mul_f32 v19, v18, v178
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v20, 16, v220
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v45, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v221
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v46, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v19, v18, v176 :: v_dual_lshlrev_b32 v20, 16, v222
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v43, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v223
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v44, v19, v20 :: v_dual_mul_f32 v19, v18, v174
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v20, 16, v224
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v41, v19, v20 :: v_dual_lshlrev_b32 v20, 16, v225
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v18, v173
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v42, v19, v20 :: v_dual_lshlrev_b32 v19, 16, v226
	v_fmac_f32_e32 v39, v17, v19
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v9, v18, v9
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v17, 16, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v40, v9, v17 :: v_dual_mul_f32 v9, v18, v11
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v11, 16, v228
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v37, v9, v11
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v9, v18, v10 :: v_dual_lshlrev_b32 v10, 16, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v38, v9, v10 :: v_dual_mul_f32 v9, v18, v13
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v10, 16, v230
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v36, v9, v10 :: v_dual_mul_f32 v9, v18, v12
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v10, 16, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v35, v9, v10
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v9, v18, v15 :: v_dual_lshlrev_b32 v10, 16, v232
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v34, v9, v10
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v9, v18, v14 :: v_dual_lshlrev_b32 v10, 16, v16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v33, v9, v10
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow1031
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s35, v97
	s_mul_i32 s1, s34, s35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s0, 0
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v108, 16, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, s1, v1, 1
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	buffer_load_u16 v109, v1, s[24:27], 0 offen
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_mov_b32_e32 v5, 0
	s_mov_b32 s12, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v1, v99 offset:8272
	ds_load_u8 v2, v99 offset:8256
	ds_load_u8 v3, v99 offset:8304
	ds_load_u8 v4, v99 offset:8288
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v107, 0, v107
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v99 offset:8208
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v99 offset:8192
	v_lshl_or_b32 v30, v3, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	ds_load_u8 v4, v99 offset:8240
	ds_load_u8 v5, v99 offset:8224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v4, 16, v2
	ds_load_u8 v1, v99 offset:640
	ds_load_u8 v2, v99 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v99 offset:896
	ds_load_u8 v3, v99 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v99 offset:128
	ds_load_u8 v4, v99
	v_lshl_or_b32 v18, v2, 16, v1
	ds_load_u8 v1, v99 offset:8400
	ds_load_u8 v2, v99 offset:8384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v99 offset:384
	ds_load_u8 v5, v99 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v4, 16, v3
	ds_load_u8 v2, v99 offset:8432
	ds_load_u8 v3, v99 offset:8416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v99 offset:8336
	ds_load_u8 v4, v99 offset:8320
	v_lshl_or_b32 v32, v2, 16, v1
	ds_load_u8 v1, v99 offset:1664
	ds_load_u8 v2, v99 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v99 offset:8368
	ds_load_u8 v5, v99 offset:8352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v4, 16, v3
	ds_load_u8 v2, v99 offset:1920
	ds_load_u8 v3, v99 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v99 offset:1152
	ds_load_u8 v4, v99 offset:1024
	v_lshl_or_b32 v20, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v99 offset:1408
	ds_load_u8 v5, v99 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v4, 16, v3
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:8528
	ds_load_u8 v18, v99 offset:8512
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8560
	ds_load_u8 v19, v99 offset:8544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8464
	ds_load_u8 v20, v99 offset:8448
	v_lshl_or_b32 v28, v18, 16, v17
	ds_load_u8 v17, v99 offset:2688
	ds_load_u8 v18, v99 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:8496
	ds_load_u8 v21, v99 offset:8480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v20, 16, v19
	ds_load_u8 v18, v99 offset:2944
	ds_load_u8 v19, v99 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:2176
	ds_load_u8 v20, v99 offset:2048
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:2432
	ds_load_u8 v21, v99 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:8656
	ds_load_u8 v18, v99 offset:8640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8688
	ds_load_u8 v19, v99 offset:8672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8592
	ds_load_u8 v20, v99 offset:8576
	v_lshl_or_b32 v26, v18, 16, v17
	ds_load_u8 v17, v99 offset:3712
	ds_load_u8 v18, v99 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:8624
	ds_load_u8 v21, v99 offset:8608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v20, 16, v19
	ds_load_u8 v18, v99 offset:3968
	ds_load_u8 v19, v99 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:3200
	ds_load_u8 v20, v99 offset:3072
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:3456
	ds_load_u8 v21, v99 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:8784
	ds_load_u8 v18, v99 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8816
	ds_load_u8 v19, v99 offset:8800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8720
	ds_load_u8 v20, v99 offset:8704
	v_lshl_or_b32 v24, v18, 16, v17
	ds_load_u8 v17, v99 offset:4736
	ds_load_u8 v18, v99 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:8752
	ds_load_u8 v21, v99 offset:8736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v20, 16, v19
	ds_load_u8 v18, v99 offset:4992
	ds_load_u8 v19, v99 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:4224
	ds_load_u8 v20, v99 offset:4096
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:4480
	ds_load_u8 v21, v99 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:8912
	ds_load_u8 v18, v99 offset:8896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:8944
	ds_load_u8 v19, v99 offset:8928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8848
	ds_load_u8 v20, v99 offset:8832
	v_lshl_or_b32 v22, v18, 16, v17
	ds_load_u8 v17, v99 offset:5760
	ds_load_u8 v18, v99 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:8880
	ds_load_u8 v21, v99 offset:8864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v20, 16, v19
	ds_load_u8 v18, v99 offset:6016
	ds_load_u8 v19, v99 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:5248
	ds_load_u8 v20, v99 offset:5120
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:5504
	ds_load_u8 v110, v99 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v110, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:9040
	ds_load_u8 v18, v99 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:9072
	ds_load_u8 v19, v99 offset:9056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v99 offset:8976
	ds_load_u8 v20, v99 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v99 offset:9008
	ds_load_u8 v110, v99 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v110, v20, 0xc0c0004
	v_lshl_or_b32 v20, v18, 16, v17
	ds_load_u8 v17, v99 offset:6784
	ds_load_u8 v18, v99 offset:6656
	v_lshl_or_b32 v19, v110, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:7040
	ds_load_u8 v110, v99 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v110, v18, 0xc0c0004
	ds_load_u8 v110, v99 offset:6272
	ds_load_u8 v111, v99 offset:6144
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v99 offset:6528
	ds_load_u8 v112, v99 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v111, 16, v110
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v99 offset:9104
	ds_load_u8 v18, v99 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v99 offset:9136
	ds_load_u8 v110, v99 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v110, v18, 0xc0c0004
	ds_load_u8 v110, v99 offset:9168
	ds_load_u8 v111, v99 offset:9152
	v_lshl_or_b32 v17, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v99 offset:9184
	ds_load_u8 v112, v107 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v111, 16, v110
	ds_load_u8 v110, v99 offset:7808
	ds_load_u8 v111, v99 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v99 offset:8064
	ds_load_u8 v112, v99 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v99 offset:7296
	ds_load_u8 v113, v99 offset:7168
	v_lshl_or_b32 v111, v111, 16, v110
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v99 offset:7552
	ds_load_u8 v114, v99 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v113, 16, v112
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v110, v9
	v_cvt_f32_i32_e32 v113, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:656
	ds_load_u8 v10, v99 offset:528
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v114, v11
	v_cvt_f32_i32_e32 v115, v12
	v_cvt_f32_i32_e32 v111, v13
	v_cvt_f32_i32_e32 v112, v14
	v_cvt_f32_i32_e32 v116, v15
	v_cvt_f32_i32_e32 v117, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:912
	ds_load_u8 v11, v99 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:16
	ds_load_u8 v12, v99 offset:144
	v_lshl_or_b32 v119, v10, 16, v9
	ds_load_u8 v9, v99 offset:1680
	ds_load_u8 v10, v99 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:400
	ds_load_u8 v13, v99 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v12, 16, v11
	ds_load_u8 v10, v99 offset:1936
	ds_load_u8 v11, v99 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1168
	ds_load_u8 v12, v99 offset:1040
	v_lshl_or_b32 v121, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1424
	ds_load_u8 v13, v99 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v120, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v118, v99 offset:2704
	ds_load_u8 v119, v99 offset:2576
	v_wmma_i32_16x16x16_iu4 v[9:16], v[120:121], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:2960
	ds_load_u8 v120, v99 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:2192
	ds_load_u8 v121, v99 offset:2064
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v99 offset:2448
	ds_load_u8 v122, v99 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v118, v99 offset:3728
	ds_load_u8 v119, v99 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:3984
	ds_load_u8 v120, v99 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:3216
	ds_load_u8 v121, v99 offset:3088
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v99 offset:3472
	ds_load_u8 v122, v99 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v118, v99 offset:4752
	ds_load_u8 v119, v99 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:5008
	ds_load_u8 v120, v99 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:4240
	ds_load_u8 v121, v99 offset:4112
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v99 offset:4496
	ds_load_u8 v122, v99 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v118, v99 offset:5776
	ds_load_u8 v119, v99 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:6032
	ds_load_u8 v120, v99 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:5264
	ds_load_u8 v121, v99 offset:5136
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v99 offset:5520
	ds_load_u8 v122, v99 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v118, v99 offset:6800
	ds_load_u8 v119, v99 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:7056
	ds_load_u8 v120, v99 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:6288
	ds_load_u8 v121, v99 offset:6160
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v99 offset:6544
	ds_load_u8 v122, v99 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v118, v99 offset:7824
	ds_load_u8 v119, v99 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v99 offset:8080
	ds_load_u8 v120, v99 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v99 offset:7312
	ds_load_u8 v121, v99 offset:7184
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v99 offset:7568
	ds_load_u8 v122, v99 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v118, v9
	v_cvt_f32_i32_e32 v119, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:672
	ds_load_u8 v10, v99 offset:544
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v122, v11
	v_cvt_f32_i32_e32 v124, v12
	v_cvt_f32_i32_e32 v121, v13
	v_cvt_f32_i32_e32 v120, v14
	v_cvt_f32_i32_e32 v123, v15
	v_cvt_f32_i32_e32 v125, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:928
	ds_load_u8 v11, v99 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:32
	ds_load_u8 v12, v99 offset:160
	v_lshl_or_b32 v127, v10, 16, v9
	ds_load_u8 v9, v99 offset:1696
	ds_load_u8 v10, v99 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:416
	ds_load_u8 v13, v99 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v126, v12, 16, v11
	ds_load_u8 v10, v99 offset:1952
	ds_load_u8 v11, v99 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1184
	ds_load_u8 v12, v99 offset:1056
	v_lshl_or_b32 v129, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1440
	ds_load_u8 v13, v99 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v128, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v126, v99 offset:2720
	ds_load_u8 v127, v99 offset:2592
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v99 offset:2976
	ds_load_u8 v128, v99 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v99 offset:2208
	ds_load_u8 v129, v99 offset:2080
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v99 offset:2464
	ds_load_u8 v130, v99 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v126, v129, 16, v128
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v126, v99 offset:3744
	ds_load_u8 v127, v99 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v99 offset:4000
	ds_load_u8 v128, v99 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v99 offset:3232
	ds_load_u8 v129, v99 offset:3104
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v99 offset:3488
	ds_load_u8 v130, v99 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v126, v129, 16, v128
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v126, v99 offset:4768
	ds_load_u8 v127, v99 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v99 offset:5024
	ds_load_u8 v128, v99 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v99 offset:4256
	ds_load_u8 v129, v99 offset:4128
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v99 offset:4512
	ds_load_u8 v130, v99 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v126, v129, 16, v128
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v126, v99 offset:5792
	ds_load_u8 v127, v99 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v99 offset:6048
	ds_load_u8 v128, v99 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v99 offset:5280
	ds_load_u8 v129, v99 offset:5152
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v99 offset:5536
	ds_load_u8 v130, v99 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v126, v129, 16, v128
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v126, v99 offset:6816
	ds_load_u8 v127, v99 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v99 offset:7072
	ds_load_u8 v128, v99 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v99 offset:6304
	ds_load_u8 v129, v99 offset:6176
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v99 offset:6560
	ds_load_u8 v130, v99 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v126, v129, 16, v128
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v126, v99 offset:7840
	ds_load_u8 v127, v99 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v99 offset:8096
	ds_load_u8 v128, v99 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v99 offset:7328
	ds_load_u8 v129, v99 offset:7200
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v99 offset:7584
	ds_load_u8 v130, v99 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v126, v129, 16, v128
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v128, v9
	v_cvt_f32_i32_e32 v129, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:688
	ds_load_u8 v10, v99 offset:560
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v133, v11
	v_cvt_f32_i32_e32 v132, v12
	v_cvt_f32_i32_e32 v126, v13
	v_cvt_f32_i32_e32 v127, v14
	v_cvt_f32_i32_e32 v131, v15
	v_cvt_f32_i32_e32 v130, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:944
	ds_load_u8 v11, v99 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:48
	ds_load_u8 v12, v99 offset:176
	v_lshl_or_b32 v135, v10, 16, v9
	ds_load_u8 v9, v99 offset:1712
	ds_load_u8 v10, v99 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v99 offset:432
	ds_load_u8 v13, v99 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v12, 16, v11
	ds_load_u8 v10, v99 offset:1968
	ds_load_u8 v11, v99 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1200
	ds_load_u8 v12, v99 offset:1072
	v_lshl_or_b32 v137, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1456
	ds_load_u8 v13, v99 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v134, v99 offset:2736
	ds_load_u8 v135, v99 offset:2608
	v_wmma_i32_16x16x16_iu4 v[9:16], v[136:137], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v99 offset:2992
	ds_load_u8 v136, v99 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v99 offset:2224
	ds_load_u8 v137, v99 offset:2096
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v99 offset:2480
	ds_load_u8 v138, v99 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v134, v99 offset:3760
	ds_load_u8 v135, v99 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v99 offset:4016
	ds_load_u8 v136, v99 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v99 offset:3248
	ds_load_u8 v137, v99 offset:3120
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v99 offset:3504
	ds_load_u8 v138, v99 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v134, v99 offset:4784
	ds_load_u8 v135, v99 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v99 offset:5040
	ds_load_u8 v136, v99 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v99 offset:4272
	ds_load_u8 v137, v99 offset:4144
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v99 offset:4528
	ds_load_u8 v138, v99 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v134, v99 offset:5808
	ds_load_u8 v135, v99 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v99 offset:6064
	ds_load_u8 v136, v99 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v99 offset:5296
	ds_load_u8 v137, v99 offset:5168
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v99 offset:5552
	ds_load_u8 v138, v99 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v134, v99 offset:6832
	ds_load_u8 v135, v99 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v99 offset:7088
	ds_load_u8 v136, v99 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v99 offset:6320
	ds_load_u8 v137, v99 offset:6192
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v99 offset:6576
	ds_load_u8 v138, v99 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v134, v99 offset:7856
	ds_load_u8 v135, v99 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v99 offset:8112
	ds_load_u8 v136, v99 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v99 offset:7344
	ds_load_u8 v137, v99 offset:7216
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v99 offset:7600
	ds_load_u8 v138, v99 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v134, v9
	v_cvt_f32_i32_e32 v136, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:704
	ds_load_u8 v10, v99 offset:576
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v138, v11
	v_cvt_f32_i32_e32 v139, v12
	v_cvt_f32_i32_e32 v135, v13
	v_cvt_f32_i32_e32 v137, v14
	v_cvt_f32_i32_e32 v140, v15
	v_cvt_f32_i32_e32 v141, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:960
	ds_load_u8 v11, v99 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:192
	ds_load_u8 v12, v99 offset:64
	v_lshl_or_b32 v143, v10, 16, v9
	ds_load_u8 v9, v99 offset:1728
	ds_load_u8 v10, v99 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:448
	ds_load_u8 v13, v99 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v12, 16, v11
	ds_load_u8 v10, v99 offset:1984
	ds_load_u8 v11, v99 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1216
	ds_load_u8 v12, v99 offset:1088
	v_lshl_or_b32 v145, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1472
	ds_load_u8 v13, v99 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v142, v99 offset:2752
	ds_load_u8 v143, v99 offset:2624
	v_wmma_i32_16x16x16_iu4 v[9:16], v[144:145], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v99 offset:3008
	ds_load_u8 v144, v99 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v99 offset:2240
	ds_load_u8 v145, v99 offset:2112
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v99 offset:2496
	ds_load_u8 v146, v99 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v142, v99 offset:3776
	ds_load_u8 v143, v99 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v99 offset:4032
	ds_load_u8 v144, v99 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v99 offset:3264
	ds_load_u8 v145, v99 offset:3136
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v99 offset:3520
	ds_load_u8 v146, v99 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v142, v99 offset:4800
	ds_load_u8 v143, v99 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v99 offset:5056
	ds_load_u8 v144, v99 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v99 offset:4288
	ds_load_u8 v145, v99 offset:4160
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v99 offset:4544
	ds_load_u8 v146, v99 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v142, v99 offset:5824
	ds_load_u8 v143, v99 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v99 offset:6080
	ds_load_u8 v144, v99 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v99 offset:5312
	ds_load_u8 v145, v99 offset:5184
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v99 offset:5568
	ds_load_u8 v146, v99 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v142, v99 offset:6848
	ds_load_u8 v143, v99 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v99 offset:7104
	ds_load_u8 v144, v99 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v99 offset:6336
	ds_load_u8 v145, v99 offset:6208
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v99 offset:6592
	ds_load_u8 v146, v99 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v142, v99 offset:7872
	ds_load_u8 v143, v99 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v99 offset:8128
	ds_load_u8 v144, v99 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v99 offset:7360
	ds_load_u8 v145, v99 offset:7232
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v99 offset:7616
	ds_load_u8 v146, v99 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v142, v9
	v_cvt_f32_i32_e32 v143, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:720
	ds_load_u8 v10, v99 offset:592
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v146, v11
	v_cvt_f32_i32_e32 v148, v12
	v_cvt_f32_i32_e32 v145, v13
	v_cvt_f32_i32_e32 v144, v14
	v_cvt_f32_i32_e32 v147, v15
	v_cvt_f32_i32_e32 v149, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:976
	ds_load_u8 v11, v99 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:208
	ds_load_u8 v12, v99 offset:80
	v_lshl_or_b32 v151, v10, 16, v9
	ds_load_u8 v9, v99 offset:1744
	ds_load_u8 v10, v99 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:464
	ds_load_u8 v13, v99 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v12, 16, v11
	ds_load_u8 v10, v99 offset:2000
	ds_load_u8 v11, v99 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1232
	ds_load_u8 v12, v99 offset:1104
	v_lshl_or_b32 v153, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1488
	ds_load_u8 v13, v99 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v150, v99 offset:2768
	ds_load_u8 v151, v99 offset:2640
	v_wmma_i32_16x16x16_iu4 v[9:16], v[152:153], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v99 offset:3024
	ds_load_u8 v152, v99 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v99 offset:2256
	ds_load_u8 v153, v99 offset:2128
	v_lshl_or_b32 v151, v151, 16, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v99 offset:2512
	ds_load_u8 v154, v99 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v150, v99 offset:3792
	ds_load_u8 v151, v99 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v99 offset:4048
	ds_load_u8 v152, v99 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v99 offset:3280
	ds_load_u8 v153, v99 offset:3152
	v_lshl_or_b32 v151, v151, 16, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v99 offset:3536
	ds_load_u8 v154, v99 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v150, v99 offset:4816
	ds_load_u8 v151, v99 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v99 offset:5072
	ds_load_u8 v152, v99 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v99 offset:4304
	ds_load_u8 v153, v99 offset:4176
	v_lshl_or_b32 v151, v151, 16, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v99 offset:4560
	ds_load_u8 v154, v99 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v150, v99 offset:5840
	ds_load_u8 v151, v99 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v99 offset:6096
	ds_load_u8 v152, v99 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v99 offset:5328
	ds_load_u8 v153, v99 offset:5200
	v_lshl_or_b32 v151, v151, 16, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v99 offset:5584
	ds_load_u8 v154, v99 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v150, v99 offset:6864
	ds_load_u8 v151, v99 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v99 offset:7120
	ds_load_u8 v152, v99 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v99 offset:6352
	ds_load_u8 v153, v99 offset:6224
	v_lshl_or_b32 v151, v151, 16, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v99 offset:6608
	ds_load_u8 v154, v99 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v150, v99 offset:7888
	ds_load_u8 v151, v99 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v99 offset:8144
	ds_load_u8 v152, v99 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v99 offset:7376
	ds_load_u8 v153, v99 offset:7248
	v_lshl_or_b32 v151, v151, 16, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v99 offset:7632
	ds_load_u8 v154, v99 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v152, v9
	v_cvt_f32_i32_e32 v153, v10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v99 offset:736
	ds_load_u8 v10, v99 offset:608
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v157, v11
	v_cvt_f32_i32_e32 v156, v12
	v_cvt_f32_i32_e32 v150, v13
	v_cvt_f32_i32_e32 v151, v14
	v_cvt_f32_i32_e32 v155, v15
	v_cvt_f32_i32_e32 v154, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v99 offset:992
	ds_load_u8 v11, v99 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:224
	ds_load_u8 v12, v99 offset:96
	v_lshl_or_b32 v159, v10, 16, v9
	ds_load_u8 v9, v99 offset:1760
	ds_load_u8 v10, v99 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:480
	ds_load_u8 v13, v99 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v12, 16, v11
	ds_load_u8 v10, v99 offset:2016
	ds_load_u8 v11, v99 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v99 offset:1248
	ds_load_u8 v12, v99 offset:1120
	v_lshl_or_b32 v161, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v99 offset:1504
	ds_load_u8 v13, v99 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v158, v99 offset:2784
	ds_load_u8 v159, v99 offset:2656
	v_wmma_i32_16x16x16_iu4 v[9:16], v[160:161], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:3040
	ds_load_u8 v160, v99 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:2272
	ds_load_u8 v161, v99 offset:2144
	v_lshl_or_b32 v159, v159, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v99 offset:2528
	ds_load_u8 v162, v99 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v158, v99 offset:3808
	ds_load_u8 v159, v99 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:4064
	ds_load_u8 v160, v99 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:3296
	ds_load_u8 v161, v99 offset:3168
	v_lshl_or_b32 v159, v159, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v99 offset:3552
	ds_load_u8 v162, v99 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v158, v99 offset:4832
	ds_load_u8 v159, v99 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:5088
	ds_load_u8 v160, v99 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:4320
	ds_load_u8 v161, v99 offset:4192
	v_lshl_or_b32 v159, v159, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v99 offset:4576
	ds_load_u8 v162, v99 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v158, v99 offset:5856
	ds_load_u8 v159, v99 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:6112
	ds_load_u8 v160, v99 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:5344
	ds_load_u8 v161, v99 offset:5216
	v_lshl_or_b32 v159, v159, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v99 offset:5600
	ds_load_u8 v162, v99 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v158, v99 offset:6880
	ds_load_u8 v159, v99 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:7136
	ds_load_u8 v160, v99 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:6368
	ds_load_u8 v161, v99 offset:6240
	v_lshl_or_b32 v159, v159, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v99 offset:6624
	ds_load_u8 v162, v99 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[19:20], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v158, v99 offset:7904
	ds_load_u8 v159, v99 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v99 offset:8160
	ds_load_u8 v160, v99 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v99 offset:7392
	ds_load_u8 v161, v99 offset:7264
	v_lshl_or_b32 v159, v159, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v99 offset:7648
	ds_load_u8 v162, v99 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v158, v10
	v_cvt_f32_i32_e32 v159, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v10, v13
	v_cvt_f32_i32_e32 v11, v14
	v_cvt_f32_i32_e32 v13, v15
	v_cvt_f32_i32_e32 v14, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v15, v99 offset:240
	ds_load_u8 v16, v99 offset:112
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v99 offset:496
	ds_load_u8 v160, v99 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v160, v16, 0xc0c0004
	ds_load_u8 v160, v99 offset:752
	ds_load_u8 v161, v99 offset:624
	v_lshl_or_b32 v15, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v107, v107
	ds_load_u8 v161, v99 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v161, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v107, 16, v160
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v15, v99 offset:1264
	ds_load_u8 v16, v99 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v99 offset:1520
	ds_load_u8 v29, v99 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v29, v16, 0xc0c0004
	ds_load_u8 v29, v99 offset:1776
	ds_load_u8 v30, v99 offset:1648
	v_lshl_or_b32 v15, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v30, 0, v106
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v30, v30
	ds_load_u8 v106, v99 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v106, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v30, 16, v29
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[31:32], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v15, v99 offset:2288
	ds_load_u8 v16, v99 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v99 offset:2544
	ds_load_u8 v29, v99 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v29, v16, 0xc0c0004
	ds_load_u8 v29, v99 offset:2800
	ds_load_u8 v30, v99 offset:2672
	v_lshl_or_b32 v15, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v30, 0, v105
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v30, v30
	ds_load_u8 v31, v99 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v30, 16, v29
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[27:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v15, v99 offset:3312
	ds_load_u8 v16, v99 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v99 offset:3568
	ds_load_u8 v27, v99 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v27, v16, 0xc0c0004
	ds_load_u8 v27, v99 offset:3824
	ds_load_u8 v28, v99 offset:3696
	v_lshl_or_b32 v15, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v28, 0, v104
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v28, v28
	ds_load_u8 v29, v99 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[25:26], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v15, v99 offset:4336
	ds_load_u8 v16, v99 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v99 offset:4592
	ds_load_u8 v25, v99 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v25, v16, 0xc0c0004
	ds_load_u8 v25, v99 offset:4848
	ds_load_u8 v26, v99 offset:4720
	v_lshl_or_b32 v15, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v26, 0, v103
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v26, v26
	ds_load_u8 v27, v99 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v15, v99 offset:5360
	ds_load_u8 v16, v99 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v99 offset:5616
	ds_load_u8 v23, v99 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v23, v16, 0xc0c0004
	ds_load_u8 v23, v99 offset:5872
	ds_load_u8 v24, v99 offset:5744
	v_lshl_or_b32 v15, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v24, 0, v102
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v24, v24
	ds_load_u8 v25, v99 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[21:22], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v15, v99 offset:6384
	ds_load_u8 v16, v99 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v99 offset:6640
	ds_load_u8 v21, v99 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v21, v16, 0xc0c0004
	ds_load_u8 v21, v99 offset:6896
	ds_load_u8 v22, v99 offset:6768
	v_lshl_or_b32 v15, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v22, 0, v101
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v22, v22
	ds_load_u8 v23, v99 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v22, 16, v21
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[19:20], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v15, v99 offset:7408
	ds_load_u8 v16, v99 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v99 offset:7664
	ds_load_u8 v19, v99 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v19, v16, 0xc0c0004
	ds_load_u8 v19, v99 offset:7920
	ds_load_u8 v20, v99 offset:7792
	v_lshl_or_b32 v15, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v20, 0, v100
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v21, v99 offset:8048
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v27, v1
	v_cvt_f32_i32_e32 v173, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v174, v3
	v_cvt_f32_i32_e32 v175, v4
	v_cvt_f32_i32_e32 v4, v5
	v_cvt_f32_i32_e32 v3, v6
	v_cvt_f32_i32_e32 v5, v7
	v_cvt_f32_i32_e32 v176, v8
.LBB0_8:
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s23
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s13, s11, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s33, s0
	s_mov_b32 s15, 0x31027000
	v_add_lshl_u32 v25, s0, v98, 1
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s12, s10
	.loc	1 245 18 is_stmt 1              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v97, s23, v97
	s_mul_i32 s34, s34, s23
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v2, 4, v25
	v_add_nc_u32_e32 v6, 8, v25
	v_add_nc_u32_e32 v7, 12, v25
	v_add_nc_u32_e32 v8, 16, v25
	v_cndmask_b32_e64 v1, 0x80000000, v25, s2
	v_add_nc_u32_e32 v15, 20, v25
	v_add_nc_u32_e32 v16, 24, v25
	v_add_nc_u32_e32 v17, 28, v25
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x7
	buffer_load_u16 v23, v1, s[12:15], 0 offen
	buffer_load_u16 v163, v2, s[12:15], 0 offen
	buffer_load_u16 v28, v6, s[12:15], 0 offen
	buffer_load_u16 v29, v7, s[12:15], 0 offen
	buffer_load_u16 v31, v8, s[12:15], 0 offen
	buffer_load_u16 v32, v15, s[12:15], 0 offen
	buffer_load_u16 v161, v16, s[12:15], 0 offen
	buffer_load_u16 v162, v17, s[12:15], 0 offen
	v_add_nc_u32_e32 v1, 32, v25
	v_add_nc_u32_e32 v2, 36, v25
	v_add_nc_u32_e32 v6, 40, v25
	v_add_nc_u32_e32 v7, 44, v25
	v_add_nc_u32_e32 v8, 52, v25
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	s_clause 0x4
	buffer_load_u16 v166, v1, s[12:15], 0 offen
	buffer_load_u16 v167, v2, s[12:15], 0 offen
	buffer_load_u16 v168, v6, s[12:15], 0 offen
	buffer_load_u16 v169, v7, s[12:15], 0 offen
	buffer_load_u16 v164, v8, s[12:15], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v2.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(13)
	v_mov_b16_e32 v2.h, v109.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v1, 48, v25
	v_add_nc_u32_e32 v6, 56, v25
	v_add_nc_u32_e32 v7, 60, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v190, v122, v2 :: v_dual_add_nc_u32 v99, 0x7c, v25
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v191, v124, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v192, v121, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x2
	buffer_load_u16 v160, v1, s[12:15], 0 offen
	buffer_load_u16 v180, v6, s[12:15], 0 offen
	buffer_load_u16 v181, v7, s[12:15], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v193, v120, v2 :: v_dual_add_nc_u32 v6, 64, v25
	v_dual_mul_f32 v194, v123, v2 :: v_dual_add_nc_u32 v7, 0x44, v25
	v_mul_f32_e32 v195, v125, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v196, v128, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_load_u16 v198, v6, s[12:15], 0 offen
	buffer_load_u16 v199, v7, s[12:15], 0 offen
	v_add_nc_u32_e32 v6, 0x48, v25
	v_add_nc_u32_e32 v7, 0x4c, v25
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v197, v129, v2
	v_mul_f32_e32 v200, v132, v2
	v_mul_f32_e32 v179, v110, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_load_u16 v201, v6, s[12:15], 0 offen
	buffer_load_u16 v202, v7, s[12:15], 0 offen
	v_add_nc_u32_e32 v6, 0x50, v25
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v188, v118, v2 :: v_dual_add_nc_u32 v7, 0x54, v25
	v_mul_f32_e32 v177, v133, v2
	v_dual_mul_f32 v118, v143, v2 :: v_dual_add_nc_u32 v103, 0x84, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v110, v144, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v143, v6, s[12:15], 0 offen
	buffer_load_u16 v144, v7, s[12:15], 0 offen
	v_add_nc_u32_e32 v6, 0x58, v25
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v172, v127, v2 :: v_dual_add_nc_u32 v7, 0x5c, v25
	v_mul_f32_e32 v187, v117, v2
	v_mul_f32_e32 v121, v140, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v117, v142, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_load_u16 v140, v6, s[12:15], 0 offen
	buffer_load_u16 v142, v7, s[12:15], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v171, v126, v2
	v_mul_f32_e32 v18, v12, v2
	v_mul_f32_e32 v12, v13, v2
	v_dual_mul_f32 v13, v14, v2 :: v_dual_add_nc_u32 v206, 0xf0, v25
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v14, 0x60, v25
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v170, v130, v2
	v_dual_mul_f32 v15, v10, v2 :: v_dual_add_nc_u32 v204, 0xe8, v25
	v_dual_mul_f32 v10, v27, v2 :: v_dual_add_nc_u32 v27, 0x64, v25
	v_dual_mul_f32 v6, v3, v2 :: v_dual_add_nc_u32 v207, 0xf4, v25
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v3, 0x80000000, v14, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v182, v114, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v14, 0x80000000, v27, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v133, v134, v2
	v_mul_f32_e32 v134, v136, v2
	v_dual_mul_f32 v114, v148, v2 :: v_dual_add_nc_u32 v107, 0x8c, v25
	v_mul_f32_e32 v105, v149, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v148, v3, s[12:15], 0 offen
	buffer_load_u16 v149, v14, s[12:15], 0 offen
	v_add_nc_u32_e32 v3, 0x68, v25
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v165, v131, v2 :: v_dual_add_nc_u32 v14, 0x6c, v25
	v_dual_mul_f32 v30, v157, v2 :: v_dual_add_nc_u32 v123, 0xa8, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v20, v158, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	s_clause 0x1
	buffer_load_u16 v157, v3, s[12:15], 0 offen
	buffer_load_u16 v158, v14, s[12:15], 0 offen
	v_add_nc_u32_e32 v14, 0x70, v25
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v130, v139, v2 :: v_dual_add_nc_u32 v27, 0x74, v25
	v_mul_f32_e32 v126, v137, v2
	v_dual_mul_f32 v19, v9, v2 :: v_dual_add_nc_u32 v136, 0xcc, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v8, v174, v2 :: v_dual_add_nc_u32 v205, 0xec, v25
	v_mul_f32_e32 v9, v175, v2
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add3_u32 v3, s34, s33, v97
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v97, 0x78, v25
	s_clause 0x1
	buffer_load_u16 v174, v14, s[12:15], 0 offen
	buffer_load_u16 v175, v27, s[12:15], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v122, v141, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v7, v4, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v4, v5, v2
	v_mul_f32_e32 v5, v176, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v176, v97, s[12:15], 0 offen
	buffer_load_u16 v203, v99, s[12:15], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v129, v138, v2 :: v_dual_add_nc_u32 v102, 0x80, v25
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v103, 0x80000000, v103, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v125, v135, v2 :: v_dual_add_nc_u32 v106, 0x88, v25
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v107, 0x80000000, v107, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v102, 0x80000000, v102, s2
	s_clause 0x1
	buffer_load_u16 v209, v102, s[12:15], 0 offen
	buffer_load_u16 v210, v103, s[12:15], 0 offen
	v_cndmask_b32_e64 v106, 0x80000000, v106, s2
	s_clause 0x1
	buffer_load_u16 v216, v106, s[12:15], 0 offen
	buffer_load_u16 v217, v107, s[12:15], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v184, v111, v2 :: v_dual_add_nc_u32 v111, 0x90, v25
	v_dual_mul_f32 v185, v112, v2 :: v_dual_add_nc_u32 v112, 0x94, v25
	v_mul_f32_e32 v183, v115, v2
	v_dual_mul_f32 v104, v147, v2 :: v_dual_add_nc_u32 v115, 0x98, v25
	v_mul_f32_e32 v186, v116, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v116, 0x9c, v25
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v178, v113, v2
	v_mul_f32_e32 v189, v119, v2
	v_dual_mul_f32 v113, v146, v2 :: v_dual_add_nc_u32 v120, 0xa4, v25
	v_dual_mul_f32 v109, v145, v2 :: v_dual_add_nc_u32 v124, 0xac, v25
	v_dual_mul_f32 v100, v152, v2 :: v_dual_add_nc_u32 v119, 0xa0, v25
	v_dual_mul_f32 v101, v153, v2 :: v_dual_add_nc_u32 v128, 0xbc, v25
	v_dual_mul_f32 v24, v150, v2 :: v_dual_add_nc_u32 v127, 0xb8, v25
	v_dual_mul_f32 v17, v159, v2 :: v_dual_add_nc_u32 v138, 0xdc, v25
	v_dual_mul_f32 v98, v156, v2 :: v_dual_add_nc_u32 v27, 0xb4, v25
	v_dual_mul_f32 v26, v151, v2 :: v_dual_add_nc_u32 v131, 0xc0, v25
	v_dual_mul_f32 v21, v155, v2 :: v_dual_add_nc_u32 v132, 0xc4, v25
	v_dual_mul_f32 v22, v154, v2 :: v_dual_add_nc_u32 v135, 0xc8, v25
	v_dual_mul_f32 v16, v11, v2 :: v_dual_add_nc_u32 v99, 0xd8, v25
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v14, 0xb0, v25
	v_add_nc_u32_e32 v137, 0xd0, v25
	v_add_nc_u32_e32 v97, 0xd4, v25
	v_add_nc_u32_e32 v139, 0xe0, v25
	v_add_nc_u32_e32 v141, 0xe4, v25
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	v_cndmask_b32_e64 v115, 0x80000000, v115, s2
	v_cndmask_b32_e64 v116, 0x80000000, v116, s2
	v_cndmask_b32_e64 v119, 0x80000000, v119, s2
	v_cndmask_b32_e64 v120, 0x80000000, v120, s2
	v_cndmask_b32_e64 v102, 0x80000000, v123, s2
	v_cndmask_b32_e64 v103, 0x80000000, v124, s2
	v_cndmask_b32_e64 v123, 0x80000000, v127, s2
	v_cndmask_b32_e64 v124, 0x80000000, v128, s2
	v_cndmask_b32_e64 v107, 0x80000000, v138, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	v_cndmask_b32_e64 v211, 0x80000000, v131, s2
	v_cndmask_b32_e64 v212, 0x80000000, v132, s2
	v_cndmask_b32_e64 v213, 0x80000000, v135, s2
	v_cndmask_b32_e64 v214, 0x80000000, v136, s2
	v_cndmask_b32_e64 v215, 0x80000000, v137, s2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	v_cndmask_b32_e64 v218, 0x80000000, v139, s2
	v_cndmask_b32_e64 v219, 0x80000000, v141, s2
	s_clause 0x13
	buffer_load_u16 v139, v111, s[12:15], 0 offen
	buffer_load_u16 v141, v112, s[12:15], 0 offen
	buffer_load_u16 v137, v115, s[12:15], 0 offen
	buffer_load_u16 v138, v116, s[12:15], 0 offen
	buffer_load_u16 v135, v119, s[12:15], 0 offen
	buffer_load_u16 v136, v120, s[12:15], 0 offen
	buffer_load_u16 v131, v102, s[12:15], 0 offen
	buffer_load_u16 v132, v103, s[12:15], 0 offen
	buffer_load_u16 v127, v14, s[12:15], 0 offen
	buffer_load_u16 v128, v27, s[12:15], 0 offen
	buffer_load_u16 v123, v123, s[12:15], 0 offen
	buffer_load_u16 v124, v124, s[12:15], 0 offen
	buffer_load_u16 v119, v211, s[12:15], 0 offen
	buffer_load_u16 v120, v212, s[12:15], 0 offen
	buffer_load_u16 v115, v213, s[12:15], 0 offen
	buffer_load_u16 v116, v214, s[12:15], 0 offen
	buffer_load_u16 v111, v215, s[12:15], 0 offen
	buffer_load_u16 v112, v97, s[12:15], 0 offen
	buffer_load_u16 v106, v99, s[12:15], 0 offen
	buffer_load_u16 v107, v107, s[12:15], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v145.h, v2.l
	v_mov_b16_e64 v147.h, v2.l
	v_mov_b16_e64 v150.h, v2.l
	v_mov_b16_e64 v151.h, v2.l
	v_mov_b16_e64 v152.h, v2.l
	v_mov_b16_e64 v155.h, v2.l
	v_mov_b16_e64 v156.h, v2.l
	v_mov_b16_e64 v154.h, v2.l
	v_mov_b16_e64 v146.h, v2.l
	v_mov_b16_e64 v153.h, v2.l
	v_mov_b16_e64 v159.h, v2.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v11, v173, v2 :: v_dual_add_nc_u32 v208, 0xf8, v25
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v173.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v25, 0xfc, v25
	v_cndmask_b32_e64 v204, 0x80000000, v204, s2
	v_cndmask_b32_e64 v205, 0x80000000, v205, s2
	v_cndmask_b32_e64 v206, 0x80000000, v206, s2
	v_cndmask_b32_e64 v207, 0x80000000, v207, s2
	v_cndmask_b32_e64 v208, 0x80000000, v208, s2
	v_cndmask_b32_e64 v220, 0x80000000, v25, s2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v1, 1, v108
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v211, 16, v23
	s_clause 0x7
	buffer_load_u16 v102, v218, s[12:15], 0 offen
	buffer_load_u16 v103, v219, s[12:15], 0 offen
	buffer_load_u16 v97, v204, s[12:15], 0 offen
	buffer_load_u16 v99, v205, s[12:15], 0 offen
	buffer_load_u16 v27, v206, s[12:15], 0 offen
	buffer_load_u16 v25, v207, s[12:15], 0 offen
	buffer_load_u16 v14, v208, s[12:15], 0 offen
	buffer_load_u16 v23, v220, s[12:15], 0 offen
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v29, 16, v29
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v179, v179, v211, v85
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v28, v182, v28, v95
	v_fma_f32 v29, v183, v29, v94
	v_fma_f32 v31, v184, v31, v93
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v85, v85, v179, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v32, v185, v32, v92
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v95, v95, v28, s2
	v_cndmask_b32_e64 v29, v94, v29, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v166, 16, v166
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v167, 16, v167
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v145.l, v85.h
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v93, v31, s2
	v_cndmask_b32_e64 v32, v92, v32, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v166, v188, v166, v89
	v_fma_f32 v167, v189, v167, v88
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v28, 1, v145
	v_mov_b16_e64 v147.l, v29.h
	v_mov_b16_e64 v150.l, v95.h
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v89, v89, v166, s2
	v_cndmask_b32_e64 v88, v88, v167, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v151.l, v32.h
	v_mov_b16_e64 v152.l, v31.h
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_mov_b16_e64 v156.l, v89.h
	v_mov_b16_e64 v155.l, v88.h
	v_add3_u32 v28, v85, v28, 0x7fff
	v_and_b32_e32 v85, 1, v147
	v_and_b32_e32 v93, 1, v150
	v_and_b32_e32 v94, 1, v151
	v_and_b32_e32 v145, 1, v152
	v_and_b32_e32 v150, 1, v155
	v_and_b32_e32 v151, 1, v156
	v_cmp_o_f32_e64 s1, v29, v29
	v_cmp_o_f32_e64 s3, v95, v95
	v_cmp_o_f32_e64 s5, v31, v31
	v_cmp_o_f32_e64 s8, v88, v88
	v_cmp_o_f32_e64 s9, v89, v89
	v_add3_u32 v93, v95, v93, 0x7fff
	v_add3_u32 v29, v29, v85, 0x7fff
	v_add3_u32 v85, v31, v145, 0x7fff
	v_add3_u32 v89, v89, v151, 0x7fff
	v_add3_u32 v88, v88, v150, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v31, v32, v94, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s1
	v_cndmask_b16 v29.l, 0x7fff, v93.h, s3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v163, 16, v163
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v31.l, 0x7fff, v85.h, s5
	v_cndmask_b16 v85.h, 0x7fff, v88.h, s8
	v_cndmask_b16 v85.l, 0x7fff, v89.h, s9
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v169, 16, v169
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v161, v186, v161, v91
	v_fma_f32 v163, v178, v163, v96
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v168, 16, v168
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v162, v187, v162, v90
	v_fma_f32 v169, v191, v169, v86
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v91, v91, v161, s2
	v_cndmask_b32_e64 v96, v96, v163, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v168, v190, v168, v87
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v90, v90, v162, s2
	v_cndmask_b32_e64 v86, v86, v169, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v154.l, v91.h
	v_mov_b16_e64 v146.l, v96.h
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v87, v87, v168, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v153.l, v90.h
	v_mov_b16_e64 v159.l, v86.h
	v_and_b32_e32 v147, 1, v154
	v_and_b32_e32 v92, 1, v146
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(51)
	v_lshlrev_b32_e32 v164, 16, v164
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v146, 1, v153
	v_cmp_o_f32_e64 s7, v91, v91
	v_mov_b16_e64 v173.l, v87.h
	v_and_b32_e32 v152, 1, v159
	v_add3_u32 v91, v91, v147, 0x7fff
	v_cmp_o_f32_e64 s4, v32, v32
	v_add3_u32 v32, v90, v146, 0x7fff
	v_cmp_o_f32_e64 s6, v90, v90
	v_and_b32_e32 v153, 1, v173
	v_cndmask_b16 v28.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v32.l, 0x7fff, v91.h, s7
	v_add3_u32 v88, v86, v152, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v90, 16, v160
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v91, v193, v164, v84
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_add3_u32 v86, v87, v153, 0x7fff
	v_cmp_o_f32_e64 s0, v96, v96
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v89, v192, v90, v83
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v90, v84, v91, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v84.h, 0x7fff, v88.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v87, 16, v181
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v83, v83, v89, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v88.l, v90.h
	v_mov_b16_e32 v88.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v89, 16, v180
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v87, v195, v87, v82
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v91.l, v83.h
	v_mov_b16_e32 v91.h, v2.l
	v_and_b32_e32 v88, 1, v88
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v89, v194, v89, v81
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v82, v82, v87, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v84.l, 0x7fff, v86.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_add3_u32 v87, v90, v88, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v88, v81, v89, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v81.l, v82.h
	v_mov_b16_e32 v81.h, v2.l
	v_and_b32_e32 v86, 1, v91
	v_mov_b16_e32 v89.h, v2.l
	v_mov_b16_e32 v89.l, v88.h
	v_add3_u32 v92, v96, v92, 0x7fff
	v_and_b32_e32 v90, 1, v81
	v_cndmask_b16 v81.h, 0x7fff, v87.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v87, 16, v199
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v86, v83, v86, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_and_b32_e32 v83, 1, v89
	v_add3_u32 v89, v82, v90, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v90, 16, v198
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v87, v197, v87, v80
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v28.h, 0x7fff, v92.h, s0
	v_cmp_o_f32_e64 s0, v82, v82
	v_cndmask_b16 v81.l, 0x7fff, v86.h, vcc_lo
	v_add3_u32 v82, v88, v83, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v83, v196, v90, v79
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v86, v80, v87, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v87, 16, v202
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v88, 16, v201
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v79, v79, v83, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v83.l, v86.h
	v_mov_b16_e32 v83.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v87, v200, v87, v78
	v_fma_f32 v88, v177, v88, v77
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v80.h, 0x7fff, v89.h, s0
	v_mov_b16_e32 v89.l, v79.h
	v_and_b32_e32 v83, 1, v83
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v78, v78, v87, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v89.h, v2.l
	v_cndmask_b16 v80.l, 0x7fff, v82.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v87, v77, v88, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v83, v86, v83, 0x7fff
	v_mov_b16_e32 v77.l, v78.h
	v_mov_b16_e32 v77.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_and_b32_e32 v82, 1, v89
	v_mov_b16_e32 v86.l, v87.h
	v_mov_b16_e32 v86.h, v2.l
	v_and_b32_e32 v88, 1, v77
	v_cndmask_b16 v77.h, 0x7fff, v83.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v83, 16, v144
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v82, v79, v82, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_and_b32_e32 v79, 1, v86
	v_add3_u32 v86, v78, v88, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v88, 16, v143
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v83, v172, v83, v76
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v78, v78
	v_cndmask_b16 v77.l, 0x7fff, v82.h, vcc_lo
	v_add3_u32 v78, v87, v79, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v79, v171, v88, v75
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v82, v76, v83, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v83, 16, v142
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v76.h, 0x7fff, v86.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v86, 16, v140
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v75, v75, v79, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v79.l, v82.h
	v_mov_b16_e32 v79.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v83, v170, v83, v74
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v86, v165, v86, v73
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v87.l, v75.h
	v_and_b32_e32 v79, 1, v79
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v74, v74, v83, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v87.h, v2.l
	v_cndmask_b16 v76.l, 0x7fff, v78.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v83, v73, v86, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v79, v82, v79, 0x7fff
	v_mov_b16_e32 v73.l, v74.h
	v_mov_b16_e32 v73.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_and_b32_e32 v78, 1, v87
	v_mov_b16_e32 v82.l, v83.h
	v_mov_b16_e32 v82.h, v2.l
	v_and_b32_e32 v86, 1, v73
	v_cndmask_b16 v73.h, 0x7fff, v79.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v79, 16, v149
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v78, v75, v78, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	v_and_b32_e32 v75, 1, v82
	v_add3_u32 v82, v74, v86, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v86, 16, v148
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v79, v134, v79, v72
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v74, v74
	v_cndmask_b16 v73.l, 0x7fff, v78.h, vcc_lo
	v_add3_u32 v74, v83, v75, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v75, v133, v86, v71
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v78, v72, v79, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v79, 16, v158
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v72.h, 0x7fff, v82.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v82, 16, v157
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v71, v71, v75, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v75.l, v78.h
	v_mov_b16_e32 v75.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v79, v130, v79, v70
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v82, v129, v82, v69
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v83.l, v71.h
	v_and_b32_e32 v75, 1, v75
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v70, v70, v79, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v83.h, v2.l
	v_cndmask_b16 v72.l, 0x7fff, v74.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v79, v69, v82, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v75, v78, v75, 0x7fff
	v_mov_b16_e32 v69.l, v70.h
	v_mov_b16_e32 v69.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_and_b32_e32 v74, 1, v83
	v_mov_b16_e32 v78.l, v79.h
	v_mov_b16_e32 v78.h, v2.l
	v_and_b32_e32 v82, 1, v69
	v_cndmask_b16 v69.h, 0x7fff, v75.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v75, 16, v175
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v74, v71, v74, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_and_b32_e32 v71, 1, v78
	v_add3_u32 v78, v70, v82, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v82, 16, v174
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v75, v126, v75, v68
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v70, v70
	v_cndmask_b16 v69.l, 0x7fff, v74.h, vcc_lo
	v_add3_u32 v70, v79, v71, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v71, v125, v82, v67
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v74, v68, v75, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v75, 16, v203
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v68.h, 0x7fff, v78.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v78, 16, v176
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v67, v67, v71, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v71.l, v74.h
	v_mov_b16_e32 v71.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v75, v122, v75, v66
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v78, v121, v78, v65
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v79.l, v67.h
	v_and_b32_e32 v71, 1, v71
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v66, v66, v75, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v79.h, v2.l
	v_cndmask_b16 v68.l, 0x7fff, v70.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v75, v65, v78, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v71, v74, v71, 0x7fff
	v_mov_b16_e32 v65.l, v66.h
	v_mov_b16_e32 v65.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_and_b32_e32 v70, 1, v79
	v_mov_b16_e32 v74.l, v75.h
	v_mov_b16_e32 v74.h, v2.l
	v_and_b32_e32 v78, 1, v65
	v_cndmask_b16 v65.h, 0x7fff, v71.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v71, 16, v210
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v70, v67, v70, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_and_b32_e32 v67, 1, v74
	v_add3_u32 v74, v66, v78, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v71, v118, v71, v64
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v78, 16, v209
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v66, v66
	v_cndmask_b16 v65.l, 0x7fff, v70.h, vcc_lo
	v_add3_u32 v66, v75, v67, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v70, v64, v71, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v71, 16, v217
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v67, v117, v78, v63
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v64.h, 0x7fff, v74.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v74, 16, v216
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v71, v114, v71, v62
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v63, v63, v67, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v67.l, v70.h
	v_mov_b16_e32 v67.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v74, v113, v74, v61
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v62, v62, v71, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v75.l, v63.h
	v_mov_b16_e32 v75.h, v2.l
	v_and_b32_e32 v67, 1, v67
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v61, v61, v74, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v71.l, v62.h
	v_mov_b16_e32 v71.h, v2.l
	v_cndmask_b16 v64.l, 0x7fff, v66.h, vcc_lo
	v_and_b32_e32 v66, 1, v75
	v_add3_u32 v67, v70, v67, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_mov_b16_e32 v70.l, v61.h
	v_mov_b16_e32 v70.h, v2.l
	v_and_b32_e32 v71, 1, v71
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v74, 16, v141
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v66, v63, v66, 0x7fff
	v_cndmask_b16 v67.h, 0x7fff, v67.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_and_b32_e32 v63, 1, v70
	v_add3_u32 v70, v62, v71, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v71, 16, v139
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v74, v110, v74, v60
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v62, v62
	v_cndmask_b16 v67.l, 0x7fff, v66.h, vcc_lo
	v_add3_u32 v62, v61, v63, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v63, v109, v71, v59
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v60, v60, v74, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v61, 16, v138
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v66.h, 0x7fff, v70.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v59, v59, v63, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v63.l, v60.h
	v_mov_b16_e32 v63.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v70, 16, v137
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v61, v105, v61, v58
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v71.l, v59.h
	v_mov_b16_e32 v71.h, v2.l
	v_and_b32_e32 v63, 1, v63
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v70, v104, v70, v57
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v58, v58, v61, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v66.l, 0x7fff, v62.h, vcc_lo
	v_and_b32_e32 v61, 1, v71
	v_add3_u32 v62, v60, v63, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v57, v57, v70, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v63.l, v58.h
	v_mov_b16_e32 v63.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_add3_u32 v60, v59, v61, 0x7fff
	v_mov_b16_e32 v61.l, v57.h
	v_mov_b16_e32 v61.h, v2.l
	v_and_b32_e32 v63, 1, v63
	v_cndmask_b16 v62.h, 0x7fff, v62.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v70, 16, v136
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_and_b32_e32 v59, 1, v61
	v_add3_u32 v61, v58, v63, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v63, 16, v135
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v70, v101, v70, v56
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v58, v58
	v_add3_u32 v58, v57, v59, 0x7fff
	v_cndmask_b16 v62.l, 0x7fff, v60.h, vcc_lo
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v59, v100, v63, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v56, v56, v70, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v60.h, 0x7fff, v61.h, s0
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v57, 16, v132
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v55, v55, v59, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v61, 16, v131
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v59.l, v56.h
	v_mov_b16_e32 v59.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v57, v98, v57, v54
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v63.l, v55.h
	v_mov_b16_e32 v63.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v30, v30, v61, v53
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v59, 1, v59
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v54, v54, v57, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v60.l, 0x7fff, v58.h, vcc_lo
	v_and_b32_e32 v57, 1, v63
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v53, v30, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v58, v56, v59, 0x7fff
	v_mov_b16_e32 v53.l, v54.h
	v_mov_b16_e32 v53.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_add3_u32 v56, v55, v57, 0x7fff
	v_mov_b16_e32 v57.l, v30.h
	v_mov_b16_e32 v57.h, v2.l
	v_and_b32_e32 v53, 1, v53
	v_cndmask_b16 v58.h, 0x7fff, v58.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v59, 16, v128
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_and_b32_e32 v55, 1, v57
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v57, 16, v127
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v53, v54, v53, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v26, v26, v59, v52
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v54, v54
	v_cndmask_b16 v58.l, 0x7fff, v56.h, vcc_lo
	v_add3_u32 v54, v30, v55, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v24, v24, v57, v51
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v30, 16, v124
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v52, v26, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v52.h, 0x7fff, v53.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v51, v24, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v53, 16, v123
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v22, v22, v30, v50
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v51.l, v26.h
	v_mov_b16_e32 v51.h, v2.l
	v_mov_b16_e32 v30.l, v24.h
	v_mov_b16_e32 v30.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v21, v21, v53, v49
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v50, v22, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v51, 1, v51
	v_cndmask_b16 v52.l, 0x7fff, v54.h, vcc_lo
	v_and_b32_e32 v30, 1, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v49, v21, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v49.l, v22.h
	v_mov_b16_e32 v49.h, v2.l
	v_add3_u32 v50, v26, v51, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_add3_u32 v26, v24, v30, 0x7fff
	v_mov_b16_e32 v30.l, v21.h
	v_mov_b16_e32 v30.h, v2.l
	v_and_b32_e32 v49, 1, v49
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v51, 16, v120
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_and_b32_e32 v24, 1, v30
	v_add3_u32 v30, v22, v49, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v49, 16, v119
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v20, v20, v51, v48
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v22, v22
	v_cndmask_b16 v50.l, 0x7fff, v26.h, vcc_lo
	v_add3_u32 v22, v21, v24, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v19, v49, v47
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v48, v20, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v21, 16, v116
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v24.h, 0x7fff, v30.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v47, v19, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v26.l, v20.h
	v_mov_b16_e32 v26.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v30, 16, v115
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v18, v18, v21, v46
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v21.l, v19.h
	v_mov_b16_e32 v21.h, v2.l
	v_and_b32_e32 v26, 1, v26
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v17, v17, v30, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v18, v46, v18, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v24.l, 0x7fff, v22.h, vcc_lo
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v22, v20, v26, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v45, v17, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v26.l, v18.h
	v_mov_b16_e32 v26.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v20, v19, v21, 0x7fff
	v_mov_b16_e32 v21.l, v17.h
	v_mov_b16_e32 v21.h, v2.l
	v_and_b32_e32 v26, 1, v26
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v30, 16, v112
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_and_b32_e32 v19, 1, v21
	v_add3_u32 v21, v18, v26, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v26, 16, v111
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v16, v16, v30, v44
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v18, v18
	v_cndmask_b16 v22.l, 0x7fff, v20.h, vcc_lo
	v_add3_u32 v18, v17, v19, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v15, v15, v26, v43
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v44, v16, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v17, 16, v107
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v43, v15, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v20.l, v16.h
	v_mov_b16_e32 v20.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v21, 16, v106
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v13, v13, v17, v42
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v17.l, v15.h
	v_mov_b16_e32 v17.h, v2.l
	v_and_b32_e32 v20, 1, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v12, v12, v21, v41
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v13, v42, v13, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v19.l, 0x7fff, v18.h, vcc_lo
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v18, v16, v20, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v41, v12, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v20.l, v13.h
	v_mov_b16_e32 v20.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v16, v15, v17, 0x7fff
	v_mov_b16_e32 v17.l, v12.h
	v_mov_b16_e32 v17.h, v2.l
	v_and_b32_e32 v20, 1, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v21, 16, v103
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_and_b32_e32 v15, 1, v17
	v_add3_u32 v17, v13, v20, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v20, 16, v102
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v11, v21, v40
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v13, v13
	v_cndmask_b16 v18.l, 0x7fff, v16.h, vcc_lo
	v_add3_u32 v13, v12, v15, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v10, v10, v20, v39
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v40, v11, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v16, 16, v99
	v_lshlrev_b32_e32 v17, 16, v97
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v39, v10, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v12.l, v11.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v16, v38
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v12.h, v2.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v8, v8, v17, v37
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v16.l, v10.h
	v_mov_b16_e32 v16.h, v2.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v38, v9, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v12, 1, v12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v37, v8, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v15.l, 0x7fff, v13.h, vcc_lo
	v_and_b32_e32 v13, 1, v16
	v_mov_b16_e32 v16.l, v9.h
	v_add3_u32 v12, v11, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v11.h, v2.l
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v10, 1, v11
	v_add3_u32 v11, v9, v16, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v27
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v9, v9
	v_cndmask_b16 v12.l, 0x7fff, v13.h, vcc_lo
	v_add3_u32 v9, v8, v10, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v10, 16, v25
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v16, v36
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v2.h, 0x7fff, v11.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v23
	v_lshlrev_b32_e32 v13, 16, v14
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v10, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v36, v7, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v11, v33
	v_fma_f32 v4, v4, v13, v34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v35, v6, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v8.l, v7.h
	v_mov_b16_e32 v8.h, v2.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v33, v5, s2
	v_cndmask_b32_e64 v4, v34, v4, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v10.l, v6.h
	v_mov_b16_e32 v10.h, v2.l
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v11.l, v5.h
	v_mov_b16_e32 v13.l, v4.h
	v_mov_b16_e32 v13.h, v2.l
	v_mov_b16_e32 v11.h, v2.l
	v_and_b32_e32 v10, 1, v10
	v_cndmask_b16 v2.l, 0x7fff, v9.h, vcc_lo
	v_add3_u32 v8, v7, v8, 0x7fff
	v_and_b32_e32 v9, 1, v13
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v10, v6, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_cmp_o_f32_e64 s0, v7, v7
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s4
	v_add3_u32 v6, v4, v9, 0x7fff
	v_add3_u32 v7, v5, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v5, v5
	v_cmp_o_f32_e64 s2, v4, v4
	v_cndmask_b16 v4.h, 0x7fff, v10.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v108
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v7, v28, v31, vcc_lo
	v_cndmask_b32_e32 v36, v15, v19, vcc_lo
	v_cndmask_b32_e32 v15, v19, v15, vcc_lo
	v_cndmask_b32_e32 v37, v4, v12, vcc_lo
	v_cndmask_b32_e32 v4, v12, v4, vcc_lo
	v_mov_b32_e32 v12, 0x5410
	v_dual_mov_b32 v19, 0x7632 :: v_dual_cndmask_b32 v38, v5, v2
	v_cndmask_b32_e32 v2, v2, v5, vcc_lo
	v_permlanex16_b32 v5, v7, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v7, 0x1054, v12, vcc_lo
	v_cndmask_b32_e32 v12, 0x3276, v19, vcc_lo
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s6
	v_dual_cndmask_b32 v11, v85, v81 :: v_dual_cndmask_b32 v14, v84, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v12, v12, 8, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v8, v32, v29 :: v_dual_cndmask_b32 v9, v29, v32
	v_cndmask_b32_e32 v17, v77, v73, vcc_lo
	v_and_b32_e32 v7, 0x540054, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v12, 0x760076, v12
	v_cndmask_b32_e32 v21, v76, v72, vcc_lo
	v_cndmask_b32_e32 v25, v69, v65, vcc_lo
	v_cndmask_b32_e32 v29, v67, v62, vcc_lo
	v_cndmask_b32_e32 v33, v58, v50, vcc_lo
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v12, v12, 4, v12
	v_cndmask_b32_e32 v35, v18, v22, vcc_lo
	v_cndmask_b32_e32 v18, v22, v18, vcc_lo
	v_cndmask_b32_e32 v6, v31, v28, vcc_lo
	v_dual_cndmask_b32 v10, v81, v85 :: v_dual_cndmask_b32 v13, v80, v84
	v_cndmask_b32_e32 v16, v73, v77, vcc_lo
	v_dual_cndmask_b32 v20, v72, v76 :: v_dual_cndmask_b32 v23, v65, v69
	v_dual_cndmask_b32 v27, v68, v64 :: v_dual_cndmask_b32 v28, v62, v67
	v_cndmask_b32_e32 v31, v66, v60, vcc_lo
	v_cndmask_b32_e32 v32, v50, v58, vcc_lo
	v_cndmask_b32_e32 v34, v24, v52, vcc_lo
	v_cndmask_b32_e32 v24, v52, v24, vcc_lo
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v39, 0x5040504, v7
	v_and_b32_e32 v40, 0x7060706, v12
	v_permlanex16_b32 v33, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v5, v6, v39
	v_perm_b32 v5, v5, v6, v40
	v_perm_b32 v6, v9, v8, v39
	v_perm_b32 v7, v9, v8, v40
	v_perm_b32 v8, v11, v10, v39
	v_perm_b32 v9, v11, v10, v40
	v_perm_b32 v10, v14, v13, v39
	v_perm_b32 v11, v14, v13, v40
	v_perm_b32 v12, v17, v16, v39
	v_perm_b32 v13, v17, v16, v40
	v_perm_b32 v14, v19, v20, v39
	v_perm_b32 v15, v19, v20, v40
	v_perm_b32 v16, v21, v23, v39
	v_perm_b32 v17, v21, v23, v40
	v_perm_b32 v20, v25, v28, v39
	v_perm_b32 v21, v25, v28, v40
	v_perm_b32 v24, v29, v32, v39
	v_perm_b32 v25, v29, v32, v40
	v_and_b32_e32 v32, 0x1e0, v0
	v_perm_b32 v28, v33, v35, v39
	v_perm_b32 v29, v33, v35, v40
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v33, v3, v1, 1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b32_e32 v26, v64, v68, vcc_lo
	v_cndmask_b32_e32 v30, v60, v66, vcc_lo
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
	buffer_store_b128 v[4:7], v34, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v35, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v32, s[20:23], 0 offen
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
	buffer_store_b128 v[16:19], v4, s[20:23], 0 offen
	buffer_store_b128 v[20:23], v5, s[20:23], 0 offen
	buffer_store_b128 v[24:27], v6, s[20:23], 0 offen
	buffer_store_b128 v[28:31], v7, s[20:23], 0 offen
	buffer_store_b128 v[0:3], v8, s[20:23], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 233
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 233
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 34004
; TotalNumSgprs: 50
; NumVgprs: 233
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 233
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     233
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
