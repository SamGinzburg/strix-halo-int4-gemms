	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[14:15], s[0:1], 0x30
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b32 s16, s[0:1], 0x38
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x1ff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s14, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 23
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 9
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s4, s4, 2
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v1
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s6, s6
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	s_mul_i32 s9, s9, s6
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	s_mul_hi_u32 s9, s6, s9
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	s_cselect_b32 s5, s10, s6
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	s_xor_b32 s5, s5, s9
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	s_sub_i32 s5, s5, s9
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s6, s5, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s5, s4
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s7, s8, s6
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s7, s7, 4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v127, 15, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v128, 0x1f0, v0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	v_rcp_iflag_f32_e32 v1, s9
	s_mov_b32 s25, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s17, s16, 0xff
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s9
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s5, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s5
	.loc	1 120 13 is_stmt 0              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 126 14 is_stmt 1              ; generate_amdgcn.py:126:14
	s_lshl_b32 s24, s2, 6
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s2, s4, 9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_lt_i32 s17, 0x100
	s_cbranch_scc1 .LBB0_5
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s0, s17, 31
	v_or_b32_e32 v3, s24, v127
	s_lshr_b32 s0, s0, 24
.Ltmp15:
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v141, 5, v0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s17, s17, s0
	v_dual_mov_b32 v149, 0 :: v_dual_and_b32 v2, 31, v0
	s_ashr_i32 s27, s17, 8
	v_or_b32_e32 v5, 16, v3
	v_mul_lo_u32 v143, v3, s27
	v_or_b32_e32 v6, 32, v3
	v_or_b32_e32 v3, 48, v3
	v_mul_lo_u32 v7, s14, v141
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v4, 4, v2
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v146, v3, s27
	v_dual_mov_b32 v138, 0 :: v_dual_lshlrev_b32 v3, 5, v0
	v_mul_lo_u32 v144, v5, s27
	v_mul_lo_u32 v5, s15, v141
	v_dual_mov_b32 v140, 0 :: v_dual_and_b32 v1, 0x1e0, v0
	v_mul_lo_u32 v145, v6, s27
	v_add3_u32 v65, v7, v2, s24
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	v_dual_mov_b32 v129, 0 :: v_dual_lshlrev_b32 v6, 2, v128
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v3, 32, v3
.Ltmp17:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s1, s16, 31
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v142, 0, v127
	v_add3_u32 v66, v5, v4, s2
	v_dual_mov_b32 v131, 0 :: v_dual_lshlrev_b32 v4, 4, v0
	v_or_b32_e32 v5, 0x3f0, v0
	v_lshrrev_b32_e32 v1, 1, v1
	v_dual_mov_b32 v125, 0 :: v_dual_and_b32 v8, 28, v2
	v_add3_u32 v3, 0, v6, v3
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v6, 1, v128
	s_add_i32 s16, s16, s1
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s3, s3, 4
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s26, s16, 1
	v_or_b32_e32 v147, s2, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v7, s3, v141
	v_sub_nc_u32_e32 v148, s26, v141
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v150, 0, v2
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v151, 0, v4
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v152, 0, v5
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v153, v3, v8
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v154, 0, v6
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v155, v142, v1
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v76, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s20, s4
	s_mov_b32 s21, s5
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v7
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	.loc	1 194 24                        ; generate_amdgcn.py:194:24
	s_lshl_b32 s28, s25, 7
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v4, v144, s25, 1
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	s_add_i32 s29, s28, s3
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v5, v145, s25, 1
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[1:2], null, s29, s14, v[65:66]
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[2:3], null, s29, s15, v[66:67]
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s0, s29, v148
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v3, v143, s25, 1
	v_add_lshl_u32 v6, v146, s25, 1
	v_mov_b32_e32 v7, v149
	v_dual_mov_b32 v8, v149 :: v_dual_mov_b32 v25, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s0, s0, vcc_lo
	v_dual_mov_b32 v10, v149 :: v_dual_mov_b32 v33, 0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u16 v156, v1, s[20:23], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[71:74], v2, s[4:7], 0 offen
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x3
	buffer_load_u16 v70, v3, s[16:19], 0 offen
	buffer_load_u16 v69, v4, s[16:19], 0 offen
	buffer_load_u16 v68, v5, s[16:19], 0 offen
	buffer_load_u16 v67, v6, s[16:19], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v149
	v_mov_b32_e32 v3, v149
	v_dual_mov_b32 v4, v149 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v149
	v_dual_mov_b32 v6, v149 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v11, v149
	v_dual_mov_b32 v12, v149 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v149
	v_dual_mov_b32 v14, v149 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v149
	v_dual_mov_b32 v16, v149 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v149
	v_mov_b32_e32 v19, v149
	v_mov_b32_e32 v20, v149
	v_mov_b32_e32 v21, v149
	v_mov_b32_e32 v22, v149
	v_mov_b32_e32 v23, v149
	v_mov_b32_e32 v24, v149
	v_mov_b32_e32 v26, v149
	v_mov_b32_e32 v27, v149
	v_mov_b32_e32 v28, v149
	v_mov_b32_e32 v29, v149
	v_mov_b32_e32 v30, v149
	v_mov_b32_e32 v31, v149
	v_mov_b32_e32 v32, v149
	v_mov_b32_e32 v34, v149
	v_mov_b32_e32 v35, v149
	v_mov_b32_e32 v36, v149
	v_mov_b32_e32 v37, v149
	v_mov_b32_e32 v38, v149
	v_mov_b32_e32 v39, v149
	v_mov_b32_e32 v40, v149
	v_mov_b32_e32 v42, v149
	v_mov_b32_e32 v43, v149
	v_mov_b32_e32 v44, v149
	v_mov_b32_e32 v45, v149
	v_mov_b32_e32 v46, v149
	v_mov_b32_e32 v47, v149
	v_mov_b32_e32 v48, v149
	v_mov_b32_e32 v50, v149
	v_mov_b32_e32 v51, v149
	v_mov_b32_e32 v52, v149
	v_mov_b32_e32 v53, v149
	v_mov_b32_e32 v54, v149
	v_mov_b32_e32 v55, v149
	v_mov_b32_e32 v56, v149
	v_mov_b32_e32 v58, v149
	v_mov_b32_e32 v59, v149
	v_mov_b32_e32 v60, v149
	v_mov_b32_e32 v61, v149
	v_mov_b32_e32 v62, v149
	v_mov_b32_e32 v63, v149
	v_mov_b32_e32 v64, v149
	s_mov_b32 s30, 0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(5)
	ds_store_b16 v150, v156 offset:8192
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v151, v[71:74]
.LBB0_3:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 196 13                        ; generate_amdgcn.py:196:13
	s_add_i32 s31, s30, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	s_add_i32 s33, s29, s31
	v_or_b32_e32 v71, s33, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s0, s26, v71
	.loc	1 198 52 is_stmt 0              ; generate_amdgcn.py:198:52
	v_subrev_nc_u32_e32 v71, s28, v71
	.loc	1 198 51                        ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s1, 0x80, v71
	.loc	1 214 34 is_stmt 1              ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[71:72], null, s33, s14, v[65:66]
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s0, s0, s1
	.loc	1 196 13                        ; generate_amdgcn.py:196:13
	s_cmpk_lt_u32 s30, 0x60
	s_mov_b32 s30, s31
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v71, 0x80000000, v71, s0
	buffer_load_u16 v168, v71, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v156, v142 offset:8512
	ds_load_u8 v157, v142 offset:8448
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_waitcnt vmcnt(1)
	v_mad_u64_u32 v[71:72], null, s33, s15, v[66:67]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 220 26 is_stmt 0              ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v71, 0x80000000, v71, s0
	buffer_load_b128 v[71:74], v71, s[4:7], 0 offen
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v142 offset:8640
	ds_load_u8 v158, v142 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v157, 16, v156
	ds_load_u8 v156, v142 offset:8256
	ds_load_u8 v158, v142 offset:8192
	ds_load_u8 v166, v142 offset:8208
	ds_load_u8 v169, v142 offset:8224
	ds_load_u8 v170, v142 offset:8240
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v156, v158, v156, 0xc0c0004
	ds_load_u8 v158, v142 offset:8384
	ds_load_u8 v159, v142 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v156, v158, 16, v156
	ds_load_u8 v158, v155 offset:2560
	ds_load_u8 v159, v155 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v155 offset:3584
	ds_load_u8 v160, v155 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v159, 16, v158
	ds_load_u8 v158, v155 offset:512
	ds_load_u8 v160, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v160, v158, 0xc0c0004
	ds_load_u8 v160, v155 offset:1536
	ds_load_u8 v161, v155 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v160, 16, v158
	ds_load_u8 v160, v142 offset:9024
	ds_load_u8 v161, v142 offset:8960
	v_wmma_i32_16x16x16_iu4 v[1:8], v[158:159], v[156:157], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v142 offset:9152
	ds_load_u8 v162, v142 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v161, 16, v160
	ds_load_u8 v160, v142 offset:8768
	ds_load_u8 v162, v142 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v162, v160, 0xc0c0004
	ds_load_u8 v162, v142 offset:8896
	ds_load_u8 v163, v142 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v162, 16, v160
	ds_load_u8 v162, v155 offset:6656
	ds_load_u8 v163, v155 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v155 offset:7680
	ds_load_u8 v164, v155 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v163, 16, v162
	ds_load_u8 v162, v155 offset:4608
	ds_load_u8 v164, v155 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v164, v162, 0xc0c0004
	ds_load_u8 v164, v155 offset:5632
	ds_load_u8 v165, v155 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v162, v164, 16, v162
	ds_load_u8 v164, v155 offset:2816
	ds_load_u8 v165, v155 offset:2304
	v_wmma_i32_16x16x16_iu4 v[1:8], v[162:163], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v155 offset:3840
	ds_load_u8 v167, v155 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v167, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v165, 16, v164
	ds_load_u8 v164, v155 offset:768
	ds_load_u8 v167, v155 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v167, v164, 0xc0c0004
	ds_load_u8 v167, v155 offset:1792
	ds_load_u8 v171, v155 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v171, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v164, v167, 16, v164
	v_wmma_i32_16x16x16_iu4 v[9:16], v[164:165], v[156:157], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v156, v155 offset:6912
	ds_load_u8 v157, v155 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v155 offset:7936
	ds_load_u8 v167, v155 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v167, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v157, 16, v156
	ds_load_u8 v156, v155 offset:4864
	ds_load_u8 v167, v155 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v167, v156, 0xc0c0004
	ds_load_u8 v167, v155 offset:5888
	ds_load_u8 v171, v155 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v171, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v156, v167, 16, v156
	v_wmma_i32_16x16x16_iu4 v[9:16], v[156:157], v[160:161], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v160, v142 offset:8528
	ds_load_u8 v161, v142 offset:8464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v142 offset:8656
	ds_load_u8 v167, v142 offset:8592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v167, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v161, 16, v160
	ds_load_u8 v160, v142 offset:8272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v166, v160, 0xc0c0004
	ds_load_u8 v166, v142 offset:8400
	ds_load_u8 v167, v142 offset:8336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v166, 16, v160
	ds_load_u8 v166, v142 offset:9040
	ds_load_u8 v167, v142 offset:8976
	v_wmma_i32_16x16x16_iu4 v[17:24], v[158:159], v[160:161], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[164:165], v[160:161], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v160, v142 offset:8544
	ds_load_u8 v161, v142 offset:8480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v142 offset:9168
	ds_load_u8 v171, v142 offset:9104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v171, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v167, 16, v166
	ds_load_u8 v166, v142 offset:8784
	ds_load_u8 v171, v142 offset:8720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v171, v166, 0xc0c0004
	ds_load_u8 v171, v142 offset:8912
	ds_load_u8 v172, v142 offset:8848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v166, v171, 16, v166
	v_wmma_i32_16x16x16_iu4 v[17:24], v[162:163], v[166:167], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[156:157], v[166:167], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v161, v142 offset:8672
	ds_load_u8 v166, v142 offset:8608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v166, v161, 0xc0c0004
	ds_load_u8 v166, v142 offset:8416
	ds_load_u8 v167, v142 offset:8352
	v_lshl_or_b32 v161, v161, 16, v160
	ds_load_u8 v160, v142 offset:8288
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v169, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v166, 16, v160
	ds_load_u8 v166, v142 offset:9056
	ds_load_u8 v167, v142 offset:8992
	v_wmma_i32_16x16x16_iu4 v[33:40], v[158:159], v[160:161], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[164:165], v[160:161], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v160, v142 offset:8560
	ds_load_u8 v161, v142 offset:8496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v142 offset:9184
	ds_load_u8 v169, v142 offset:9120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v169, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v167, 16, v166
	ds_load_u8 v166, v142 offset:8800
	ds_load_u8 v169, v142 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v169, v166, 0xc0c0004
	ds_load_u8 v169, v142 offset:8928
	ds_load_u8 v171, v142 offset:8864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v171, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v166, v169, 16, v166
	v_wmma_i32_16x16x16_iu4 v[33:40], v[162:163], v[166:167], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[156:157], v[166:167], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v161, v142 offset:8688
	ds_load_u8 v166, v142 offset:8624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v166, v161, 0xc0c0004
	ds_load_u8 v166, v142 offset:8432
	ds_load_u8 v167, v142 offset:8368
	v_lshl_or_b32 v161, v161, 16, v160
	ds_load_u8 v160, v142 offset:8304
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v170, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v160, v166, 16, v160
	v_wmma_i32_16x16x16_iu4 v[49:56], v[158:159], v[160:161], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v158, v142 offset:8816
	ds_load_u8 v159, v142 offset:8752
	v_wmma_i32_16x16x16_iu4 v[57:64], v[164:165], v[160:161], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v142 offset:8944
	ds_load_u8 v166, v142 offset:8880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v166, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v159, 16, v158
	ds_load_u8 v159, v142 offset:9072
	ds_load_u8 v166, v142 offset:9008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v166, v159, 0xc0c0004
	ds_load_u8 v166, v152 offset:8192
	ds_load_u8 v167, v142 offset:9136
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v150, v168 offset:8192
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v151, v[71:74]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v166, v167, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v159, v166, 16, v159
	v_wmma_i32_16x16x16_iu4 v[49:56], v[162:163], v[158:159], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[156:157], v[158:159], v[57:64] neg_lo:[1,1,0]
	.loc	1 196 13                        ; generate_amdgcn.py:196:13
	s_cbranch_scc1 .LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e64 v157.h, v68.l
	v_mov_b16_e64 v156.h, v67.l
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v67, v142 offset:8512
	ds_load_u8 v68, v142 offset:8448
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e64 v158.h, v69.l
	v_mov_b16_e64 v159.h, v70.l
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s25, s15
	v_mov_b16_e64 v159.l, 0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s25, s25, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lg_u32 s25, s27
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e64 v158.l, v159.l
	v_mov_b16_e64 v157.l, v159.l
	v_mov_b16_e64 v156.l, v159.l
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v142 offset:8640
	ds_load_u8 v69, v142 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v68, 16, v67
	ds_load_u8 v67, v142 offset:8256
	ds_load_u8 v68, v142 offset:8192
	ds_load_u8 v162, v142 offset:8208
	ds_load_u8 v164, v142 offset:8224
	ds_load_u8 v165, v142 offset:8240
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v142 offset:8384
	ds_load_u8 v69, v142 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v68, 16, v67
	ds_load_u8 v67, v155 offset:2560
	ds_load_u8 v68, v155 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v155 offset:3584
	ds_load_u8 v69, v155 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v68, 16, v67
	ds_load_u8 v67, v155 offset:512
	ds_load_u8 v68, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v155 offset:1536
	ds_load_u8 v69, v155 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v68, 16, v67
	ds_load_u8 v67, v142 offset:9024
	ds_load_u8 v68, v142 offset:8960
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[71:72], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v142 offset:9152
	ds_load_u8 v69, v142 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v68, 16, v67
	ds_load_u8 v67, v142 offset:8768
	ds_load_u8 v68, v142 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v142 offset:8896
	ds_load_u8 v69, v142 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v68, 16, v67
	ds_load_u8 v67, v155 offset:6656
	ds_load_u8 v68, v155 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v155 offset:7680
	ds_load_u8 v69, v155 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v68, 16, v67
	ds_load_u8 v67, v155 offset:4608
	ds_load_u8 v69, v155 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v69, v67, 0xc0c0004
	ds_load_u8 v69, v155 offset:5632
	ds_load_u8 v70, v155 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v69, 16, v67
	ds_load_u8 v69, v155 offset:2816
	ds_load_u8 v70, v155 offset:2304
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[160:161], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v155 offset:3840
	ds_load_u8 v163, v155 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v163, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v155 offset:768
	ds_load_u8 v163, v155 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v163, v69, 0xc0c0004
	ds_load_u8 v163, v155 offset:1792
	ds_load_u8 v166, v155 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v166, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v163, 16, v69
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[71:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v71, v155 offset:6912
	ds_load_u8 v72, v155 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v155 offset:7936
	ds_load_u8 v163, v155 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v163, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v155 offset:4864
	ds_load_u8 v163, v155 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v163, v71, 0xc0c0004
	ds_load_u8 v163, v155 offset:5888
	ds_load_u8 v166, v155 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v166, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v163, 16, v71
	v_wmma_i32_16x16x16_iu4 v[9:16], v[71:72], v[160:161], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v160, v142 offset:8528
	ds_load_u8 v161, v142 offset:8464
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v142 offset:8656
	ds_load_u8 v163, v142 offset:8592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v163, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v161, 16, v160
	ds_load_u8 v160, v142 offset:8272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v162, v160, 0xc0c0004
	ds_load_u8 v162, v142 offset:8400
	ds_load_u8 v163, v142 offset:8336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v162, 16, v160
	ds_load_u8 v162, v142 offset:9040
	ds_load_u8 v163, v142 offset:8976
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[160:161], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[160:161], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v160, v142 offset:8544
	ds_load_u8 v161, v142 offset:8480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v142 offset:9168
	ds_load_u8 v166, v142 offset:9104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v166, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v163, 16, v162
	ds_load_u8 v162, v142 offset:8784
	ds_load_u8 v166, v142 offset:8720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v166, v162, 0xc0c0004
	ds_load_u8 v166, v142 offset:8912
	ds_load_u8 v167, v142 offset:8848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v166, 16, v162
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[162:163], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[162:163], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v161, v142 offset:8672
	ds_load_u8 v162, v142 offset:8608
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v142 offset:8416
	ds_load_u8 v163, v142 offset:8352
	v_lshl_or_b32 v161, v161, 16, v160
	ds_load_u8 v160, v142 offset:8288
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v164, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v162, 16, v160
	ds_load_u8 v162, v142 offset:9056
	ds_load_u8 v163, v142 offset:8992
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[160:161], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[69:70], v[160:161], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v160, v142 offset:8560
	ds_load_u8 v161, v142 offset:8496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v142 offset:9184
	ds_load_u8 v164, v142 offset:9120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v163, 16, v162
	ds_load_u8 v162, v142 offset:8800
	ds_load_u8 v164, v142 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v164, v162, 0xc0c0004
	ds_load_u8 v164, v142 offset:8928
	ds_load_u8 v166, v142 offset:8864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v166, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v164, 16, v162
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[162:163], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[71:72], v[162:163], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v161, v142 offset:8688
	ds_load_u8 v162, v142 offset:8624
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v164, v44
	v_cvt_f32_i32_e32 v166, v46
	v_cvt_f32_i32_e32 v167, v47
	v_cvt_f32_i32_e32 v168, v48
	v_mul_f32_e32 v48, v158, v17
	v_mul_f32_e32 v47, v158, v18
	v_mul_f32_e32 v46, v158, v19
	v_mul_f32_e32 v44, v158, v21
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v142 offset:8432
	ds_load_u8 v163, v142 offset:8368
	v_lshl_or_b32 v161, v161, 16, v160
	ds_load_u8 v160, v142 offset:8304
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v165, v160, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v165, v45
	v_mul_f32_e32 v45, v158, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v160, v162, 16, v160
	v_wmma_i32_16x16x16_iu4 v[49:56], v[73:74], v[160:161], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v73, v142 offset:8816
	ds_load_u8 v74, v142 offset:8752
	v_wmma_i32_16x16x16_iu4 v[57:64], v[69:70], v[160:161], v[57:64] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v69, v34
	v_cvt_f32_i32_e32 v70, v35
	v_cvt_f32_i32_e32 v160, v40
	v_cvt_f32_i32_e32 v161, v41
	v_mul_f32_e32 v41, v158, v24
	v_mul_f32_e32 v40, v158, v25
	v_mul_f32_e32 v35, v158, v30
	v_mul_f32_e32 v34, v158, v31
	v_mul_f32_e32 v30, v157, v70
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v142 offset:8944
	ds_load_u8 v162, v142 offset:8880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v162, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v74, 16, v73
	ds_load_u8 v74, v142 offset:9072
	ds_load_u8 v162, v142 offset:9008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v162, v74, 0xc0c0004
	ds_load_u8 v162, v152 offset:8192
	ds_load_u8 v163, v142 offset:9136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v163, v43
	v_mul_f32_e32 v43, v158, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v74, v162, 16, v74
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v162, v42
	v_mul_f32_e32 v42, v158, v23
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[49:56], v[67:68], v[73:74], v[49:56] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v67, v147, s0, 1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[57:64], v[71:72], v[73:74], v[57:64] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v68, v33
	v_cvt_f32_i32_e32 v71, v36
	v_cvt_f32_i32_e32 v72, v37
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v67, v67, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v73, v38
	v_cvt_f32_i32_e32 v74, v39
	v_cvt_f32_i32_e32 v169, v49
	v_cvt_f32_i32_e32 v170, v50
	v_cvt_f32_i32_e32 v171, v51
	v_cvt_f32_i32_e32 v172, v52
	v_cvt_f32_i32_e32 v173, v53
	v_cvt_f32_i32_e32 v174, v54
	v_cvt_f32_i32_e32 v175, v55
	v_cvt_f32_i32_e32 v176, v56
	v_cvt_f32_i32_e32 v177, v57
	v_cvt_f32_i32_e32 v178, v58
	v_cvt_f32_i32_e32 v179, v59
	v_cvt_f32_i32_e32 v180, v60
	v_cvt_f32_i32_e32 v181, v61
	v_cvt_f32_i32_e32 v182, v62
	v_cvt_f32_i32_e32 v183, v63
	v_cvt_f32_i32_e32 v184, v64
	v_mul_f32_e32 v63, v159, v2
	v_mul_f32_e32 v62, v159, v3
	v_mul_f32_e32 v61, v159, v4
	v_mul_f32_e32 v60, v159, v5
	v_mul_f32_e32 v59, v159, v6
	v_mul_f32_e32 v58, v159, v7
	v_mul_f32_e32 v57, v159, v8
	v_mul_f32_e32 v56, v159, v9
	v_mul_f32_e32 v55, v159, v10
	v_dual_mul_f32 v54, v159, v11 :: v_dual_mul_f32 v39, v158, v26
	v_dual_mul_f32 v53, v159, v12 :: v_dual_mul_f32 v38, v158, v27
	v_dual_mul_f32 v52, v159, v13 :: v_dual_mul_f32 v37, v158, v28
	v_dual_mul_f32 v51, v159, v14 :: v_dual_mul_f32 v36, v158, v29
	v_mul_f32_e32 v50, v159, v15
	v_mul_f32_e32 v49, v159, v16
	v_mul_f32_e32 v33, v158, v32
	v_dual_mul_f32 v32, v157, v68 :: v_dual_mul_f32 v15, v156, v170
	v_dual_mul_f32 v31, v157, v69 :: v_dual_mul_f32 v14, v156, v171
	v_dual_mul_f32 v29, v157, v71 :: v_dual_mul_f32 v16, v156, v169
	v_dual_mul_f32 v28, v157, v72 :: v_dual_mul_f32 v11, v156, v174
	v_dual_mul_f32 v27, v157, v73 :: v_dual_mul_f32 v10, v156, v175
	v_dual_mul_f32 v26, v157, v74 :: v_dual_mul_f32 v13, v156, v172
	v_dual_mul_f32 v25, v157, v160 :: v_dual_mul_f32 v12, v156, v173
	v_dual_mul_f32 v24, v157, v161 :: v_dual_mul_f32 v9, v156, v176
	v_dual_mul_f32 v23, v157, v162 :: v_dual_mul_f32 v8, v156, v177
	v_dual_mul_f32 v22, v157, v163 :: v_dual_mul_f32 v7, v156, v178
	v_dual_mul_f32 v21, v157, v164 :: v_dual_mul_f32 v6, v156, v179
	v_dual_mul_f32 v20, v157, v165 :: v_dual_mul_f32 v5, v156, v180
	v_dual_mul_f32 v19, v157, v166 :: v_dual_mul_f32 v4, v156, v181
	v_dual_mul_f32 v18, v157, v167 :: v_dual_mul_f32 v3, v156, v182
	v_dual_mul_f32 v17, v157, v168 :: v_dual_mul_f32 v2, v156, v183
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mul_f32 v64, v159, v1 :: v_dual_mul_f32 v1, v156, v184
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v67, 16, v67
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	ds_store_b32 v153, v67
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v154
	ds_load_b128 v[71:74], v154 offset:16
	ds_load_b128 v[156:159], v154 offset:1024
	ds_load_b128 v[160:163], v154 offset:1040
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v140, v64, v67 :: v_dual_fmac_f32 v139, v63, v68
	v_dual_fmac_f32 v138, v62, v69 :: v_dual_fmac_f32 v137, v61, v70
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v136, v60, v71 :: v_dual_fmac_f32 v135, v59, v72
	v_dual_fmac_f32 v134, v58, v73 :: v_dual_fmac_f32 v133, v57, v74
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v132, v56, v156 :: v_dual_fmac_f32 v131, v55, v157
	v_dual_fmac_f32 v130, v54, v158 :: v_dual_fmac_f32 v129, v53, v159
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v126, v52, v160 :: v_dual_fmac_f32 v125, v51, v161
	v_dual_fmac_f32 v124, v50, v162 :: v_dual_fmac_f32 v123, v49, v163
	v_fmac_f32_e32 v120, v46, v69
	v_dual_fmac_f32 v122, v48, v67 :: v_dual_fmac_f32 v121, v47, v68
	v_dual_fmac_f32 v119, v45, v70 :: v_dual_fmac_f32 v118, v44, v71
	v_dual_fmac_f32 v117, v43, v72 :: v_dual_fmac_f32 v116, v42, v73
	v_dual_fmac_f32 v115, v41, v74 :: v_dual_fmac_f32 v114, v40, v156
	v_dual_fmac_f32 v113, v39, v157 :: v_dual_fmac_f32 v112, v38, v158
	v_dual_fmac_f32 v111, v37, v159 :: v_dual_fmac_f32 v110, v36, v160
	v_dual_fmac_f32 v109, v35, v161 :: v_dual_fmac_f32 v108, v34, v162
	v_dual_fmac_f32 v107, v33, v163 :: v_dual_fmac_f32 v104, v30, v69
	v_dual_fmac_f32 v106, v32, v67 :: v_dual_fmac_f32 v105, v31, v68
	v_dual_fmac_f32 v103, v29, v70 :: v_dual_fmac_f32 v102, v28, v71
	v_dual_fmac_f32 v101, v27, v72 :: v_dual_fmac_f32 v100, v26, v73
	v_dual_fmac_f32 v99, v25, v74 :: v_dual_fmac_f32 v98, v24, v156
	v_dual_fmac_f32 v97, v23, v157 :: v_dual_fmac_f32 v96, v22, v158
	v_dual_fmac_f32 v95, v21, v159 :: v_dual_fmac_f32 v94, v20, v160
	v_dual_fmac_f32 v93, v19, v161 :: v_dual_fmac_f32 v92, v18, v162
	v_dual_fmac_f32 v91, v17, v163 :: v_dual_fmac_f32 v88, v14, v69
	v_dual_fmac_f32 v90, v16, v67 :: v_dual_fmac_f32 v89, v15, v68
	v_dual_fmac_f32 v87, v13, v70 :: v_dual_fmac_f32 v86, v12, v71
	v_dual_fmac_f32 v85, v11, v72 :: v_dual_fmac_f32 v84, v10, v73
	v_dual_fmac_f32 v83, v9, v74 :: v_dual_fmac_f32 v82, v8, v156
	v_dual_fmac_f32 v81, v7, v157 :: v_dual_fmac_f32 v80, v6, v158
	v_dual_fmac_f32 v79, v5, v159 :: v_dual_fmac_f32 v78, v4, v160
	v_dual_fmac_f32 v77, v3, v161 :: v_dual_fmac_f32 v76, v2, v162
	v_fmac_f32_e32 v75, v1, v163
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
.LBB0_5:                                ; %._crit_edge
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_bfe_u32 v7, v140, 16, 1
	v_bfe_u32 v8, v139, 16, 1
	v_bfe_u32 v9, v138, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	v_cmp_o_f32_e64 s0, v139, v139
	v_add3_u32 v7, v140, v7, 0x7fff
	v_add3_u32 v8, v139, v8, 0x7fff
	v_bfe_u32 v10, v137, 16, 1
	v_add3_u32 v9, v138, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v138, v138
	v_cndmask_b16 v7.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s0
	v_bfe_u32 v8, v136, 16, 1
	v_bfe_u32 v11, v135, 16, 1
	v_add3_u32 v10, v137, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s1
	v_add3_u32 v8, v136, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v136, v136
	v_add3_u32 v11, v135, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v135, v135
	v_cndmask_b16 v9.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v134, 16, 1
	v_bfe_u32 v12, v133, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s1
	v_bfe_u32 v11, v132, 16, 1
	v_add3_u32 v10, v134, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_add3_u32 v12, v133, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v133, v133
	v_bfe_u32 v13, v131, 16, 1
	v_add3_u32 v11, v132, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v132, v132
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s0
	v_bfe_u32 v12, v130, 16, 1
	v_bfe_u32 v14, v129, 16, 1
	v_add3_u32 v13, v131, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s1
	v_add3_u32 v12, v130, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v130, v130
	v_add3_u32 v14, v129, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v129, v129
	v_cndmask_b16 v11.h, 0x7fff, v13.h, vcc_lo
	v_bfe_u32 v13, v126, 16, 1
	v_bfe_u32 v15, v125, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s0
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s1
	v_bfe_u32 v14, v124, 16, 1
	v_add3_u32 v13, v126, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v126, v126
	v_add3_u32 v15, v125, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v125, v125
	v_bfe_u32 v16, v123, 16, 1
	v_add3_u32 v14, v124, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v124, v124
	v_cndmask_b16 v13.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s0
	v_bfe_u32 v15, v122, 16, 1
	v_bfe_u32 v17, v121, 16, 1
	v_add3_u32 v16, v123, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v123, v123
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_add3_u32 v15, v122, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v122, v122
	v_add3_u32 v17, v121, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v121, v121
	v_cndmask_b16 v14.h, 0x7fff, v16.h, vcc_lo
	v_bfe_u32 v16, v120, 16, 1
	v_bfe_u32 v18, v119, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s0
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s1
	v_bfe_u32 v17, v118, 16, 1
	v_add3_u32 v16, v120, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v120, v120
	v_add3_u32 v18, v119, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v119, v119
	v_bfe_u32 v19, v117, 16, 1
	v_add3_u32 v17, v118, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v118, v118
	v_cndmask_b16 v16.l, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s0
	v_bfe_u32 v18, v116, 16, 1
	v_bfe_u32 v20, v115, 16, 1
	v_add3_u32 v19, v117, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v117, v117
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s1
	v_add3_u32 v18, v116, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v116, v116
	v_add3_u32 v20, v115, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v115, v115
	v_cndmask_b16 v17.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v114, 16, 1
	v_bfe_u32 v21, v113, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s0
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s1
	v_bfe_u32 v20, v112, 16, 1
	v_add3_u32 v19, v114, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v114, v114
	v_add3_u32 v21, v113, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v113, v113
	v_bfe_u32 v22, v111, 16, 1
	v_add3_u32 v20, v112, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v112, v112
	v_cndmask_b16 v19.l, 0x7fff, v19.h, vcc_lo
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s0
	v_bfe_u32 v21, v110, 16, 1
	v_bfe_u32 v23, v109, 16, 1
	v_add3_u32 v22, v111, v22, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v111, v111
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s1
	v_add3_u32 v21, v110, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v110, v110
	v_add3_u32 v23, v109, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v109, v109
	v_cndmask_b16 v20.h, 0x7fff, v22.h, vcc_lo
	v_bfe_u32 v22, v108, 16, 1
	v_bfe_u32 v24, v107, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s0
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s1
	v_bfe_u32 v23, v106, 16, 1
	v_add3_u32 v22, v108, v22, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v108, v108
	v_add3_u32 v24, v107, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v107, v107
	v_bfe_u32 v25, v105, 16, 1
	v_add3_u32 v23, v106, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v106, v106
	v_cndmask_b16 v22.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s0
	v_bfe_u32 v24, v104, 16, 1
	v_bfe_u32 v26, v103, 16, 1
	v_add3_u32 v25, v105, v25, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s1
	v_add3_u32 v24, v104, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v104, v104
	v_add3_u32 v26, v103, v26, 0x7fff
	v_cmp_o_f32_e64 s1, v103, v103
	v_cndmask_b16 v23.h, 0x7fff, v25.h, vcc_lo
	v_bfe_u32 v25, v102, 16, 1
	v_bfe_u32 v27, v101, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s0
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s1
	v_bfe_u32 v26, v100, 16, 1
	v_add3_u32 v25, v102, v25, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	v_add3_u32 v27, v101, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v101, v101
	v_bfe_u32 v28, v99, 16, 1
	v_add3_u32 v26, v100, v26, 0x7fff
	v_cmp_o_f32_e64 s1, v100, v100
	v_cndmask_b16 v25.l, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s0
	v_bfe_u32 v27, v98, 16, 1
	v_bfe_u32 v29, v97, 16, 1
	v_add3_u32 v28, v99, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s1
	v_add3_u32 v27, v98, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v98, v98
	v_add3_u32 v29, v97, v29, 0x7fff
	v_cmp_o_f32_e64 s1, v97, v97
	v_cndmask_b16 v26.h, 0x7fff, v28.h, vcc_lo
	v_bfe_u32 v28, v96, 16, 1
	v_bfe_u32 v30, v95, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s0
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s1
	v_bfe_u32 v29, v94, 16, 1
	v_add3_u32 v28, v96, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_add3_u32 v30, v95, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v95, v95
	v_bfe_u32 v31, v93, 16, 1
	v_add3_u32 v29, v94, v29, 0x7fff
	v_cmp_o_f32_e64 s1, v94, v94
	v_cndmask_b16 v28.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s0
	v_bfe_u32 v30, v92, 16, 1
	v_bfe_u32 v32, v91, 16, 1
	v_add3_u32 v31, v93, v31, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s1
	v_add3_u32 v30, v92, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v92, v92
	v_add3_u32 v32, v91, v32, 0x7fff
	v_cmp_o_f32_e64 s1, v91, v91
	v_cndmask_b16 v29.h, 0x7fff, v31.h, vcc_lo
	v_bfe_u32 v31, v90, 16, 1
	v_bfe_u32 v33, v89, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s0
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s1
	v_bfe_u32 v32, v88, 16, 1
	v_add3_u32 v31, v90, v31, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_add3_u32 v33, v89, v33, 0x7fff
	v_cmp_o_f32_e64 s0, v89, v89
	v_bfe_u32 v34, v87, 16, 1
	v_add3_u32 v32, v88, v32, 0x7fff
	v_cmp_o_f32_e64 s1, v88, v88
	v_cndmask_b16 v31.l, 0x7fff, v31.h, vcc_lo
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s0
	v_bfe_u32 v33, v86, 16, 1
	v_bfe_u32 v35, v85, 16, 1
	v_add3_u32 v34, v87, v34, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s1
	v_add3_u32 v33, v86, v33, 0x7fff
	v_cmp_o_f32_e64 s0, v86, v86
	v_add3_u32 v35, v85, v35, 0x7fff
	v_cmp_o_f32_e64 s1, v85, v85
	v_cndmask_b16 v32.h, 0x7fff, v34.h, vcc_lo
	v_bfe_u32 v34, v84, 16, 1
	v_bfe_u32 v36, v83, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s0
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s1
	v_bfe_u32 v35, v82, 16, 1
	v_add3_u32 v34, v84, v34, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	v_add3_u32 v36, v83, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v83, v83
	v_bfe_u32 v37, v81, 16, 1
	v_add3_u32 v35, v82, v35, 0x7fff
	v_cmp_o_f32_e64 s1, v82, v82
	v_cndmask_b16 v34.l, 0x7fff, v34.h, vcc_lo
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v80, 16, 1
	v_bfe_u32 v38, v79, 16, 1
	v_add3_u32 v37, v81, v37, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s1
	v_add3_u32 v36, v80, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v80, v80
	v_add3_u32 v38, v79, v38, 0x7fff
	v_cmp_o_f32_e64 s1, v79, v79
	v_bfe_u32 v39, v78, 16, 1
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v1, 1, v128
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v35.h, 0x7fff, v37.h, vcc_lo
	v_bfe_u32 v37, v77, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s0
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s1
	v_add3_u32 v38, v78, v39, 0x7fff
	v_bfe_u32 v39, v76, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_bfe_u32 v40, v75, 16, 1
	v_and_b32_e32 v0, 16, v0
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v3, s15, v127
	s_mul_i32 s24, s24, s15
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v37, v77, v37, 0x7fff
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add3_u32 v4, s24, s2, v1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v77, v77
	v_add3_u32 v39, v76, v39, 0x7fff
	v_cmp_o_f32_e64 s1, v76, v76
	v_add3_u32 v40, v75, v40, 0x7fff
	v_cmp_o_f32_e64 s2, v75, v75
	v_cndmask_b16 v37.l, 0x7fff, v38.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mad_u64_u32 v[1:2], null, s15, 48, v[3:4]
	v_add_nc_u32_e32 v2, 0x100, v4
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v39.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v40.h, s2
	v_dual_cndmask_b32 v38, v8, v7 :: v_dual_cndmask_b32 v7, v7, v8
	v_dual_cndmask_b32 v39, v10, v9 :: v_dual_cndmask_b32 v8, v9, v10
	v_dual_cndmask_b32 v41, v14, v12 :: v_dual_cndmask_b32 v40, v13, v11
	v_dual_cndmask_b32 v9, v11, v13 :: v_dual_cndmask_b32 v10, v12, v14
	v_dual_cndmask_b32 v43, v18, v16 :: v_dual_cndmask_b32 v42, v17, v15
	v_cndmask_b32_e32 v13, v19, v21, vcc_lo
	v_dual_cndmask_b32 v11, v15, v17 :: v_dual_cndmask_b32 v12, v16, v18
	v_dual_cndmask_b32 v45, v22, v20 :: v_dual_cndmask_b32 v44, v21, v19
	v_dual_cndmask_b32 v15, v23, v25 :: v_dual_cndmask_b32 v14, v20, v22
	v_dual_cndmask_b32 v47, v26, v24 :: v_dual_cndmask_b32 v46, v25, v23
	v_dual_cndmask_b32 v17, v27, v29 :: v_dual_cndmask_b32 v20, v32, v34
	v_mov_b32_e32 v23, 0x7632
	v_mov_b32_e32 v22, 0x5410
	s_mov_b32 s0, 0x76543210
	v_dual_cndmask_b32 v16, v24, v26 :: v_dual_cndmask_b32 v49, v30, v28
	v_dual_cndmask_b32 v52, v37, v35 :: v_dual_cndmask_b32 v53, v0, v36
	v_cndmask_b32_e32 v0, v36, v0, vcc_lo
	v_permlanex16_b32 v24, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v22, vcc_lo
	v_cndmask_b32_e32 v22, 0x3276, v23, vcc_lo
	v_permlanex16_b32 v23, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v48, v29, v27 :: v_dual_cndmask_b32 v19, v31, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v22, 8, v22
	v_dual_cndmask_b32 v18, v28, v30 :: v_dual_cndmask_b32 v51, v34, v32
	v_dual_cndmask_b32 v50, v33, v31 :: v_dual_cndmask_b32 v21, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_permlanex16_b32 v25, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v10, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_lshl_add_u32 v6, s15, 4, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	v_permlanex16_b32 v22, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v37, 0x5040504, v7
	v_and_b32_e32 v54, 0x7060706, v8
	v_permlanex16_b32 v29, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_lshl_add_u32 v5, s15, 5, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_perm_b32 v7, v24, v38, v37
	v_perm_b32 v8, v24, v38, v54
	v_perm_b32 v9, v23, v39, v37
	v_perm_b32 v10, v23, v39, v54
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v3, v4, v3, 1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_perm_b32 v11, v25, v40, v37
	v_perm_b32 v12, v25, v40, v54
	v_perm_b32 v13, v26, v41, v37
	v_perm_b32 v14, v26, v41, v54
	v_perm_b32 v15, v22, v42, v37
	v_perm_b32 v16, v22, v42, v54
	v_perm_b32 v17, v27, v43, v37
	v_perm_b32 v18, v27, v43, v54
	v_add_lshl_u32 v39, v4, v6, 1
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_perm_b32 v19, v28, v44, v37
	v_perm_b32 v20, v28, v44, v54
	v_perm_b32 v21, v29, v45, v37
	v_perm_b32 v22, v29, v45, v54
	v_perm_b32 v23, v30, v46, v37
	v_perm_b32 v24, v30, v46, v54
	v_perm_b32 v25, v31, v47, v37
	v_perm_b32 v26, v31, v47, v54
	v_perm_b32 v27, v32, v48, v37
	v_perm_b32 v28, v32, v48, v54
	v_perm_b32 v29, v33, v49, v37
	v_perm_b32 v30, v33, v49, v54
	v_perm_b32 v31, v34, v50, v37
	v_perm_b32 v32, v34, v50, v54
	v_perm_b32 v33, v35, v51, v37
	v_perm_b32 v34, v35, v51, v54
	v_perm_b32 v35, v36, v52, v37
	v_perm_b32 v37, v0, v53, v37
	v_perm_b32 v38, v0, v53, v54
	v_add_lshl_u32 v0, v2, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v3, s[12:15], 0 offen
	buffer_store_b128 v[11:14], v3, s[12:15], 0 offen offset:512
	buffer_store_b128 v[15:18], v39, s[12:15], 0 offen
	v_add_lshl_u32 v3, v4, v5, 1
	v_add_lshl_u32 v5, v2, v5, 1
	v_add_lshl_u32 v4, v4, v1, 1
	v_perm_b32 v36, v36, v52, v54
	v_add_lshl_u32 v1, v2, v1, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[12:15], 0 offen
	buffer_store_b128 v[23:26], v3, s[12:15], 0 offen
	buffer_store_b128 v[27:30], v5, s[12:15], 0 offen
	buffer_store_b128 v[31:34], v4, s[12:15], 0 offen
	buffer_store_b128 v[35:38], v1, s[12:15], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp18:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 185
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 185
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10112
; TotalNumSgprs: 36
; NumVgprs: 185
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 36
; NumVGPRsForWavesPerEU: 185
; Occupancy: 8
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     185
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
