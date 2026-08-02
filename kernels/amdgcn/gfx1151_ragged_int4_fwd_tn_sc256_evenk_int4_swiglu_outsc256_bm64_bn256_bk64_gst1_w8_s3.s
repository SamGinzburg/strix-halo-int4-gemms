	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[30:31], s[0:1], 0x5c
	v_dual_mov_b32 v96, v0 :: v_dual_mov_b32 v87, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v96
	v_and_b32_e32 v98, 15, v96
	v_lshlrev_b32_e32 v15, 4, v96
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s31, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s31, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s31, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[24:25], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[28:29], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[26:27], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s2, s24, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v1, null, s25, 0, s2
	v_add_nc_u32_e32 v220, s24, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[26:27], v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s30, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 4, v96
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s24, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow761
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v99, 0xf0, v96
	v_dual_mov_b32 v103, 0 :: v_dual_lshlrev_b32 v100, 4, v98
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v97, 0xc0, v96
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v206, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s22, s[0:1], 0x58
	s_load_b32 s34, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s24, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s25, 0, s0
	v_dual_mov_b32 v214, 0 :: v_dual_add_nc_u32 v9, s24, v98
	v_add_co_u32 v3, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v1, vcc_lo
	v_add_co_u32 v5, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v6, null, 0, v1, vcc_lo
	v_add_co_u32 v7, vcc_lo, v0, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s4
	s_addc_u32 s1, s7, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, 0, v1, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[20:21], s[0:1], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[0:1]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v0, v9, s30
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v1, 32, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[28:29], v[3:4]
	v_mov_b32_e32 v215, 0
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[3:4]
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v3, 48, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:596
	scratch_store_b32 off, v97, off offset:628
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v0, 16, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[28:29], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[26:27], v[5:6]
	v_dual_mov_b32 v211, 0 :: v_dual_lshlrev_b32 v6, 3, v96
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s30
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v216, 3, v99
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v4, 1, v96
	v_lshrrev_b32_e32 v5, 1, v96
	v_dual_mov_b32 v209, 0 :: v_dual_and_b32 v6, 24, v6
	v_lshrrev_b32_e32 v218, 3, v97
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:600
	scratch_store_b32 off, v98, off offset:632
	v_mul_lo_u32 v0, v1, s30
	v_xor_b32_e32 v6, v6, v216
	v_lshrrev_b32_e32 v9, 2, v96
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s40, s31, 8
	v_dual_mov_b32 v210, 0 :: v_dual_lshlrev_b32 v1, 5, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v212, v98, 9, v6
	v_xor_b32_e32 v9, v4, v9
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:604
	scratch_store_b32 off, v99, off offset:636
	v_mul_lo_u32 v0, v3, s30
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v3, 0, v2
	v_lshl_add_u32 v2, v2, 5, 0
	v_xor_b32_e32 v18, 0x198, v212
	v_mov_b32_e32 v213, 0
	v_dual_mov_b32 v202, 0 :: v_dual_and_b32 v9, 24, v9
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:608
	scratch_store_b32 off, v100, off offset:640
	v_xor_b32_e32 v0, v4, v5
	v_or_b32_e32 v27, s40, v96
	v_dual_mov_b32 v206, 0 :: v_dual_lshlrev_b32 v23, 5, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v109, 0 :: v_dual_and_b32 v0, 24, v0
	v_mov_b32_e32 v208, 0
	v_dual_mov_b32 v207, 0 :: v_dual_lshlrev_b32 v26, 2, v99
	v_dual_mov_b32 v200, 0 :: v_dual_and_b32 v23, 32, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v0, v0, v218
	v_and_or_b32 v217, v4, 24, v1
	v_dual_mov_b32 v203, 0 :: v_dual_and_b32 v4, 28, v4
	v_add3_u32 v23, 0, v26, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v221, v2, v0
	v_add_nc_u32_e32 v0, 0, v18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v15, off offset:644
	scratch_store_b32 off, v27, off offset:612
	v_and_b32_e32 v15, 0xe00, v15
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[28:29], v[7:8]
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[26:27], v[7:8]
	v_xor_b32_e32 v5, 8, v217
	v_or3_b32 v225, v15, v9, v1
	v_xor_b32_e32 v7, 16, v217
	v_xor_b32_e32 v8, 24, v217
	v_xor_b32_e32 v10, 0x208, v217
	v_xor_b32_e32 v11, 0x218, v217
	v_xor_b32_e32 v20, 16, v225
	v_xor_b32_e32 v12, 0x210, v217
	v_xor_b32_e32 v13, 0x410, v217
	v_xor_b32_e32 v14, 0x418, v217
	v_xor_b32_e32 v16, 0x408, v217
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v0, 0, v20
	v_xor_b32_e32 v6, 0x618, v217
	v_xor_b32_e32 v17, 0x610, v217
	v_xor_b32_e32 v1, 0x608, v217
	v_xor_b32_e32 v9, 0x88, v212
	v_xor_b32_e32 v15, 0x110, v212
	v_xor_b32_e32 v19, 8, v225
	v_xor_b32_e32 v21, 24, v225
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v22, 3, v97
	v_or_b32_e32 v24, 0x3f0, v96
	v_or_b32_e32 v25, 0x7f0, v96
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v96, off offset:624
	scratch_store_b32 off, v0, off offset:68
	v_dual_mov_b32 v199, 0 :: v_dual_lshlrev_b32 v26, 1, v99
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v0, v23, v4
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s35, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	s_and_b32 s0, s1, s3
	s_and_b32 s1, s4, s6
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s35, s22
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v219, 0, v98
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v222, 0, v5
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v223, 0, v7
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v224, 0, v8
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v240, 0, v10
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v226, 0, v11
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v227, 0, v12
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v228, 0, v13
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v242, 0, v14
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v229, 0, v16
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v230, 0, v6
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v231, 0, v17
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v232, 0, v1
	v_dual_mov_b32 v188, 0 :: v_dual_add_nc_u32 v253, 0, v9
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v254, 0, v15
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v175, 0, v19
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v233, 0, v21
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v235, v3, v22
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v236, 0, v24
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v145, 0, v25
	scratch_store_b32 off, v0, off offset:616 ; 4-byte Folded Spill
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v0, 0, v26
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v87, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v102, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v237, s40, v100
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s5, s7
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s36, s4, s20
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s37, s30, s20
	.loc	1 1135 13                       ; ragged.py:1135:13
	s_mov_b32 s38, 0
	s_add_u32 s39, s36, s33
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	s_mov_b32 s20, s12
	s_mov_b32 s21, s13
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 1135 19 is_stmt 0             ; ragged.py:1135:19
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v0, off offset:620
	scratch_store_b32 off, v253, off offset:72
	scratch_store_b32 off, v254, off offset:76
	scratch_store_b32 off, v175, off offset:80
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 19                          ; ragged.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v215, off offset:592
	scratch_store_b32 off, v214, off offset:588
	scratch_store_b32 off, v81, off offset:584
	scratch_store_b32 off, v213, off offset:580
	scratch_store_b32 off, v82, off offset:576
	scratch_store_b32 off, v146, off offset:572
	scratch_store_b32 off, v211, off offset:568
	scratch_store_b32 off, v210, off offset:564
	scratch_store_b32 off, v209, off offset:560
	scratch_store_b32 off, v83, off offset:556
	scratch_store_b32 off, v84, off offset:552
	scratch_store_b32 off, v208, off offset:548
	scratch_store_b32 off, v207, off offset:544
	scratch_store_b32 off, v206, off offset:540
	scratch_store_b32 off, v205, off offset:536
	scratch_store_b32 off, v204, off offset:532
	scratch_store_b32 off, v203, off offset:528
	scratch_store_b32 off, v202, off offset:524
	scratch_store_b32 off, v201, off offset:520
	scratch_store_b32 off, v200, off offset:516
	scratch_store_b32 off, v199, off offset:512
	scratch_store_b32 off, v198, off offset:508
	scratch_store_b32 off, v197, off offset:504
	scratch_store_b32 off, v196, off offset:500
	scratch_store_b32 off, v195, off offset:496
	scratch_store_b32 off, v194, off offset:492
	scratch_store_b32 off, v193, off offset:488
	scratch_store_b32 off, v192, off offset:484
	scratch_store_b32 off, v191, off offset:480
	scratch_store_b32 off, v190, off offset:476
	scratch_store_b32 off, v189, off offset:472
	scratch_store_b32 off, v188, off offset:468
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v187, off offset:464
	scratch_store_b32 off, v186, off offset:460
	scratch_store_b32 off, v185, off offset:456
	scratch_store_b32 off, v184, off offset:452
	scratch_store_b32 off, v183, off offset:448
	scratch_store_b32 off, v182, off offset:444
	scratch_store_b32 off, v181, off offset:440
	scratch_store_b32 off, v180, off offset:436
	scratch_store_b32 off, v179, off offset:432
	scratch_store_b32 off, v178, off offset:428
	scratch_store_b32 off, v177, off offset:424
	scratch_store_b32 off, v176, off offset:420
	scratch_store_b32 off, v234, off offset:416
	scratch_store_b32 off, v174, off offset:412
	scratch_store_b32 off, v173, off offset:408
	scratch_store_b32 off, v172, off offset:404
	scratch_store_b32 off, v171, off offset:400
	scratch_store_b32 off, v170, off offset:396
	scratch_store_b32 off, v165, off offset:392
	scratch_store_b32 off, v164, off offset:388
	scratch_store_b32 off, v163, off offset:384
	scratch_store_b32 off, v162, off offset:380
	scratch_store_b32 off, v161, off offset:376
	scratch_store_b32 off, v160, off offset:372
	scratch_store_b32 off, v159, off offset:368
	scratch_store_b32 off, v158, off offset:364
	scratch_store_b32 off, v157, off offset:360
	scratch_store_b32 off, v156, off offset:356
	scratch_store_b32 off, v169, off offset:352
	scratch_store_b32 off, v168, off offset:348
	scratch_store_b32 off, v167, off offset:344
	scratch_store_b32 off, v166, off offset:340
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v155, off offset:336
	scratch_store_b32 off, v154, off offset:332
	scratch_store_b32 off, v153, off offset:328
	scratch_store_b32 off, v152, off offset:324
	scratch_store_b32 off, v151, off offset:320
	scratch_store_b32 off, v144, off offset:316
	scratch_store_b32 off, v143, off offset:312
	scratch_store_b32 off, v142, off offset:308
	scratch_store_b32 off, v141, off offset:304
	scratch_store_b32 off, v140, off offset:300
	scratch_store_b32 off, v139, off offset:296
	scratch_store_b32 off, v138, off offset:292
	scratch_store_b32 off, v137, off offset:288
	scratch_store_b32 off, v136, off offset:284
	scratch_store_b32 off, v135, off offset:280
	scratch_store_b32 off, v134, off offset:276
	scratch_store_b32 off, v133, off offset:272
	scratch_store_b32 off, v132, off offset:268
	scratch_store_b32 off, v131, off offset:264
	scratch_store_b32 off, v130, off offset:260
	scratch_store_b32 off, v150, off offset:256
	scratch_store_b32 off, v149, off offset:252
	scratch_store_b32 off, v148, off offset:248
	scratch_store_b32 off, v147, off offset:244
	scratch_store_b32 off, v129, off offset:240
	scratch_store_b32 off, v128, off offset:236
	scratch_store_b32 off, v127, off offset:232
	scratch_store_b32 off, v126, off offset:228
	scratch_store_b32 off, v125, off offset:224
	scratch_store_b32 off, v124, off offset:220
	scratch_store_b32 off, v123, off offset:216
	scratch_store_b32 off, v122, off offset:212
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v121, off offset:208
	scratch_store_b32 off, v120, off offset:204
	scratch_store_b32 off, v115, off offset:200
	scratch_store_b32 off, v107, off offset:196
	scratch_store_b32 off, v106, off offset:192
	scratch_store_b32 off, v114, off offset:188
	scratch_store_b32 off, v113, off offset:184
	scratch_store_b32 off, v112, off offset:180
	scratch_store_b32 off, v105, off offset:176
	scratch_store_b32 off, v104, off offset:172
	scratch_store_b32 off, v95, off offset:168
	scratch_store_b32 off, v94, off offset:164
	scratch_store_b32 off, v119, off offset:160
	scratch_store_b32 off, v118, off offset:156
	scratch_store_b32 off, v117, off offset:152
	scratch_store_b32 off, v116, off offset:148
	scratch_store_b32 off, v93, off offset:144
	scratch_store_b32 off, v92, off offset:140
	scratch_store_b32 off, v91, off offset:136
	scratch_store_b32 off, v90, off offset:132
	scratch_store_b32 off, v111, off offset:128
	scratch_store_b32 off, v110, off offset:124
	scratch_store_b32 off, v109, off offset:120
	scratch_store_b32 off, v108, off offset:116
	scratch_store_b32 off, v89, off offset:112
	scratch_store_b32 off, v88, off offset:108
	scratch_store_b32 off, v86, off offset:104
	scratch_store_b32 off, v85, off offset:100
	scratch_store_b32 off, v103, off offset:96
	scratch_store_b32 off, v102, off offset:92
	scratch_store_b32 off, v101, off offset:88
	scratch_store_b32 off, v87, off offset:84
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v178, off, off offset:64
	scratch_load_b32 v171, off, off offset:68
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s40, s38, 7
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v17, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v6, v0
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v7, v0
	v_dual_mov_b32 v8, v0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v10, v0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v11, v0
	v_dual_mov_b32 v12, v0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v13, v0
	v_dual_mov_b32 v14, v0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v15, v0
	v_dual_mov_b32 v16, v0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v18, v0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v19, v0
	v_dual_mov_b32 v20, v0 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v21, v0
	v_dual_mov_b32 v22, v0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v23, v0
	v_dual_mov_b32 v24, v0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v26, v0 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v27, v0
	v_dual_mov_b32 v28, v0 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v29, v0
	v_dual_mov_b32 v30, v0 :: v_dual_mov_b32 v121, 0
	v_mov_b32_e32 v31, v0
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v0
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v43, v0
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v45, v0
	v_mov_b32_e32 v46, v0
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v50, v0
	v_mov_b32_e32 v51, v0
	v_mov_b32_e32 v52, v0
	v_mov_b32_e32 v53, v0
	v_mov_b32_e32 v54, v0
	v_mov_b32_e32 v55, v0
	v_mov_b32_e32 v56, v0
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v59, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v61, v0
	v_mov_b32_e32 v62, v0
	v_mov_b32_e32 v63, v0
	v_mov_b32_e32 v64, v0
	v_mov_b32_e32 v66, v0
	v_mov_b32_e32 v67, v0
	v_mov_b32_e32 v68, v0
	v_mov_b32_e32 v69, v0
	v_mov_b32_e32 v70, v0
	v_mov_b32_e32 v71, v0
	v_mov_b32_e32 v72, v0
	v_mov_b32_e32 v74, v0
	v_mov_b32_e32 v75, v0
	v_mov_b32_e32 v76, v0
	v_mov_b32_e32 v77, v0
	v_mov_b32_e32 v78, v0
	v_mov_b32_e32 v79, v0
	v_mov_b32_e32 v80, v0
	v_mov_b32_e32 v82, v0
	v_mov_b32_e32 v83, v0
	v_mov_b32_e32 v84, v0
	v_mov_b32_e32 v85, v0
	v_mov_b32_e32 v86, v0
	v_mov_b32_e32 v87, v0
	v_mov_b32_e32 v88, v0
	v_mov_b32_e32 v90, v0
	v_mov_b32_e32 v91, v0
	v_mov_b32_e32 v92, v0
	v_mov_b32_e32 v93, v0
	v_mov_b32_e32 v94, v0
	v_mov_b32_e32 v95, v0
	v_mov_b32_e32 v96, v0
	v_mov_b32_e32 v98, v0
	v_mov_b32_e32 v99, v0
	v_mov_b32_e32 v100, v0
	v_mov_b32_e32 v101, v0
	v_mov_b32_e32 v102, v0
	v_mov_b32_e32 v103, v0
	v_mov_b32_e32 v104, v0
	v_mov_b32_e32 v106, v0
	v_mov_b32_e32 v107, v0
	v_mov_b32_e32 v108, v0
	v_mov_b32_e32 v109, v0
	v_mov_b32_e32 v110, v0
	v_mov_b32_e32 v111, v0
	v_mov_b32_e32 v112, v0
	v_mov_b32_e32 v114, v0
	v_mov_b32_e32 v115, v0
	v_mov_b32_e32 v116, v0
	v_mov_b32_e32 v117, v0
	v_mov_b32_e32 v118, v0
	v_mov_b32_e32 v119, v0
	v_mov_b32_e32 v120, v0
	v_mov_b32_e32 v122, v0
	v_mov_b32_e32 v123, v0
	v_mov_b32_e32 v124, v0
	v_mov_b32_e32 v125, v0
	v_mov_b32_e32 v126, v0
	v_mov_b32_e32 v127, v0
	v_mov_b32_e32 v128, v0
	s_mov_b32 s41, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v130, 1, v216
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_add_i32 s42, s41, s40
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v0, 0, v212
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s42, v216
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v130, s42, v130
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[137:138], null, v129, s35, v[237:238]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[138:139], null, v130, s35, v[237:238]
	v_add_nc_u32_e32 v129, s36, v137
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v252, s39, v137
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v133, s36, v138
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v177, s39, v138
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[129:132], v129, s[8:11], 0 offen
	buffer_load_b128 v[133:136], v133, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v139, v133, v129, 0x5010400
	v_perm_b32 v133, v133, v129, 0x7030602
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s42, v218
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_perm_b32 v140, v134, v130, 0x5010400
	v_perm_b32 v134, v134, v130, 0x7030602
	v_perm_b32 v144, v136, v132, 0x5010400
	v_perm_b32 v132, v136, v132, 0x7030602
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s34, v[220:221]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_perm_b32 v142, v135, v131, 0x5010400
	v_perm_b32 v135, v135, v131, 0x7030602
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v136, 0x80000000, v129, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 1, v218
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s42, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s34, v[220:221]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v141, 0x80000000, v129, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v129, 2, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s42, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s34, v[220:221]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v143, 0x80000000, v129, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v129, 3, v218
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x2
	buffer_load_u8 v172, v141, s[4:7], 0 offen
	buffer_load_u8 v246, v143, s[4:7], 0 offen
	buffer_load_u8 v251, v136, s[4:7], 0 offen
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s42, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s34, v[220:221]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v131, 0x80000000, v129, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v129, 4, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s42, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s34, v[220:221]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v147, 0x80000000, v129, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v129, 5, v218
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s42, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s34, v[220:221]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v148, 0x80000000, v129, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v129, 7, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s42, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s34, v[220:221]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v149, 0x80000000, v129, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v129, 6, v218
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s42, v129
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s42, s41, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s41, 0x60
	s_mov_b32 s41, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s34, v[220:221]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v129, 0x80000000, v129, s2
	s_clause 0x4
	buffer_load_u8 v245, v148, s[4:7], 0 offen
	buffer_load_u8 v244, v149, s[4:7], 0 offen
	buffer_load_u8 v255, v129, s[4:7], 0 offen
	buffer_load_u8 v174, v147, s[4:7], 0 offen
	buffer_load_u8 v173, v131, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v129.l, 8, v245.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v129.h, 8, v244.l
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v131.l, v174.l, v129.l
	v_lshlrev_b16 v129.l, 8, v172.l
	v_or_b16 v131.h, v255.l, v129.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v130.l, v251.l, v129.l
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v129.l, 8, v173.l
	v_or_b16 v130.h, v246.l, v129.l
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_lshrrev_b32_e32 v129, 8, v139
	v_and_b16 v129.h, 0xff, v139.l
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_store_b64 v221, v[130:131]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshlrev_b16 v129.l, 8, v129.l
	v_lshrrev_b32_e32 v130, 24, v139
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_or_b16 v137.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v139.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v133
	v_or_b16 v137.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v133
	v_and_b16 v129.h, 0xff, v133.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v129.l, 8, v129.l
	v_or_b16 v138.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v133.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v138.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v140
	v_and_b16 v129.h, 0xff, v140.l
	v_lshlrev_b16 v129.l, 8, v129.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v139.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v140.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v134
	v_or_b16 v139.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v134
	v_and_b16 v129.h, 0xff, v134.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v129.l, 8, v129.l
	v_or_b16 v140.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v134.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v140.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v142
	v_and_b16 v129.h, 0xff, v142.l
	v_lshlrev_b16 v129.l, 8, v129.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v141.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v142.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v135
	v_or_b16 v141.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v135
	v_and_b16 v129.h, 0xff, v135.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v129.l, 8, v129.l
	v_or_b16 v142.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v135.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v142.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v144
	v_and_b16 v129.h, 0xff, v144.l
	v_lshlrev_b16 v129.l, 8, v129.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v143.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v144.h
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshrrev_b32_e32 v130, 24, v132
	v_or_b16 v143.h, v129.l, v129.h
	v_lshrrev_b32_e32 v129, 8, v132
	v_and_b16 v129.h, 0xff, v132.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v129.l, 8, v129.l
	v_or_b16 v144.l, v129.h, v129.l
	v_and_b16 v129.l, 0xff, v132.h
	v_lshlrev_b16 v129.h, 8, v130.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v144.h, v129.l, v129.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v129, 0, v217
	ds_load_b64 v[157:158], v222
	ds_load_b64 v[153:154], v223
	ds_load_b64 v[147:148], v224
	ds_load_b64 v[165:166], v240
	ds_load_b64 v[155:156], v226
	ds_load_b64 v[149:150], v227
	ds_load_b64 v[167:168], v228
	ds_load_b64 v[161:162], v242
	ds_load_b64 v[151:152], v229
	ds_load_b64 v[169:170], v230
	ds_load_b64 v[163:164], v231
	ds_load_b64 v[159:160], v232
	ds_load_2addr_stride64_b64 v[133:136], v129 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v129 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	ds_store_b16 v0, v137
	ds_store_b16_d16_hi v0, v137 offset:32
	ds_store_b16 v0, v138 offset:64
	ds_store_b16_d16_hi v0, v138 offset:96
	ds_store_b16 v253, v139
	ds_store_b16_d16_hi v253, v139 offset:32
	ds_store_b16 v253, v140 offset:64
	ds_store_b16_d16_hi v253, v140 offset:96
	ds_store_b16 v254, v141
	ds_store_b16_d16_hi v254, v141 offset:32
	ds_store_b16 v254, v142 offset:64
	ds_store_b16_d16_hi v254, v142 offset:96
	ds_store_b16 v178, v143
	ds_store_b16_d16_hi v178, v143 offset:32
	ds_store_b16 v178, v144 offset:64
	ds_store_b16_d16_hi v178, v144 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_b128 v[137:140], v252, s[8:11], 0 offen
	buffer_load_b128 v[141:144], v177, s[8:11], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v0, 0, v225
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(0)
	v_perm_b32 v177, v141, v137, 0x5010400
	v_perm_b32 v252, v141, v137, 0x7030602
	v_perm_b32 v178, v142, v138, 0x5010400
	v_perm_b32 v253, v142, v138, 0x7030602
	v_perm_b32 v183, v143, v139, 0x5010400
	v_perm_b32 v254, v143, v139, 0x7030602
	v_perm_b32 v184, v144, v140, 0x5010400
	v_perm_b32 v144, v144, v140, 0x7030602
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[137:140], v0 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[137:138], v[165:166], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[139:140], v[165:166], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[137:138], v[167:168], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[139:140], v[167:168], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[137:138], v[169:170], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[139:140], v[169:170], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[137:138], v[133:134], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[139:140], v[133:134], v[73:80] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[137:140], v175 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[137:138], v[135:136], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[139:140], v[135:136], v[89:96] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[133:136], v171 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[137:138], v[157:158], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[139:140], v[157:158], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[137:138], v[161:162], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[139:140], v[161:162], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[137:138], v[163:164], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[139:140], v[163:164], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[133:134], v[153:154], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[135:136], v[153:154], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[133:134], v[155:156], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[135:136], v[155:156], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[133:134], v[159:160], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[135:136], v[159:160], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[133:134], v[129:130], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[135:136], v[129:130], v[105:112] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[133:136], v233 offset1:8
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v235, v251
	ds_store_b8 v235, v172 offset:64
	ds_store_b8 v235, v246 offset:128
	ds_store_b8 v235, v173 offset:192
	ds_store_b8 v235, v174 offset:256
	ds_store_b8 v235, v245 offset:320
	ds_store_b8 v235, v255 offset:384
	ds_store_b8 v235, v244 offset:448
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v0, v219 offset:960
	ds_load_u8 v179, v219 offset:1296
	ds_load_u8 v180, v219 offset:1312
	ds_load_u8 v181, v219 offset:1472
	ds_load_u8 v182, v219 offset:1488
	ds_load_u8 v187, v219 offset:1504
	ds_load_u8 v176, v219 offset:1520
	ds_load_u8 v199, v219 offset:1536
	ds_load_u8 v200, v219 offset:1456
	ds_load_u8 v201, v219 offset:1424
	ds_load_u8 v185, v219 offset:1440
	ds_load_u8 v188, v219 offset:1088
	ds_load_u8 v189, v219 offset:1104
	ds_load_u8 v190, v219 offset:1120
	ds_load_u8 v196, v219 offset:1136
	ds_load_u8 v186, v219 offset:1152
	ds_load_u8 v208, v219 offset:1072
	ds_load_u8 v191, v219 offset:1040
	ds_load_u8 v209, v219 offset:1056
	ds_load_u8 v192, v219 offset:1280
	ds_load_u8 v202, v219 offset:1264
	ds_load_u8 v195, v219 offset:1216
	ds_load_u8 v207, v219 offset:1232
	ds_load_u8 v210, v219 offset:1248
	ds_load_u8 v197, v219 offset:1200
	ds_load_u8 v198, v219 offset:1168
	ds_load_u8 v203, v219 offset:1184
	ds_load_u8 v215, v219 offset:1856
	ds_load_u8 v204, v219 offset:1872
	ds_load_u8 v205, v219 offset:1888
	ds_load_u8 v247, v219 offset:1904
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[113:120], v[133:134], v[131:132], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[135:136], v[131:132], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[133:134], v[147:148], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[135:136], v[147:148], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[133:134], v[149:150], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[135:136], v[149:150], v[89:96] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(30)
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	ds_load_u8 v0, v219 offset:896
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[133:134], v[151:152], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[135:136], v[151:152], v[105:112] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v129, v219 offset:320
	ds_load_u8 v130, v219 offset:256
	ds_load_u8 v131, v219 offset:336
	ds_load_u8 v132, v219 offset:272
	ds_load_u8 v133, v219 offset:352
	ds_load_u8 v134, v219 offset:288
	ds_load_u8 v135, v219 offset:368
	ds_load_u8 v142, v219 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v219 offset:448
	ds_load_u8 v136, v219 offset:384
	ds_load_u8 v138, v219 offset:464
	ds_load_u8 v139, v219 offset:400
	ds_load_u8 v140, v219 offset:480
	ds_load_u8 v141, v219 offset:416
	ds_load_u8 v143, v219 offset:496
	ds_load_u8 v147, v219 offset:432
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	ds_load_u8 v0, v219 offset:976
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v130, v136, v130, 0xc0c0004
	ds_load_u8 v136, v219 offset:64
	ds_load_u8 v137, v219
	ds_load_u8 v148, v219 offset:80
	ds_load_u8 v149, v219 offset:16
	ds_load_u8 v150, v219 offset:96
	ds_load_u8 v151, v219 offset:32
	ds_load_u8 v152, v219 offset:112
	ds_load_u8 v153, v219 offset:48
	s_waitcnt lgkmcnt(8)
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	ds_load_u8 v0, v219 offset:912
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v219 offset:192
	ds_load_u8 v154, v219 offset:128
	ds_load_u8 v155, v219 offset:208
	ds_load_u8 v156, v219 offset:144
	ds_load_u8 v157, v219 offset:224
	ds_load_u8 v158, v219 offset:160
	ds_load_u8 v159, v219 offset:240
	ds_load_u8 v160, v219 offset:176
	s_waitcnt lgkmcnt(8)
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	ds_load_u8 v0, v219 offset:992
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v154, v154, v137, 0xc0c0004
	v_lshl_or_b32 v137, v130, 16, v129
	v_perm_b32 v129, v132, v131, 0xc0c0004
	v_perm_b32 v130, v139, v138, 0xc0c0004
	v_perm_b32 v131, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v132, v156, v155, 0xc0c0004
	v_lshl_or_b32 v136, v154, 16, v136
	v_lshl_or_b32 v139, v130, 16, v129
	v_perm_b32 v129, v134, v133, 0xc0c0004
	v_perm_b32 v130, v141, v140, 0xc0c0004
	v_lshl_or_b32 v138, v132, 16, v131
	v_perm_b32 v131, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v132, v158, v157, 0xc0c0004
	v_mov_b32_e32 v151, v240
	v_lshl_or_b32 v141, v130, 16, v129
	v_perm_b32 v129, v142, v135, 0xc0c0004
	v_perm_b32 v130, v147, v143, 0xc0c0004
	v_lshl_or_b32 v140, v132, 16, v131
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	ds_load_u8 v0, v219 offset:928
	v_perm_b32 v131, v153, v152, 0xc0c0004
	v_lshl_or_b32 v143, v130, 16, v129
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshrrev_b32_e32 v129, 8, v177
	v_and_b16 v129.h, 0xff, v177.l
	v_lshrrev_b32_e32 v130, 24, v177
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v132, v160, v159, 0xc0c0004
	ds_load_u8 v153, v219 offset:1920
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v129.l, 8, v129.l
	v_mov_b32_e32 v152, v212
	v_lshlrev_b16 v130.l, 8, v130.l
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v142, v132, 16, v131
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshrrev_b32_e32 v131, 24, v252
	v_or_b16 v129.l, v129.h, v129.l
	v_and_b16 v129.h, 0xff, v177.h
	v_mov_b32_e32 v160, v225
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v162, v219 offset:1840
	ds_load_u8 v206, v219 offset:1808
	ds_load_u8 v211, v219 offset:1824
	ds_load_u8 v212, v219 offset:1984
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v131.l, 8, v131.l
	v_mov_b32_e32 v159, v237
	v_or_b16 v129.h, v129.h, v130.l
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	ds_load_u8 v0, v219 offset:1024
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshrrev_b32_e32 v130, 8, v252
	v_and_b16 v130.h, 0xff, v252.l
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v238, v219 offset:2000
	ds_load_u8 v157, v219 offset:2016
	ds_load_u8 v225, v236
	ds_load_u8 v161, v145
	ds_load_u8 v214, v219 offset:1968
	v_dual_mov_b32 v158, v229 :: v_dual_mov_b32 v229, v220
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v130.l, 8, v130.l
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v220, v219 offset:1936
	ds_load_u8 v155, v219 offset:1952
	ds_load_u8 v149, v219 offset:1600
	ds_load_u8 v150, v219 offset:1616
	ds_load_u8 v234, v219 offset:1632
	ds_load_u8 v156, v219 offset:1648
	ds_load_u8 v248, v219 offset:1664
	ds_load_u8 v154, v219 offset:1584
	v_mov_b32_e32 v147, v242
	ds_load_u8 v148, v219 offset:1552
	ds_load_u8 v239, v219 offset:1568
	ds_load_u8 v240, v219 offset:1792
	ds_load_u8 v241, v219 offset:1776
	ds_load_u8 v242, v219 offset:1728
	ds_load_u8 v249, v219 offset:1744
	ds_load_u8 v250, v219 offset:1760
	ds_load_u8 v213, v219 offset:1712
	ds_load_u8 v146, v219 offset:1680
	ds_load_u8 v237, v219 offset:1696
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshrrev_b32_e32 v132, 24, v183
	v_or_b16 v130.l, v130.h, v130.l
	v_and_b16 v130.h, 0xff, v252.h
	v_lshrrev_b32_e32 v133, 24, v254
	v_lshrrev_b32_e32 v134, 24, v184
	v_lshlrev_b16 v132.l, 8, v132.l
	v_lshrrev_b32_e32 v135, 24, v144
	v_or_b16 v130.h, v130.h, v131.l
	v_lshlrev_b16 v133.l, 8, v133.l
	v_lshlrev_b16 v134.l, 8, v134.l
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(23)
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	ds_load_u8 v0, v219 offset:944
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v135.l, 8, v135.l
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	ds_load_u8 v167, v219 offset:832
	ds_load_u8 v0, v219 offset:768
	ds_load_u8 v193, v219 offset:848
	ds_load_u8 v171, v219 offset:784
	ds_load_u8 v252, v219 offset:864
	ds_load_u8 v194, v219 offset:800
	ds_load_u8 v131, v219 offset:880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v131, off offset:56 ; 4-byte Folded Spill
	ds_load_u8 v131, v219 offset:816
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v131, off offset:60 ; 4-byte Folded Spill
	ds_load_u8 v163, v219 offset:576
	ds_load_u8 v164, v219 offset:512
	ds_load_u8 v165, v219 offset:592
	ds_load_u8 v166, v219 offset:528
	ds_load_u8 v169, v219 offset:608
	ds_load_u8 v168, v219 offset:544
	ds_load_u8 v175, v219 offset:624
	ds_load_u8 v170, v219 offset:560
	ds_load_u8 v172, v219 offset:704
	ds_load_u8 v173, v219 offset:640
	ds_load_u8 v174, v219 offset:720
	ds_load_u8 v177, v219 offset:656
	ds_load_u8 v244, v219 offset:736
	ds_load_u8 v245, v219 offset:672
	ds_load_u8 v246, v219 offset:752
	ds_load_u8 v251, v219 offset:688
	ds_load_u8 v255, v219 offset:1344
	ds_load_u8 v131, v219 offset:1360
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v131, off offset:52 ; 4-byte Folded Spill
	ds_load_u8 v131, v219 offset:1376
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v131, off offset:48 ; 4-byte Folded Spill
	ds_load_u8 v131, v219 offset:1392
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v131, off offset:36 ; 4-byte Folded Spill
	ds_load_u8 v243, v219 offset:1408
	ds_load_u8 v131, v219 offset:1328
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v131, off offset:40 ; 4-byte Folded Spill
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v131, off, off         ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v131, v129
	ds_store_b16_d16_hi v131, v129 offset:32
	ds_store_b16 v131, v130 offset:64
	ds_store_b16_d16_hi v131, v130 offset:96
	v_lshrrev_b32_e32 v129, 8, v178
	v_and_b16 v129.h, 0xff, v178.l
	v_lshrrev_b32_e32 v130, 24, v178
	v_lshrrev_b32_e32 v131, 24, v253
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v129.l, 8, v129.l
	v_lshlrev_b16 v130.l, 8, v130.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v131.l, 8, v131.l
	v_or_b16 v129.l, v129.h, v129.l
	v_and_b16 v129.h, 0xff, v178.h
	scratch_load_b32 v178, off, off offset:64 ; 4-byte Folded Reload
	v_or_b16 v129.h, v129.h, v130.l
	v_lshrrev_b32_e32 v130, 8, v253
	v_and_b16 v130.h, 0xff, v253.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v130.l, 8, v130.l
	v_or_b16 v130.l, v130.h, v130.l
	v_and_b16 v130.h, 0xff, v253.h
	scratch_load_b32 v253, off, off offset:72 ; 4-byte Folded Reload
	v_or_b16 v130.h, v130.h, v131.l
	v_lshrrev_b32_e32 v131, 8, v183
	v_and_b16 v131.h, 0xff, v183.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v131.l, 8, v131.l
	v_or_b16 v131.l, v131.h, v131.l
	v_and_b16 v131.h, 0xff, v183.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v131.h, v131.h, v132.l
	v_lshrrev_b32_e32 v132, 8, v254
	v_and_b16 v132.h, 0xff, v254.l
	v_lshlrev_b16 v132.l, 8, v132.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v132.l, v132.h, v132.l
	v_and_b16 v132.h, 0xff, v254.h
	scratch_load_b32 v254, off, off offset:76 ; 4-byte Folded Reload
	v_or_b16 v132.h, v132.h, v133.l
	v_lshrrev_b32_e32 v133, 8, v184
	v_and_b16 v133.h, 0xff, v184.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v133.l, 8, v133.l
	v_or_b16 v133.l, v133.h, v133.l
	v_and_b16 v133.h, 0xff, v184.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v133.h, v133.h, v134.l
	v_lshrrev_b32_e32 v134, 8, v144
	v_and_b16 v134.h, 0xff, v144.l
	v_lshlrev_b16 v134.l, 8, v134.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v134.l, v134.h, v134.l
	v_and_b16 v134.h, 0xff, v144.h
	v_or_b16 v134.h, v134.h, v135.l
	s_waitcnt vmcnt(1)
	ds_store_b16 v253, v129
	ds_store_b16_d16_hi v253, v129 offset:32
	ds_store_b16 v253, v130 offset:64
	ds_store_b16_d16_hi v253, v130 offset:96
	s_waitcnt vmcnt(0)
	ds_store_b16 v254, v131
	ds_store_b16_d16_hi v254, v131 offset:32
	ds_store_b16 v254, v132 offset:64
	ds_store_b16_d16_hi v254, v132 offset:96
	ds_store_b16 v178, v133
	ds_store_b16_d16_hi v178, v133 offset:32
	ds_store_b16 v178, v134 offset:64
	ds_store_b16_d16_hi v178, v134 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v129, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[129:132], v129 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[129:130], v[136:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[138:139], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[140:141], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[129:130], v[142:143], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v129, v0, v167, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:8
	scratch_load_b32 v130, off, off offset:12
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[136:137], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[138:139], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[131:132], v[140:141], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[131:132], v[142:143], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v131, v164, v163, 0xc0c0004
	v_perm_b32 v132, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v133, v132, 16, v131
	v_perm_b32 v131, v166, v165, 0xc0c0004
	v_perm_b32 v132, v177, v174, 0xc0c0004
	v_lshl_or_b32 v135, v132, 16, v131
	v_perm_b32 v131, v168, v169, 0xc0c0004
	v_perm_b32 v132, v245, v244, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v132, 16, v131
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v130, v0, 0xc0c0004
	v_lshl_or_b32 v134, v130, 16, v129
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:28
	scratch_load_b32 v130, off, off offset:32
	v_perm_b32 v129, v171, v193, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v130, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v130, 16, v129
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v171, off, off offset:68
	scratch_load_b32 v0, off, off offset:16
	scratch_load_b32 v130, off, off offset:20
	v_perm_b32 v129, v194, v252, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v130, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:56
	scratch_load_b32 v131, off, off offset:60
	v_lshl_or_b32 v138, v130, 16, v129
	v_perm_b32 v129, v170, v175, 0xc0c0004
	v_perm_b32 v130, v251, v246, 0xc0c0004
	scratch_load_b32 v175, off, off offset:80 ; 4-byte Folded Reload
	v_lshl_or_b32 v139, v130, 16, v129
	s_waitcnt vmcnt(1)
	v_perm_b32 v131, v131, v0, 0xc0c0004
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v132, v0, v225, 0xc0c0004
	v_perm_b32 v0, v243, v181, 0xc0c0004
	v_mov_b32_e32 v225, v160
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v140, v132, 16, v131
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[129:132], v175 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[129:130], v[133:134], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[137:138], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[129:130], v[139:140], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v129, v192, v255, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[135:136], v[25:32] neg_lo:[1,1,0]
	scratch_load_b32 v130, off, off offset:24 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[41:48], v[131:132], v[137:138], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v134, v0, 16, v129
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	v_perm_b32 v129, v201, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[131:132], v[139:140], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v131, v186, v195, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v179, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v136, v129, 16, v0
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	v_perm_b32 v129, v185, v187, 0xc0c0004
	v_perm_b32 v130, v130, v188, 0xc0c0004
	v_lshl_or_b32 v133, v131, 16, v130
	v_perm_b32 v130, v191, v189, 0xc0c0004
	v_perm_b32 v131, v198, v207, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v135, v131, 16, v130
	v_perm_b32 v130, v209, v190, 0xc0c0004
	v_perm_b32 v131, v203, v210, 0xc0c0004
	v_lshl_or_b32 v137, v131, 16, v130
	v_perm_b32 v130, v208, v196, 0xc0c0004
	v_perm_b32 v131, v197, v202, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v139, v131, 16, v130
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v180, v0, 0xc0c0004
	v_lshl_or_b32 v138, v129, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:36
	scratch_load_b32 v129, off, off offset:40
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	v_perm_b32 v129, v200, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v129, 16, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[129:132], v171 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v0, v240, v215, 0xc0c0004
	v_mov_b32_e32 v240, v151
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[129:130], v[133:134], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[137:138], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[131:132], v[137:138], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[129:130], v[139:140], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[131:132], v[139:140], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v129, v153, v212, 0xc0c0004
	v_perm_b32 v130, v199, v149, 0xc0c0004
	v_perm_b32 v131, v248, v242, 0xc0c0004
	v_mov_b32_e32 v212, v152
	v_mov_b32_e32 v242, v147
	v_lshl_or_b32 v134, v129, 16, v0
	v_perm_b32 v0, v206, v204, 0xc0c0004
	v_lshl_or_b32 v133, v131, 16, v130
	v_perm_b32 v129, v220, v238, 0xc0c0004
	v_perm_b32 v130, v148, v150, 0xc0c0004
	v_perm_b32 v131, v146, v249, 0xc0c0004
	v_dual_mov_b32 v220, v229 :: v_dual_mov_b32 v229, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v136, v129, 16, v0
	v_perm_b32 v0, v211, v205, 0xc0c0004
	v_lshl_or_b32 v135, v131, 16, v130
	v_perm_b32 v129, v155, v157, 0xc0c0004
	v_perm_b32 v130, v239, v234, 0xc0c0004
	v_perm_b32 v131, v237, v250, 0xc0c0004
	v_mov_b32_e32 v237, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v138, v129, 16, v0
	v_perm_b32 v0, v154, v156, 0xc0c0004
	v_lshl_or_b32 v137, v131, 16, v130
	v_perm_b32 v129, v213, v241, 0xc0c0004
	v_perm_b32 v130, v162, v247, 0xc0c0004
	v_perm_b32 v131, v214, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v139, v129, 16, v0
	v_lshl_or_b32 v140, v131, 16, v130
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[129:132], v233 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[129:130], v[133:134], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[137:138], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[131:132], v[137:138], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[129:130], v[139:140], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[131:132], v[139:140], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v154, v85
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v37, v54
	scratch_load_b32 v54, off, off offset:612 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v73
	v_cvt_f32_i32_e32 v135, v74
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v74, v22
	v_cvt_f32_i32_e32 v73, v23
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:596
	scratch_load_b32 v44, off, off offset:600
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s40, s38, s37
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v143, v70
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s40, s40, s35
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v70, v6
	v_cvt_f32_i32_e32 v6, v30
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v69
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v69, v7
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v31, v40
	v_cvt_f32_i32_e32 v40, v51
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v149, v68
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v68, v8
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v32, v39
	v_cvt_f32_i32_e32 v39, v52
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v152, v83
	v_cvt_f32_i32_e32 v155, v86
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v83, v36
	v_cvt_f32_i32_e32 v33, v38
	v_cvt_f32_i32_e32 v38, v53
	v_cvt_f32_i32_e32 v36, v55
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v153, v84
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v35, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v65
	v_cvt_f32_i32_e32 v147, v66
	v_cvt_f32_i32_e32 v148, v67
	v_cvt_f32_i32_e32 v141, v72
	v_cvt_f32_i32_e32 v150, v81
	v_cvt_f32_i32_e32 v137, v91
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v91, v1
	v_cvt_f32_i32_e32 v67, v9
	v_cvt_f32_i32_e32 v66, v10
	v_cvt_f32_i32_e32 v65, v11
	v_cvt_f32_i32_e32 v10, v12
	v_cvt_f32_i32_e32 v1, v13
	v_cvt_f32_i32_e32 v81, v18
	v_cvt_f32_i32_e32 v72, v24
	v_cvt_f32_i32_e32 v18, v25
	v_cvt_f32_i32_e32 v25, v41
	v_cvt_f32_i32_e32 v24, v42
	v_cvt_f32_i32_e32 v9, v45
	v_cvt_f32_i32_e32 v11, v46
	v_cvt_f32_i32_e32 v12, v47
	v_cvt_f32_i32_e32 v13, v48
	v_cvt_f32_i32_e32 v42, v49
	v_cvt_f32_i32_e32 v41, v50
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v161, v100
	v_cvt_f32_i32_e32 v163, v102
	v_cvt_f32_i32_e32 v165, v104
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v108, v113
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v106, v122
	v_cvt_f32_i32_e32 v104, v124
	v_cvt_f32_i32_e32 v157, v88
	v_cvt_f32_i32_e32 v138, v90
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v164, v103
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v111, v116
	v_cvt_f32_i32_e32 v112, v117
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v105, v123
	v_cvt_f32_i32_e32 v151, v82
	v_cvt_f32_i32_e32 v160, v99
	v_cvt_f32_i32_e32 v99, v125
	v_cvt_f32_i32_e32 v158, v97
	v_cvt_f32_i32_e32 v159, v98
	v_cvt_f32_i32_e32 v142, v71
	v_cvt_f32_i32_e32 v139, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v156, v87
	v_cvt_f32_i32_e32 v162, v101
	v_cvt_f32_i32_e32 v134, v75
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v133, v76
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v132, v77
	v_cvt_f32_i32_e32 v131, v78
	v_cvt_f32_i32_e32 v130, v79
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v76, v4
	v_cvt_f32_i32_e32 v4, v16
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v16, v27
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v129, v80
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v78, v2
	v_cvt_f32_i32_e32 v2, v14
	v_cvt_f32_i32_e32 v14, v28
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v87, v96
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v29, v57
	v_cvt_f32_i32_e32 v28, v58
	v_cvt_f32_i32_e32 v27, v59
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v97, v127
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v26, v60
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v96, v128
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v77, v3
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v19, v62
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v21, v64
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v3, v15
	v_cvt_f32_i32_e32 v15, v61
	v_cvt_f32_i32_e32 v20, v63
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v30, v54, s40, 1
	buffer_load_u16 v30, v30, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v43, s38, v43, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v44, s38, v44, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	buffer_load_u16 v51, v44, s[20:23], 0 offen
	scratch_load_b32 v44, off, off offset:604 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v43, v43, s[20:23], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v44, s38, v44, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v44, 0x80000000, v44, s1
	buffer_load_u16 v52, v44, s[20:23], 0 offen
	scratch_load_b32 v44, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s38, v44, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s38, s38, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s38, s30
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	buffer_load_u16 v53, v44, s[20:23], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v55, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v55, v30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xe                            ; 60-byte Folded Reload
	scratch_load_b32 v56, off, off offset:620
	scratch_load_b32 v180, off, off offset:436
	scratch_load_b32 v173, off, off offset:408
	scratch_load_b32 v181, off, off offset:440
	scratch_load_b32 v183, off, off offset:448
	scratch_load_b32 v192, off, off offset:484
	scratch_load_b32 v174, off, off offset:412
	scratch_load_b32 v182, off, off offset:444
	scratch_load_b32 v166, off, off offset:340
	scratch_load_b32 v167, off, off offset:344
	scratch_load_b32 v169, off, off offset:352
	scratch_load_b32 v172, off, off offset:404
	scratch_load_b32 v191, off, off offset:480
	scratch_load_b32 v234, off, off offset:416
	scratch_load_b32 v168, off, off offset:348
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v30, 16, v43
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v118, off, off offset:156
	scratch_load_b32 v122, off, off offset:212
	scratch_load_b32 v124, off, off offset:220
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(17)
	ds_load_b128 v[43:46], v56
	ds_load_b128 v[47:50], v56 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v30, v0
	s_clause 0x11                           ; 72-byte Folded Reload
	scratch_load_b32 v116, off, off offset:148
	scratch_load_b32 v117, off, off offset:152
	scratch_load_b32 v119, off, off offset:160
	scratch_load_b32 v123, off, off offset:216
	scratch_load_b32 v206, off, off offset:540
	scratch_load_b32 v205, off, off offset:536
	scratch_load_b32 v195, off, off offset:496
	scratch_load_b32 v201, off, off offset:520
	scratch_load_b32 v198, off, off offset:508
	scratch_load_b32 v190, off, off offset:476
	scratch_load_b32 v200, off, off offset:516
	scratch_load_b32 v204, off, off offset:532
	scratch_load_b32 v196, off, off offset:500
	scratch_load_b32 v193, off, off offset:488
	scratch_load_b32 v188, off, off offset:468
	scratch_load_b32 v197, off, off offset:504
	scratch_load_b32 v194, off, off offset:492
	scratch_load_b32 v189, off, off offset:472
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(34) lgkmcnt(1)
	v_fmac_f32_e32 v180, v0, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v30, v147
	scratch_load_b32 v147, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(33)
	v_fmac_f32_e32 v181, v0, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v30, v148
	scratch_load_b32 v148, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v30, v1
	v_mul_f32_e32 v3, v3, v30
	s_waitcnt vmcnt(33)
	v_dual_mul_f32 v10, v30, v10 :: v_dual_fmac_f32 v183, v0, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v30, v149
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:252
	scratch_load_b32 v125, off, off offset:224
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v2, v2, v30
	v_mul_f32_e32 v4, v4, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(32)
	v_fmac_f32_e32 v182, v0, v46
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v0, 16, v51
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v51, v0, v150
	scratch_load_b32 v150, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v7, v7, v0
	v_mul_f32_e32 v6, v6, v0
	v_mul_f32_e32 v8, v8, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(32)
	v_fmac_f32_e32 v166, v51, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v51, v0, v151
	scratch_load_b32 v151, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(32)
	v_fmac_f32_e32 v167, v51, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v51, v0, v152
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(31)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v169, v51, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v51, v0, v153
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(27)
	v_dual_fmac_f32 v168, v51, v46 :: v_dual_lshlrev_b32 v51, 16, v52
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v52, v51, v158
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v51, v32
	v_mul_f32_e32 v33, v51, v33
	v_mul_f32_e32 v34, v51, v34
	v_mul_f32_e32 v31, v51, v31
	v_mul_f32_e32 v9, v51, v9
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v147, v52, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v52, v51, v159
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v148, v52, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v52, v51, v160
	scratch_load_b32 v160, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v150, v52, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v52, v51, v161
	scratch_load_b32 v161, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v149, v52, v46 :: v_dual_lshlrev_b32 v52, 16, v53
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v52, v108
	scratch_load_b32 v108, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v42, v52, v42
	v_mul_f32_e32 v41, v52, v41
	v_mul_f32_e32 v40, v52, v40
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v116, v53, v43 :: v_dual_mul_f32 v43, v52, v109
	scratch_load_b32 v109, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v140, v30
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v52, v39
	v_mul_f32_e32 v15, v52, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v43, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v110
	scratch_load_b32 v110, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v111
	scratch_load_b32 v111, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v118, v43, v46 :: v_dual_mul_f32 v43, v30, v144
	scratch_load_b32 v144, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v172, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v143
	scratch_load_b32 v143, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v173, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v142
	scratch_load_b32 v142, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v174, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v234, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v0, v154
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v142, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v0, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v143, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v0, v156
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v144, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v0, v157
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v151, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v162
	scratch_load_b32 v162, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v163
	scratch_load_b32 v163, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v123, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v124, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v165
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v125, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v112
	scratch_load_b32 v112, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v108, v43, v47 :: v_dual_mul_f32 v43, v52, v113
	scratch_load_b32 v113, off, off offset:184 ; 4-byte Folded Reload
	v_fmac_f32_e32 v109, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v114
	scratch_load_b32 v114, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v43, v49 :: v_dual_mul_f32 v43, v52, v115
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v111, v43, v50
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v56 offset:512
	ds_load_b128 v[47:50], v56 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v206, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v30, v135
	scratch_load_b32 v135, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v160, v53, v44 :: v_dual_mul_f32 v53, v30, v134
	scratch_load_b32 v134, off, off offset:276 ; 4-byte Folded Reload
	v_fmac_f32_e32 v161, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v30, v133
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v162, v53, v46 :: v_dual_mul_f32 v53, v139, v0
	v_dual_fmac_f32 v200, v53, v43 :: v_dual_mul_f32 v53, v0, v138
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v134, v53, v44 :: v_dual_mul_f32 v53, v0, v137
	scratch_load_b32 v137, off, off offset:288 ; 4-byte Folded Reload
	v_fmac_f32_e32 v135, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v0, v136
	scratch_load_b32 v136, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v136, v53, v46 :: v_dual_mul_f32 v53, v103, v51
	scratch_load_b32 v103, off, off offset:96 ; 4-byte Folded Reload
	v_fmac_f32_e32 v195, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v102
	scratch_load_b32 v102, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v112, v53, v44 :: v_dual_mul_f32 v53, v51, v101
	scratch_load_b32 v101, off, off offset:88 ; 4-byte Folded Reload
	v_fmac_f32_e32 v113, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v114, v53, v46 :: v_dual_mul_f32 v53, v107, v52
	v_fmac_f32_e32 v191, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v106
	scratch_load_b32 v106, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v30, v91
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v101, v43, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v102, v43, v45 :: v_dual_mul_f32 v43, v52, v104
	v_fmac_f32_e32 v103, v43, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v30, v132
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v163, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v131, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v205, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v130, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v204, v43, v49 :: v_dual_mul_f32 v43, v129, v30
	v_fmac_f32_e32 v201, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v0, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v137, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v89, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v198, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v88, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v197, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v87, v0
	scratch_load_b32 v87, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v196, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v95
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v106, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v94, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v194, v43, v48 :: v_dual_mul_f32 v43, v93, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v193, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v92, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v192, v43, v50 :: v_dual_mul_f32 v43, v52, v99
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v98, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v190, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v97, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v189, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v96, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v188, v43, v50
	v_add_nc_u32_e32 v43, s33, v54
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v43, v43, s40, 1
	buffer_load_u16 v43, v43, s[12:15], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v55, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1d                           ; 120-byte Folded Reload
	scratch_load_b32 v133, off, off offset:272
	scratch_load_b32 v132, off, off offset:268
	scratch_load_b32 v130, off, off offset:260
	scratch_load_b32 v131, off, off offset:264
	scratch_load_b32 v129, off, off offset:240
	scratch_load_b32 v128, off, off offset:236
	scratch_load_b32 v126, off, off offset:228
	scratch_load_b32 v127, off, off offset:232
	scratch_load_b32 v93, off, off offset:144
	scratch_load_b32 v92, off, off offset:140
	scratch_load_b32 v91, off, off offset:136
	scratch_load_b32 v90, off, off offset:132
	scratch_load_b32 v89, off, off offset:112
	scratch_load_b32 v88, off, off offset:108
	scratch_load_b32 v187, off, off offset:464
	scratch_load_b32 v186, off, off offset:460
	scratch_load_b32 v184, off, off offset:452
	scratch_load_b32 v185, off, off offset:456
	scratch_load_b32 v179, off, off offset:432
	scratch_load_b32 v178, off, off offset:428
	scratch_load_b32 v176, off, off offset:420
	scratch_load_b32 v177, off, off offset:424
	scratch_load_b32 v159, off, off offset:368
	scratch_load_b32 v171, off, off offset:400
	scratch_load_b32 v170, off, off offset:396
	scratch_load_b32 v165, off, off offset:392
	scratch_load_b32 v164, off, off offset:388
	scratch_load_b32 v158, off, off offset:364
	scratch_load_b32 v157, off, off offset:360
	scratch_load_b32 v156, off, off offset:356
	ds_load_b128 v[43:46], v56
	ds_load_b128 v[47:50], v56 offset:16
	s_clause 0x1b                           ; 112-byte Folded Reload
	scratch_load_b32 v215, off, off offset:592
	scratch_load_b32 v214, off, off offset:588
	scratch_load_b32 v213, off, off offset:580
	scratch_load_b32 v146, off, off offset:572
	scratch_load_b32 v211, off, off offset:568
	scratch_load_b32 v210, off, off offset:564
	scratch_load_b32 v105, off, off offset:176
	scratch_load_b32 v95, off, off offset:168
	scratch_load_b32 v94, off, off offset:164
	scratch_load_b32 v121, off, off offset:208
	scratch_load_b32 v120, off, off offset:204
	scratch_load_b32 v115, off, off offset:200
	scratch_load_b32 v107, off, off offset:196
	scratch_load_b32 v104, off, off offset:172
	scratch_load_b32 v155, off, off offset:336
	scratch_load_b32 v154, off, off offset:332
	scratch_load_b32 v153, off, off offset:328
	scratch_load_b32 v152, off, off offset:324
	scratch_load_b32 v141, off, off offset:304
	scratch_load_b32 v140, off, off offset:300
	scratch_load_b32 v138, off, off offset:292
	scratch_load_b32 v139, off, off offset:296
	scratch_load_b32 v209, off, off offset:560
	scratch_load_b32 v207, off, off offset:544
	scratch_load_b32 v208, off, off offset:548
	scratch_load_b32 v203, off, off offset:528
	scratch_load_b32 v202, off, off offset:524
	scratch_load_b32 v199, off, off offset:512
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(52) lgkmcnt(0)
	v_dual_fmac_f32 v129, v34, v47 :: v_dual_fmac_f32 v128, v33, v48
	s_waitcnt vmcnt(50)
	v_dual_fmac_f32 v126, v32, v49 :: v_dual_fmac_f32 v127, v31, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v52, v38
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(49)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v93, v31, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v52, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(43)
	v_fmac_f32_e32 v187, v53, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v53, v30, v78 :: v_dual_fmac_f32 v92, v31, v48
	v_mul_f32_e32 v31, v52, v36
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(42)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v186, v53, v44 :: v_dual_mul_f32 v53, v30, v77
	v_fmac_f32_e32 v91, v31, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(41)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v31, v52, v35 :: v_dual_fmac_f32 v184, v53, v45
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v90, v31, v50
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[31:34], v56 offset:512
	ds_load_b128 v[35:38], v56 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v30, v76
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(21)
	v_fmac_f32_e32 v105, v42, v43
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v185, v53, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v0, v82
	scratch_load_b32 v82, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(20)
	v_dual_fmac_f32 v94, v39, v46 :: v_dual_mul_f32 v39, v30, v71
	v_fmac_f32_e32 v95, v40, v45
	v_fmac_f32_e32 v159, v53, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v0, v81
	scratch_load_b32 v81, off, off offset:584 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v179, v39, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v39, v30, v70 :: v_dual_fmac_f32 v104, v41, v44
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v158, v53, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v0, v80
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v165, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v18, v0
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v178, v39, v48 :: v_dual_mul_f32 v39, v30, v69
	v_fmac_f32_e32 v157, v53, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v0, v79
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v164, v1, v35
	v_fmac_f32_e32 v214, v2, v36
	v_dual_fmac_f32 v176, v39, v49 :: v_dual_mul_f32 v39, v30, v68
	v_fmac_f32_e32 v156, v53, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v51, v86
	scratch_load_b32 v86, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v107, v9, v35
	v_fmac_f32_e32 v177, v39, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v0, v75
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v133, v53, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v51, v85
	scratch_load_b32 v85, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v213, v4, v38
	s_waitcnt vmcnt(17)
	v_fmac_f32_e32 v155, v39, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v39, v0, v74 :: v_dual_fmac_f32 v132, v53, v44
	v_mul_f32_e32 v53, v51, v84
	scratch_load_b32 v84, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v146, v6, v36
	s_waitcnt vmcnt(17)
	v_dual_fmac_f32 v154, v39, v48 :: v_dual_mul_f32 v39, v0, v73
	v_dual_fmac_f32 v130, v53, v45 :: v_dual_mul_f32 v53, v51, v83
	scratch_load_b32 v83, off, off offset:556 ; 4-byte Folded Reload
	v_fmac_f32_e32 v211, v7, v37
	s_waitcnt vmcnt(17)
	v_fmac_f32_e32 v153, v39, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v0, v72
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v131, v53, v46
	v_fmac_f32_e32 v210, v8, v38
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v152, v39, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v67, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v215, v39, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v30, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v171, v39, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v30, v65
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v170, v39, v33
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v82, v10, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v141, v10, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v10, v0, v16 :: v_dual_fmac_f32 v81, v3, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v140, v10, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v0, v14
	v_dual_mul_f32 v0, v0, v5 :: v_dual_mul_f32 v5, v11, v51
	v_mul_f32_e32 v11, v13, v51
	v_mul_f32_e32 v13, v20, v52
	v_mul_f32_e32 v14, v21, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v138, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v25, v51
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v139, v0, v35 :: v_dual_fmac_f32 v208, v11, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v202, v13, v37 :: v_dual_fmac_f32 v199, v14, v38
	v_dual_fmac_f32 v209, v10, v31 :: v_dual_mul_f32 v10, v51, v24
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v85, v15, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v121, v10, v32 :: v_dual_mul_f32 v10, v51, v23
	v_fmac_f32_e32 v120, v10, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v51, v22 :: v_dual_fmac_f32 v83, v5, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v115, v10, v34 :: v_dual_mul_f32 v10, v29, v52
	v_dual_fmac_f32 v207, v10, v31 :: v_dual_mul_f32 v10, v52, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v89, v10, v32 :: v_dual_mul_f32 v10, v52, v27
	v_fmac_f32_e32 v88, v10, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v52, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v12, v51
	v_mul_f32_e32 v12, v19, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v84, v10, v37 :: v_dual_fmac_f32 v203, v12, v36
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v96, off, off offset:624
	scratch_load_b32 v97, off, off offset:628
	scratch_load_b32 v98, off, off offset:632
	scratch_load_b32 v99, off, off offset:636
	scratch_load_b32 v100, off, off offset:640
	scratch_load_b32 v1, off, off offset:644
	v_mov_b32_e32 v3, v220
.LBB0_9:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v215 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v185
	v_dual_mul_f32 v2, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v178
	v_dual_mul_f32 v6, 0xbfb8aa3b, v213 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v214 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v165
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v6
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v6, 0, 0x42800000, s0
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_dual_fmac_f32 v10, 0xbfb8aa3b, v215 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v210
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v154
	v_exp_f32_e32 v10, v10
	v_dual_mul_f32 v8, 0xbfb8aa3b, v187 :: v_dual_fmac_f32 v13, 0xbfb8aa3b, v213
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v214 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v153
	v_exp_f32_e32 v14, v6
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v2, v2
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v9, v10, v9
	v_dual_mul_f32 v10, 0xbfb8aa3b, v82 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v208
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v11, v14, v11
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_dual_mul_f32 v10, 0xbfb8aa3b, v146 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v128
	v_dual_mul_f32 v14, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v94
	v_ldexp_f32 v0, v2, v0
	v_ldexp_f32 v12, v13, v12
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	v_mul_f32_e32 v20, 0xbfb8aa3b, v177
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v61, 0xbfb8aa3b, v105 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v210
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v146
	v_dual_fmac_f32 v16, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	v_ldexp_f32 v13, v13, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v209
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v19
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v52, 0xbfb8aa3b, v155
	v_dual_mul_f32 v50, 0xbfb8aa3b, v131 :: v_dual_add_f32 v9, 1.0, v9
	v_ldexp_f32 v10, v14, v10
	v_ldexp_f32 v14, v16, v15
	v_ldexp_f32 v15, v18, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v16, 0xbfb8aa3b, v83
	v_mul_f32_e32 v18, 0xbfb8aa3b, v84
	v_cndmask_b32_e64 v24, 0, 0x42800000, s1
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	v_mul_f32_e32 v36, 0xbfb8aa3b, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v208 :: v_dual_fmac_f32 v17, 0xbfb8aa3b, v209
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0x42800000, s0
	v_mul_f32_e32 v30, 0xbfb8aa3b, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v17, v17
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v83 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v84
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v9, v9, v215
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v21, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v17, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v207
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v66
	v_div_scale_f32 v77, s1, v81, v11, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v44, 0xbfb8aa3b, v126 :: v_dual_add_f32 v13, 1.0, v13
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v16, v18, v16
	v_ldexp_f32 v18, v21, v19
	v_ldexp_f32 v19, v24, v23
	v_mul_f32_e32 v21, 0xbfb8aa3b, v203
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v23, 0xbfb8aa3b, v202
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v13, v13, v82
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_dual_mul_f32 v56, 0xbfb8aa3b, v129 :: v_dual_add_f32 v15, 1.0, v15
	v_cndmask_b32_e64 v49, 0, 0x42800000, s0
	v_mul_f32_e32 v42, 0xbfb8aa3b, v130
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v203
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v215, v9, v215
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v202 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v107
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v49
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v207
	v_exp_f32_e32 v67, v23
	v_dual_mul_f32 v62, 0xbfb8aa3b, v121 :: v_dual_add_f32 v19, 1.0, v19
	v_dual_mul_f32 v4, 0xbfb8aa3b, v184 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v21, v21
	v_dual_mul_f32 v6, 0xbfb8aa3b, v179 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v140
	v_ldexp_f32 v31, v65, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v66, v70, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v67, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v0, v0, v214
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_fmac_f32 v70, v65, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v60, 0xbfb8aa3b, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v21, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v2, 0xbfb8aa3b, v85 :: v_dual_mul_f32 v73, v71, v70
	v_dual_mul_f32 v22, 0xbfb8aa3b, v176 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v69 :: v_dual_mul_f32 v34, 0xbfb8aa3b, v170
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v51, 0xbfb8aa3b, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v66, v73, v71
	v_fma_f32 v74, -v67, v65, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v46, 0xbfb8aa3b, v95
	v_mul_f32_e32 v26, 0xbfb8aa3b, v91
	v_dual_mul_f32 v28, 0xbfb8aa3b, v164 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v65, v74, v65 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v199
	v_fmac_f32_e32 v73, v75, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v48, 0xbfb8aa3b, v159 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v104
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v38, 0xbfb8aa3b, v158 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v127
	v_dual_mul_f32 v32, 0xbfb8aa3b, v152 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v115
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, s0, v214, v0, v214
	v_div_fmas_f32 v66, v66, v70, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v199
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v80
	v_mul_f32_e32 v75, v74, v65
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v9, v66, v9, v215
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v24
	v_mul_f32_e32 v24, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v67, v75, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v40, 0xbfb8aa3b, v138 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v92
	v_dual_mul_f32 v58, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v71, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v49, 0xbfb8aa3b, v93
	v_mul_f32_e32 v23, 0xbfb8aa3b, v88
	v_ldexp_f32 v64, v68, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v11, v11, v81
	v_fma_f32 v66, -v67, v75, v74
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v68
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v66, v65, v75
	s_mov_b32 vcc_lo, s1
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v0, v65, v0, v214
	v_fma_f32 v76, -v68, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v76, v72
	v_mul_f32_e32 v79, v77, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v68, v79, v77
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_fmac_f32 v79, v71, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v80, v70, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v68, v79, v77
	v_fmac_f32_e32 v70, v71, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v10, v10, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v66, v66, v72, v79
	v_div_scale_f32 v76, null, v12, v12, v213
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v72, v71
	v_div_fixup_f32 v11, v66, v11, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v78, v76
	v_fma_f32 v73, -v76, v78, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v73, v78
	v_div_scale_f32 v73, s0, v82, v13, v82
	v_mul_f32_e32 v75, v73, v70
	v_div_scale_f32 v67, s3, v213, v12, v213
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v65, -v80, v75, v73
	v_mul_f32_e32 v68, v67, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_fmac_f32 v75, v65, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v76, v68, v67
	v_div_scale_f32 v65, s1, v146, v10, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v68, v74, v78
	v_fma_f32 v74, -v71, v72, 1.0
	v_fma_f32 v67, -v76, v68, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v74, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v15, v15, v210
	v_div_fmas_f32 v67, v67, v78, v68
	v_fma_f32 v68, -v80, v75, v73
	v_mul_f32_e32 v73, v65, v72
	v_div_scale_f32 v77, null, v14, v14, v211
	v_rcp_f32_e32 v74, v76
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v78, s3, v211, v14, v211
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v66, v77
	v_div_fmas_f32 v68, v68, v70, v75
	v_fma_f32 v70, -v71, v73, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v17, v17, v209
	v_div_scale_f32 v81, s0, v210, v15, v210
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v73, v70, v72
	v_div_scale_f32 v70, null, v16, v16, v83
	v_fma_f32 v79, -v77, v66, 1.0
	v_div_fixup_f32 v12, v67, v12, v213
	v_div_fixup_f32 v13, v68, v13, v82
	v_fma_f32 v65, -v71, v73, v65
	v_rcp_f32_e32 v71, v70
	v_fmac_f32_e32 v66, v79, v66
	v_fma_f32 v79, -v76, v74, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v65, v65, v72, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v75, v78, v66
	v_fmac_f32_e32 v74, v79, v74
	v_rcp_f32_e32 v79, v80
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v73, -v70, v71, 1.0
	v_fma_f32 v67, -v77, v75, v78
	v_mul_f32_e32 v68, v81, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v10, v65, v10, v146
	v_fmac_f32_e32 v71, v73, v71
	v_fmac_f32_e32 v75, v67, v66
	v_fma_f32 v67, -v76, v68, v81
	v_fma_f32 v82, -v80, v79, 1.0
	v_div_scale_f32 v73, null, v18, v18, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v77, v75, v78
	v_dual_fmac_f32 v68, v67, v74 :: v_dual_fmac_f32 v79, v82, v79
	v_div_scale_f32 v82, s4, v209, v17, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v66, v72, v66, v75
	v_fma_f32 v72, -v76, v68, v81
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v67, v82, v79
	v_div_scale_f32 v76, s1, v83, v16, v83
	v_div_fmas_f32 v68, v72, v74, v68
	v_rcp_f32_e32 v72, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v75, -v80, v67, v82
	v_div_fixup_f32 v65, v66, v14, v211
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v66, v68, v15, v210
	v_div_scale_f32 v68, null, v19, v19, v208
	v_fmac_f32_e32 v67, v75, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v75, -v73, v72, 1.0
	v_fma_f32 v14, -v80, v67, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v75, v72
	v_mul_f32_e32 v74, v76, v71
	v_div_fmas_f32 v14, v14, v79, v67
	v_rcp_f32_e32 v67, v68
	v_div_scale_f32 v75, null, v69, v69, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v15, -v70, v74, v76
	v_div_fixup_f32 v77, v14, v17, v209
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v74, v15, v71
	v_div_scale_f32 v15, s0, v84, v18, v84
	v_fma_f32 v14, -v70, v74, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v68, v67, 1.0
	v_rcp_f32_e32 v76, v75
	v_mul_f32_e32 v17, v15, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v14, v71, v74
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, null, v31, v31, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v73, v17, v15
	v_div_fixup_f32 v79, v14, v16, v83
	v_div_scale_f32 v74, s1, v208, v19, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v14, v70
	v_fma_f32 v78, -v75, v76, 1.0
	v_fmac_f32_e32 v17, v71, v72
	v_div_scale_f32 v71, s3, v207, v69, v207
	v_div_scale_f32 v83, null, v64, v64, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, null, v63, v63, v202
	v_fma_f32 v81, -v70, v14, 1.0
	v_fma_f32 v15, -v73, v17, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v80, v71, v76
	v_rcp_f32_e32 v82, v78
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v14, v81, v14
	v_mul_f32_e32 v16, v74, v67
	v_div_fmas_f32 v15, v15, v72, v17
	v_fma_f32 v17, -v75, v80, v71
	v_rcp_f32_e32 v72, v83
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v73, -v68, v16, v74
	v_div_fixup_f32 v84, v15, v18, v84
	v_fma_f32 v81, -v78, v82, 1.0
	v_fmac_f32_e32 v80, v17, v76
	v_div_scale_f32 v18, s4, v202, v63, v202
	v_fmac_f32_e32 v16, v73, v67
	v_div_scale_f32 v73, s0, v203, v31, v203
	v_fmac_f32_e32 v82, v81, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v15, -v68, v16, v74
	v_mul_f32_e32 v17, v73, v14
	v_fma_f32 v68, -v83, v72, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v15, v15, v67, v16
	v_fma_f32 v16, -v75, v80, v71
	v_mul_f32_e32 v71, v18, v82
	v_fma_f32 v67, -v70, v17, v73
	v_fmac_f32_e32 v72, v68, v72
	v_div_scale_f32 v68, s1, v199, v64, v199
	v_div_fixup_f32 v74, v15, v19, v208
	v_fma_f32 v15, -v78, v71, v18
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v17, v67, v14
	v_mul_f32_e32 v19, v68, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v15, v82
	v_div_fmas_f32 v16, v16, v76, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v70, v17, v73
	v_fma_f32 v15, -v83, v19, v68
	v_div_fixup_f32 v67, v16, v69, v207
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v19, v15, v72
	v_div_fmas_f32 v8, v8, v14, v17
	v_fma_f32 v14, -v78, v71, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v187
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v15, -v83, v19, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v14, v14, v82, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v205, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v7, v15, v72, v19
	v_div_fixup_f32 v63, v14, v63, v202
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v206, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v8, v31, v203
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s0
	v_ldexp_f32 v5, v17, v16
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v186 :: v_dual_mul_f32 v17, v201, v12
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v7, v64, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v14
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v185
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v0, v0, v187
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v200, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v197, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v5, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v198, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v184
	v_ldexp_f32 v4, v9, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v192, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v8
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v4, v190, v31 :: v_dual_fmac_f32 v69, v7, v69
	v_mul_f32_e32 v7, v191, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v187, v0, v187
	v_div_scale_f32 v75, null, v70, v70, v185
	v_div_scale_f32 v67, s0, v186, v65, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v76, v71, v69
	v_rcp_f32_e32 v74, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v73, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v196, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v65, v65, v186
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v189, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v66
	v_fma_f32 v73, -v75, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v74, v73, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v16, v204, v11 :: v_dual_mul_f32 v11, v195, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v68, v76, v71
	v_div_scale_f32 v73, null, v31, v31, v184
	v_fma_f32 v78, -v66, v72, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v77, v69
	v_fmac_f32_e32 v72, v78, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v68, v76, v71
	v_div_scale_f32 v71, s1, v185, v70, v185
	v_mul_f32_e32 v68, v67, v72
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v63, v63, v69, v76
	v_rcp_f32_e32 v69, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v188, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v66, v68, v67
	v_mul_f32_e32 v77, v71, v74
	v_div_fixup_f32 v0, v63, v0, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v76, v72
	v_fma_f32 v63, -v75, v77, v71
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v64, -v73, v69, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v194, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v68, v67
	v_fmac_f32_e32 v69, v64, v69
	v_div_scale_f32 v67, s3, v184, v31, v184
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v179
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v63, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v72, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v178
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v75, v77, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v64
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v27, v27, v78
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v75, 0xbfb8aa3b, v176 :: v_dual_add_f32 v64, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v73, v68, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v22, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v71, v71, v74, v77
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v76, null, v64, v64, v179
	v_fmac_f32_e32 v68, v27, v69
	v_div_fixup_f32 v27, v66, v65, v186
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v8, v193, v84 :: v_dual_add_f32 v65, 1.0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v76
	v_fma_f32 v66, -v73, v68, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v71, v70, v185
	v_div_scale_f32 v70, null, v65, v65, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v66, v66, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s0, v179, v64, v179
	v_fma_f32 v71, -v76, v63, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v20, v66, v31, v184
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v71, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v177
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v69, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v34
	v_exp_f32_e32 v66, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v70, v68, 1.0
	v_div_scale_f32 v74, null, v67, v67, v176
	v_fma_f32 v73, -v76, v71, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v27, v181, v27 :: v_dual_fmac_f32 v68, v72, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s1, v178, v65, v178
	v_fmac_f32_e32 v71, v73, v63
	v_rcp_f32_e32 v75, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v72, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v180, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v71, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v70, v73, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v63, v69, v63, v71
	v_fma_f32 v66, -v74, v75, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v69, null, v0, v0, v177
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v76, v68
	v_fmac_f32_e32 v75, v66, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v66, v69
	v_div_fixup_f32 v63, v63, v64, v179
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v70, v73, v72
	v_div_scale_f32 v35, s0, v176, v67, v176
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v72, v35, v75
	v_div_fmas_f32 v34, v64, v68, v73
	v_fma_f32 v73, -v69, v66, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v34, v65, v178
	v_fma_f32 v65, -v74, v72, v35
	v_fmac_f32_e32 v66, v73, v66
	v_div_scale_f32 v73, s1, v177, v0, v177
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v65, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v71, v70
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v73, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v183, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v74, v72, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v69, v65, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v165
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v29, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v35, v75, v72
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v69, v65, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v182, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v52
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v35, v66, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, vcc_lo, v171, v74, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v28, v67, v176
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v68, 0xbfb8aa3b, v170 :: v_dual_mul_f32 v29, v174, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v64, v68, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v74, v74, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v68
	v_fma_f32 v75, -v68, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v75, v71
	v_div_scale_f32 v75, null, v70, v70, v165
	v_rcp_f32_e32 v77, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v64, v64, v170
	v_rcp_f32_e32 v73, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v76, v73, 1.0
	v_fmac_f32_e32 v73, v66, v73
	v_div_fixup_f32 v0, v35, v0, v177
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v65, v71
	v_div_scale_f32 v66, s0, v170, v64, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v234, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v68, v72, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v67, v66, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v35, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v0, v71
	v_fma_f32 v0, -v76, v67, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v172, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v68, v72, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v67, v0, v73
	v_fma_f32 v0, -v75, v77, 1.0
	v_div_scale_f32 v68, null, v63, v63, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v65, v65, v71, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v0, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v0, v68
	v_fma_f32 v66, -v76, v67, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v66, v66, v73, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v159
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v0, 1.0
	v_div_scale_f32 v73, s0, v164, v63, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v71
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v72, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v66, v64, v170
	v_div_fixup_f32 v65, v65, v74, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v158
	v_ldexp_f32 v36, v38, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v38, v73, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, s1, v165, v70, v165
	v_fma_f32 v36, -v68, v38, v73
	v_mul_f32_e32 v67, v48, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v38, v36, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v72, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v75, v67, v48
	v_fmac_f32_e32 v67, v66, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_exp_f32_e32 v30, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v75, v67, v48
	v_div_scale_f32 v75, null, v74, v74, v159
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v69, v75
	v_div_fmas_f32 v48, v48, v77, v67
	v_fma_f32 v67, -v68, v38, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v67, v0, v38
	v_div_scale_f32 v66, null, v68, v68, v158
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v75, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, vcc_lo, v159, v74, v159
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v69, v36, v69
	v_div_fixup_f32 v0, v0, v63, v164
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v36, v48, v70, v165
	v_div_scale_f32 v77, s0, v158, v68, v158
	v_mul_f32_e32 v70, v73, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v163, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v38, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v72, v72, v156
	v_fma_f32 v48, -v66, v67, 1.0
	v_fma_f32 v76, -v75, v70, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v173, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v63
	v_fmac_f32_e32 v67, v48, v67
	v_fmac_f32_e32 v70, v76, v69
	v_div_scale_f32 v78, null, v0, v0, v157
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v161, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v77, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v160, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v75, v70, v73
	v_rcp_f32_e32 v75, v78
	v_fma_f32 v76, -v63, v71, 1.0
	v_fma_f32 v73, -v66, v64, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v52, v65, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v76, v71
	v_div_scale_f32 v76, s1, v156, v72, v156
	v_fmac_f32_e32 v64, v73, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v73, -v78, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v155
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v76, v71
	v_fma_f32 v66, -v66, v64, v77
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v73, s3, v157, v0, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v52, v52, v74, v159
	v_fma_f32 v74, -v63, v70, v76
	v_div_fmas_f32 v39, v66, v67, v64
	v_mul_f32_e32 v64, v73, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v74, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v78, v64, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v69, v65
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v154
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v63, v70, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v64, v33, v75 :: v_dual_add_f32 v65, 1.0, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v153
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v67, null, v65, v65, v155
	v_div_fmas_f32 v63, v63, v71, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v67
	v_fma_f32 v32, -v78, v64, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v66
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v60
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v32, v32, v75, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v70, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v67, v71, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v73, 0xbfb8aa3b, v152 :: v_dual_add_f32 v74, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v69, v71
	v_div_scale_f32 v69, vcc_lo, v155, v65, v155
	v_div_fixup_f32 v33, v63, v72, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v76, null, v74, v74, v153
	v_mul_f32_e32 v77, v69, v71
	v_div_fixup_f32 v39, v39, v68, v158
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v162, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v67, v77, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v168, v33
	v_mul_f32_e32 v39, v167, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v68, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v68, -v76, v63, 1.0
	v_fma_f32 v67, -v67, v77, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v63, v68, v63
	v_div_scale_f32 v68, s1, v153, v74, v153
	v_div_fmas_f32 v67, v67, v71, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v166, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v68, v63
	v_div_fixup_f32 v0, v32, v0, v157
	v_div_fixup_f32 v52, v67, v65, v155
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v76, v77, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v32, v169, v0 :: v_dual_fmac_f32 v79, 0xbfb8aa3b, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v73, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v65, v63
	v_div_scale_f32 v70, null, v64, v64, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, s0, v154, v64, v154
	v_rcp_f32_e32 v75, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v76, v77, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v70, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v72, v75
	v_div_scale_f32 v72, null, v0, v0, v152
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v69, v66, v75
	v_rcp_f32_e32 v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v70, v69, v66
	v_fmac_f32_e32 v69, v73, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v72, v71, 1.0
	v_fma_f32 v66, -v70, v69, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v67, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v66, v66, v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v140
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v40, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, s3, v152, v0, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v76, null, v67, v67, v141
	v_mul_f32_e32 v69, v70, v71
	v_div_fmas_f32 v63, v68, v63, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v40, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v72, v69, v70
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v47, v71
	v_div_fixup_f32 v47, v66, v64, v154
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v40, v63, v74, v153
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v72, v69, v70
	v_fma_f32 v70, -v76, v65, 1.0
	v_div_scale_f32 v68, null, v64, v64, v140
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v143, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v63, v71, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v68
	v_fmac_f32_e32 v65, v70, v65
	v_div_scale_f32 v70, s0, v141, v67, v141
	v_div_fixup_f32 v0, v63, v0, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v66, v66, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v70, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v151, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v68, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v71, 0xbfb8aa3b, v139 :: v_dual_add_f32 v0, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v76, v72, v70
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v73, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v0, v0, v138
	v_div_scale_f32 v73, s1, v140, v64, v140
	v_fmac_f32_e32 v72, v66, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v75, v74
	v_fma_f32 v70, -v76, v72, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v71, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v73, v69
	v_div_fmas_f32 v65, v70, v65, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v68, v66, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v74, v75, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v144, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, s0, v138, v0, v138
	v_dual_fmac_f32 v75, v70, v75 :: v_dual_fmac_f32 v66, v76, v69
	v_div_fixup_f32 v65, v65, v67, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v67, -v68, v66, v73
	v_div_scale_f32 v68, null, v63, v63, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v67, v69, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v58, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v64, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v74, v69, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v142, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v68, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v64, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v72, v71
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v73, v70
	v_div_scale_f32 v73, s1, v139, v63, v139
	v_fma_f32 v58, -v74, v69, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v73, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v67, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v58, v75, v69
	v_fma_f32 v50, -v68, v64, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v66, 1.0, v66 :: v_dual_mul_f32 v51, v135, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v50, v70
	v_div_scale_f32 v76, null, v66, v66, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v50, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v68, v64, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v73, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v130
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v42, v0, v138
	v_div_fmas_f32 v58, v58, v70, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v50, v50, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v58, v58, v63, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v76, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v50 :: v_dual_mul_f32 v50, v136, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v70, v73
	v_div_scale_f32 v70, s0, v132, v66, v132
	v_mul_f32_e32 v77, v70, v73
	v_div_scale_f32 v67, null, v74, v74, v133
	v_div_scale_f32 v64, vcc_lo, v133, v74, v133
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v63, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v67
	v_fma_f32 v63, -v76, v77, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v42, v137, v58 :: v_dual_fmac_f32 v77, v63, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v67, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v72, v75, v72
	v_div_scale_f32 v75, null, v69, v69, v131
	v_mul_f32_e32 v71, v64, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v78, v75
	v_fma_f32 v58, -v67, v71, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v71, v58, v72
	v_fma_f32 v63, -v75, v78, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v64, -v67, v71, v64
	v_fma_f32 v67, -v76, v77, v70
	v_div_fmas_f32 v64, v64, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v64, v74, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v67, v67, v73, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v66, v67, v66, v132
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s0, v130, v0, v130
	v_fmac_f32_e32 v78, v63, v78
	v_div_scale_f32 v63, s1, v131, v69, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v63, v78
	v_fma_f32 v67, -v75, v71, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v134, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v0, v0, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v56, v65
	v_fma_f32 v72, -v65, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v56, v72, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v129
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v53, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v128
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v44, v53, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v73, v56
	v_fmac_f32_e32 v71, v67, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v65, v53, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v75, v71, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v75, null, v74, v74, v129
	v_fmac_f32_e32 v53, v44, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v72, v70
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v126
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v65, -v65, v53, v73
	v_div_fmas_f32 v63, v63, v78, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v75
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v53, v65, v56, v53
	v_div_scale_f32 v73, vcc_lo, v129, v74, v129
	v_div_scale_f32 v76, s0, v128, v71, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v0, v53, v0, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v75, v68, 1.0
	v_div_scale_f32 v67, null, v71, v71, v128
	v_fmac_f32_e32 v68, v44, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v63, v69, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v65, v67
	v_mul_f32_e32 v69, v73, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v72, 1.0, v43 :: v_dual_mul_f32 v43, v150, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v72, v72, v126
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v53, -v67, v65, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v56, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v63
	v_fma_f32 v56, -v75, v69, v73
	v_fmac_f32_e32 v65, v53, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v53, v148, v66 :: v_dual_add_f32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v76, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v78, null, v0, v0, v127
	v_fma_f32 v77, -v63, v70, 1.0
	v_fmac_f32_e32 v69, v56, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v147, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v77, v70
	v_fma_f32 v64, -v75, v69, v73
	v_rcp_f32_e32 v75, v78
	v_fma_f32 v73, -v67, v66, v76
	v_div_scale_f32 v77, s1, v126, v72, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v62, v64, v68, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v73, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v77, v70
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v121
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v78, v75, 1.0
	v_fma_f32 v67, -v67, v66, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v73, s3, v127, v0, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v60, v67, v65, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v73, v75
	v_div_fixup_f32 v62, v62, v74, v129
	v_fma_f32 v74, -v63, v69, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v68, v64
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v78, v65, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v44, v149, v44 :: v_dual_fmac_f32 v69, v74, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v64, 1.0, v64 :: v_dual_fmac_f32 v65, v55, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v63, v69, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v64, v64, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v63, v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v78, v65, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v55, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v60, v60, v71, v128
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v54, v54, v75, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v69, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v67, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v54, v0, v127
	v_div_scale_f32 v69, null, v65, v65, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v68, v70
	v_div_scale_f32 v68, vcc_lo, v121, v64, v121
	v_rcp_f32_e32 v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v68, v70
	v_fma_f32 v71, -v67, v77, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v71, v70
	v_fma_f32 v67, -v67, v77, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v70, v67, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v122, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v70, v64, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v63, v72, v126
	v_fma_f32 v72, -v69, v75, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v54, v125, v0 :: v_dual_fmac_f32 v79, 0xbfb8aa3b, v105
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v74, v74, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v73, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v72, v75
	v_div_scale_f32 v66, s0, v120, v65, v120
	v_rcp_f32_e32 v63, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v66, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v79
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v124, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v69, v68, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v71, -v76, v63, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v59, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v71, v63
	v_div_scale_f32 v71, s1, v115, v74, v115
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_add_f32 v59, 1.0, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v71, v63
	v_div_scale_f32 v72, null, v0, v0, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v76, v77, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v123, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v77, v62, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v77, v71
	v_div_scale_f32 v76, null, v59, v59, v105
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v72, v61, 1.0
	v_dual_fmac_f32 v68, v73, v75 :: v_dual_fmac_f32 v61, v70, v61
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v66, -v69, v68, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, s3, v107, v0, v107
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v66, v66, v75, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v69, 0xbfb8aa3b, v104 :: v_dual_mul_f32 v68, v70, v61
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v57, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v72, v68, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v68, v69, v61 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v94
	v_div_fmas_f32 v63, v71, v63, v77
	v_rcp_f32_e32 v71, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v66, v65, v120
	v_fma_f32 v65, -v72, v68, v70
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v63, v74, v115
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v113, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v61, v65, v61, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v71, 1.0
	v_div_scale_f32 v68, s0, v105, v59, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v0, v61, v0, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v73
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v46, v106, v0 :: v_dual_add_f32 v57, 1.0, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v68, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v95 :: v_dual_add_f32 v0, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v70, null, v57, v57, v104
	v_fma_f32 v66, -v76, v72, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v75, null, v0, v0, v94
	v_rcp_f32_e32 v65, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v66, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v114, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v76, v72, v68
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v73, -v70, v65, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v74, v74, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v68, v71, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v75, v63, 1.0
	v_fmac_f32_e32 v65, v73, v65
	v_div_scale_f32 v73, s1, v104, v57, v104
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v112, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v68, v68, v59, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v63, v71, v63 :: v_dual_mul_f32 v66, v73, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, s0, v94, v0, v94
	v_fma_f32 v76, -v70, v66, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v76, v65
	v_fma_f32 v59, -v70, v66, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v41, v59, v65, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v64, v64, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v49, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v92
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v57, v104
	v_fma_f32 v57, -v75, v66, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v26, v73, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v70, v71, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_fmac_f32 v71, v74, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, s1, v95, v64, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v65, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v26, v26, v93
	v_rcp_f32_e32 v25, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v65, v25, 1.0
	v_fmac_f32_e32 v66, v57, v63
	v_mul_f32_e32 v57, v74, v71
	v_fmac_f32_e32 v25, v76, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v75, v66, v49
	v_fma_f32 v75, -v70, v57, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v49, v49, v63, v66
	v_fmac_f32_e32 v57, v75, v71
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v49, v0, v94
	v_fma_f32 v63, -v70, v57, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v57, v63, v71, v57
	v_div_scale_f32 v71, vcc_lo, v93, v26, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v73, 0xbfb8aa3b, v91 :: v_dual_fmac_f32 v70, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v57, v57, v64, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v75, v75, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v73
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v59, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v71, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v70, 1.0, v59 :: v_dual_mul_f32 v59, v119, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v73, v74, 1.0
	v_fma_f32 v49, -v65, v72, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v118, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v70, v70, v91
	v_fmac_f32_e32 v74, v63, v74
	v_div_scale_f32 v76, s0, v92, v75, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v79, v77
	v_fmac_f32_e32 v72, v49, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v64, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v78, v76, v74 :: v_dual_mul_f32 v63, v117, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v116, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v65, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v73, v78, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v41, v25, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v71, 0xbfb8aa3b, v89 :: v_dual_fmac_f32 v78, v49, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v77, v79, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v25, v25, v26, v93
	v_fma_f32 v41, -v73, v78, v76
	v_fmac_f32_e32 v79, v49, v79
	v_div_scale_f32 v49, s1, v91, v70, v91
	v_div_scale_f32 v65, null, v0, v0, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v24, v41, v74, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, s0, v90, v0, v90
	v_rcp_f32_e32 v66, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v24, v24, v75, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v49, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v77, v41, v49
	v_fma_f32 v21, -v65, v66, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v23, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v71
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_exp_f32_e32 v2, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v21, v66
	v_fma_f32 v49, -v77, v41, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v23, v23, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v85
	v_exp_f32_e32 v68, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v49, v79, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v2, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v41, v41, v70, v91
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v23, v23, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v68, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v49, v74, v66
	v_div_scale_f32 v80, s0, v88, v2, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v26, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v65, v49, v74
	v_div_scale_f32 v26, null, v2, v2, v88
	v_rcp_f32_e32 v71, v72
	v_fmac_f32_e32 v49, v73, v66
	v_div_scale_f32 v73, null, v68, v68, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v65, v49, v74
	v_rcp_f32_e32 v74, v26
	v_rcp_f32_e32 v75, v73
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v72, v71, 1.0
	v_div_fmas_f32 v49, v65, v66, v49
	v_div_scale_f32 v77, vcc_lo, v89, v23, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v0, v49, v0, v90
	v_fma_f32 v65, -v26, v74, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v73, v75, 1.0
	v_fmac_f32_e32 v74, v65, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v76, null, v21, v21, v85
	v_div_scale_f32 v83, s3, v85, v21, v85
	v_mul_f32_e32 v81, v80, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v78, v76
	v_fma_f32 v66, -v76, v78, 1.0
	v_fmac_f32_e32 v75, v49, v75
	v_div_scale_f32 v49, s1, v86, v68, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v66, v78
	v_fmac_f32_e32 v71, v70, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v65, v111, v0 :: v_dual_mul_f32 v82, v49, v75
	v_mul_f32_e32 v70, v109, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v84, v83, v78 :: v_dual_mul_f32 v79, v77, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v110, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v73, v82, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v72, v79, v77
	v_fmac_f32_e32 v82, v41, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v79, v0, v71
	v_fma_f32 v0, -v26, v81, v80
	v_fma_f32 v24, -v72, v79, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v0, v74
	v_fma_f32 v0, -v76, v84, v83
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v77, |v46|, |v10|, |v8|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v24, v71, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v26, v81, v80
	v_fmac_f32_e32 v84, v0, v78
	v_fma_f32 v0, -v73, v82, v49
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v23, v24, v23, v89
	v_div_fmas_f32 v26, v26, v74, v81
	v_fma_f32 v41, -v76, v84, v83
	s_mov_b32 vcc_lo, s1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v24, |v31|, |v27|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v75, v82
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v2, v26, v2, v88
	v_div_fmas_f32 v41, v41, v78, v84
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v48|, |v38|, |v36|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v68, v86
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v72, v108, v25
.Ltmp13:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v22|, |v35|, |v34|
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v41, v21, v85
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v68, |v30|, |v18|, |v16|
	v_max3_f32 v71, |v42|, |v14|, |v13|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v103, v0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v29|, |v28|, |v19|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v87, v21
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v21, v24, |v20|, v25
	v_max3_f32 v24, v26, v68, |v17|
	v_max_f32_e64 v25, |v45|, |v39|
	v_max3_f32 v26, |v33|, |v52|, |v47|
	v_max3_f32 v68, |v58|, |v51|, |v50|
	v_max3_f32 v73, |v40|, |v37|, |v15|
	v_max3_f32 v0, v21, v0, v24
	v_max3_f32 v24, |v57|, |v72|, |v70|
	v_max3_f32 v25, v25, |v32|, v26
	v_max3_f32 v26, v68, v71, |v12|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v68, v102, v2 :: v_dual_mul_f32 v71, v101, v23
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v23, |v64|, |v63|
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3)
	v_max3_f32 v2, v25, v73, v26
	v_max_f32_e64 v74, |v56|, |v53|
	v_max3_f32 v75, |v44|, |v67|, |v60|
	v_max3_f32 v76, |v69|, |v62|, |v61|
	v_max3_f32 v23, v23, |v59|, v24
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v24, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v78, |v55|, |v54|, |v11|
	v_max3_f32 v74, v74, |v43|, v75
	v_max3_f32 v75, v76, v77, |v9|
	v_max3_f32 v26, |v71|, |v68|, |v49|
	v_max_f32_e32 v24, v24, v24
	v_max3_f32 v73, |v41|, |v4|, |v5|
	v_max3_f32 v25, |v66|, |v65|, |v7|
	v_max3_f32 v21, v74, v78, v75
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v74, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v78, 8, v96
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v26, v73, |v6|
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v77, 0x80, v96
	v_permlanex16_b32 v75, v21, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v74, v74
	v_max_f32_e32 v74, v2, v24
	v_max3_f32 v26, v23, v25, v26
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v25, 0x60, v96
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v81, 3, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v2, v26, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v73, v0, v73 :: v_dual_and_b32 v0, 3, v96
	v_dual_max_f32 v75, v21, v75 :: v_dual_max_f32 v2, v2, v2
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v21, 4, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v24, v0, 9, 0
	v_lshlrev_b32_e32 v23, 5, v0
	v_lshl_add_u32 v0, v0, 4, 0
	v_lshl_add_u32 v76, v21, 2, v24
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_or_b32 v1, 0x680, v1, v23
	v_lshlrev_b32_e32 v24, 1, v77
	v_xor_b32_e32 v79, v23, v25
	v_lshl_add_u32 v80, v78, 4, v76
	v_xor_b32_e32 v1, v1, v25
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v26, v2
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v82, v21, 6, 0
	v_lshlrev_b32_e32 v78, 3, v78
	v_add3_u32 v2, v80, v24, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v1, v82, v81, v1
	ds_store_b128 v2, v[73:76]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[73:76], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v74
	v_mov_b32_e32 v26, v75
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v74, v74 :: v_dual_add_nc_u32 v77, 0, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v1, v73
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v73, v73, v73 :: v_dual_max_f32 v26, v26, v26
	v_dual_max_f32 v2, v74, v2 :: v_dual_max_f32 v1, v1, v1
	v_max_f32_e32 v79, v76, v76
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v76, v76 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v73, v1
	v_dual_max_f32 v73, v75, v75 :: v_dual_max_f32 v74, v76, v76
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v75, v1 :: v_dual_max_f32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v73, v26
	v_dual_max_f32 v73, v79, v74 :: v_dual_max_f32 v2, v2, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v75, v75, v75 :: v_dual_mov_b32 v74, v26
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v74, v74 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v79, v73 :: v_dual_max_f32 v74, v74, v74
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v75 :: v_dual_max_f32 v26, v26, v74
	v_dual_max_f32 v75, v79, v79 :: v_dual_mov_b32 v76, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v79, v2 :: v_dual_max_f32 v80, v73, v75
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v75, v26 :: v_dual_max_f32 v74, v79, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v81, v80
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshrrev_b32_e32 v79, 1, v25
.Ltmp47:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v25, v100, v25
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v2, v74
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v73, v76, v76 :: v_dual_max_f32 v2, v81, v81
	v_max_f32_e32 v73, v1, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, v75, v75 :: v_dual_max_f32 v76, v80, v2
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v77, v79, v78
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v26, v1
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 5, v21
.Ltmp54:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v21, 4, v99
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v2, v[73:76]
	v_add3_u32 v0, v0, v1, v78
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp56:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v78, 32, v21
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[73:76], v0
.Ltmp58:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v73, v73 :: v_dual_max_f32 v75, v75, v75
	v_max_f32_e32 v76, v76, v76
	v_max_f32_e32 v74, v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v2, 0x2b8cbccc, v0 :: v_dual_max_f32 v75, 0x2b8cbccc, v75
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v21
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v76, 0x2b8cbccc, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v74, 0x2b8cbccc, v74
	v_div_scale_f32 v26, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v79, vcc_lo, v2, 0x40e00000, v2
	v_div_scale_f32 v80, null, 0x40e00000, 0x40e00000, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v73, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s24, v0
	v_add_co_ci_u32_e64 v1, null, s25, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v82, v80
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v76
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[26:27], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v77, -v26, v73, 1.0
	v_fma_f32 v83, -v80, v82, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v77, v73
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v77, s0, s24, v78
	v_add_co_ci_u32_e64 v78, null, s25, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v81, v79, v73
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[28:29], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, s7, v75, 0x40e00000, v75
	v_fma_f32 v0, -v26, v81, v79
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v21
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[28:29], v[77:78]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v81, v0, v73
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s4, s24, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s25, 0, s4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v26, -v26, v81, v79
	v_rcp_f32_e32 v79, v84
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[26:27], v[77:78]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v78.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[28:29], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v26, v26, v73, v81
	v_rcp_f32_e32 v81, v85
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[26:27], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v2, v26, 0x40e00000, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v77, -v84, v79, 1.0
	v_fma_f32 v86, -v85, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v86, v81
	v_div_scale_f32 v86, s9, v76, 0x40e00000, v76
	v_mul_f32_e32 v73, v83, v82
	v_fma_f32 v26, -v80, v73, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v26, v82
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v26.l, v2.h
	v_mov_b16_e32 v26.h, v78.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v80, v73, v83
	v_dual_mul_f32 v80, v86, v81 :: v_dual_fmac_f32 v79, v77, v79
	v_div_scale_f32 v77, s8, v74, 0x40e00000, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v26
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v73, v0, v82, v73
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v87, v77, v79
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v0, v2, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v73, v73, 0x40e00000, v75
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s7, s24, v21
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v26, -v84, v87, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s25, 0, s7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v78.l, v73.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fmac_f32_e32 v87, v26, v79
	v_fma_f32 v26, -v85, v80, v86
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[28:29], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[26:27], v[1:2]
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v91, null, v82, v82, v35
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v75, -v84, v87, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v77, null, v82, v82, v31
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v80, v26, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v82, v82, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v26, v75, v79, v87
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v79, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v75, -v85, v80, v86
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v87, s9, v27, v82, v27
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v26, v26, 0x40e00000, v74
	v_div_fmas_f32 v74, v75, v81, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v80, null, v82, v82, v27
	v_div_scale_f32 v86, null, v82, v82, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v77, v79, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v74, v74, 0x40e00000, v76
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v76.l, v26.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v83, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v76.h, v78.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, vcc_lo, v31, v82, v31
	v_rcp_f32_e32 v85, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v76, v81, v79 :: v_dual_and_b32 v75, 1, v78
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v78.l, v74.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v26, v2, 0x7fff
	v_add3_u32 v1, v73, v75, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v80, v83, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v89, -v84, v85, 1.0
	v_fmac_f32_e32 v83, v73, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s10, v20, v82, v20
	v_dual_mul_f32 v88, v87, v83 :: v_dual_and_b32 v75, 1, v78
	v_fma_f32 v78, -v77, v76, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v78, v79
	v_rcp_f32_e32 v78, v86
	v_fma_f32 v77, -v77, v76, v81
	v_fma_f32 v81, -v80, v88, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v90, -v86, v78, 1.0
	v_fmac_f32_e32 v88, v81, v83
	v_div_scale_f32 v81, s11, v22, v82, v22
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v74, v75, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v90, v78
	v_div_scale_f32 v90, null, v82, v82, v34
	v_div_fmas_f32 v76, v77, v79, v76
	v_mul_f32_e32 v77, v89, v85
	v_rcp_f32_e32 v79, v91
	v_rcp_f32_e32 v92, v90
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v31, v76, v82, v31
	v_fma_f32 v76, -v80, v88, v87
	v_fma_f32 v80, -v84, v77, v89
	v_dual_mul_f32 v87, v81, v78 :: v_dual_and_b32 v74, 0xffff0000, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v83, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v79, 1.0
	v_fma_f32 v88, -v90, v92, 1.0
	v_div_scale_f32 v83, s9, v35, v82, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v27, v76, v82, v27
	v_dual_fmac_f32 v79, v93, v79 :: v_dual_fmac_f32 v92, v88, v92
	v_fmac_f32_e32 v77, v80, v85
	v_fma_f32 v80, -v86, v87, v81
	v_div_scale_f32 v88, null, v82, v82, v29
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v76, -v84, v77, v89
	v_fmac_f32_e32 v87, v80, v78
	v_dual_mul_f32 v80, v83, v79 :: v_dual_and_b32 v75, 0xffff0000, v26
	v_div_scale_f32 v84, s12, v34, v82, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v76, v76, v85, v77
	v_fma_f32 v77, -v86, v87, v81
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v89, null, v82, v82, v28
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v81, -v91, v80, v83
	v_mul_f32_e32 v86, v84, v92
	v_div_fmas_f32 v77, v77, v78, v87
	v_rcp_f32_e32 v78, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v80, v81, v79 :: v_dual_and_b32 v73, 0xffff0000, v2
	v_fma_f32 v81, -v90, v86, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v88, v85, 1.0
	v_div_fixup_f32 v20, v76, v82, v20
	v_div_fixup_f32 v22, v77, v82, v22
	v_fma_f32 v76, -v91, v80, v83
	v_fmac_f32_e32 v86, v81, v92
	v_div_scale_f32 v77, s10, v29, v82, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v89, v78, 1.0
	v_fmac_f32_e32 v85, v87, v85
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v83, null, v82, v82, v19
	v_div_fmas_f32 v76, v76, v79, v80
	v_fma_f32 v79, -v90, v86, v84
	v_fmac_f32_e32 v78, v81, v78
	v_mul_f32_e32 v80, v77, v85
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v84, s9, v28, v82, v28
	v_div_fmas_f32 v79, v79, v92, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v88, v80, v77
	v_rcp_f32_e32 v81, v83
	v_div_scale_f32 v87, null, v82, v82, v48
	v_mul_f32_e32 v90, v84, v78
	v_fmac_f32_e32 v80, v86, v85
	v_div_scale_f32 v86, null, v82, v82, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v92, v87
	v_div_fixup_f32 v35, v76, v82, v35
	v_fma_f32 v76, -v89, v90, v84
	v_fma_f32 v77, -v88, v80, v77
	v_rcp_f32_e32 v88, v86
	v_fma_f32 v91, -v83, v81, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v90, v76, v78
	v_div_fmas_f32 v77, v77, v85, v80
	v_div_fixup_f32 v34, v79, v82, v34
	v_div_scale_f32 v79, s11, v19, v82, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v80, -v89, v90, v84
	v_div_scale_f32 v93, null, v82, v82, v36
	v_fma_f32 v89, -v86, v88, 1.0
	v_fmac_f32_e32 v81, v91, v81
	v_fma_f32 v91, -v87, v92, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v29, v77, v82, v29
	v_fmac_f32_e32 v88, v89, v88
	v_div_fmas_f32 v78, v80, v78, v90
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s12, v48, v82, v48
	v_rcp_f32_e32 v80, v93
	v_div_scale_f32 v89, s9, v38, v82, v38
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v85, v91, v92
	v_mul_f32_e32 v76, v79, v81
	v_div_fixup_f32 v28, v78, v82, v28
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v83, v76, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v76, v84, v81
	v_fma_f32 v84, -v87, v85, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v83, v76, v79
	v_fma_f32 v79, -v93, v80, 1.0
	v_div_scale_f32 v83, null, v82, v82, v30
	v_fmac_f32_e32 v85, v84, v92
	v_div_fmas_f32 v76, v77, v81, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v79, v80
	v_rcp_f32_e32 v79, v83
	v_div_scale_f32 v84, s10, v36, v82, v36
	v_fma_f32 v77, -v87, v85, v91
	v_div_fixup_f32 v19, v76, v82, v19
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v87, null, v82, v82, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v77, v77, v92, v85
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v90, -v83, v79, 1.0
	v_mul_f32_e32 v78, v89, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v48, v77, v82, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v90, v79
	v_fma_f32 v81, -v86, v78, v89
	v_div_scale_f32 v90, null, v82, v82, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v81, v88
	v_rcp_f32_e32 v81, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v76, -v86, v78, v89
	v_div_scale_f32 v86, s11, v30, v82, v30
	v_div_fmas_f32 v76, v76, v88, v78
	v_rcp_f32_e32 v78, v90
	v_mul_f32_e32 v85, v84, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v87, v81, 1.0
	v_div_scale_f32 v88, s9, v18, v82, v18
	v_div_fixup_f32 v38, v76, v82, v38
	v_fma_f32 v77, -v93, v85, v84
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v77, v80
	v_mul_f32_e32 v77, v86, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v93, v85, v84
	v_fma_f32 v93, -v90, v78, 1.0
	v_fma_f32 v84, -v83, v77, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v76, v76, v80, v85
	v_fmac_f32_e32 v78, v93, v78
	v_fmac_f32_e32 v81, v89, v81
	v_div_scale_f32 v89, null, v82, v82, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v36, v76, v82, v36
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v91, v88, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v92, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v87, v91, v88
	v_fmac_f32_e32 v91, v80, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v89, v92, 1.0
	v_fmac_f32_e32 v77, v84, v79
	v_div_scale_f32 v84, s10, v16, v82, v16
	v_fmac_f32_e32 v92, v85, v92
	v_div_scale_f32 v85, null, v75, v75, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v83, v77, v86
	v_mul_f32_e32 v80, v84, v78
	v_div_scale_f32 v83, s12, v17, v82, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v86, v85
	v_div_fmas_f32 v76, v76, v79, v77
	v_fma_f32 v77, -v87, v91, v88
	v_fma_f32 v79, -v90, v80, v84
	v_mul_f32_e32 v87, v83, v92
	v_div_scale_f32 v88, null, v75, v75, v39
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v79, v78
	v_div_fmas_f32 v77, v77, v81, v91
	v_rcp_f32_e32 v79, v88
	v_fma_f32 v81, -v89, v87, v83
	v_fma_f32 v91, -v85, v86, 1.0
	v_div_fixup_f32 v30, v76, v82, v30
	v_div_fixup_f32 v18, v77, v82, v18
	v_fma_f32 v76, -v90, v80, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v87, v81, v92 :: v_dual_fmac_f32 v86, v91, v86
	v_div_scale_f32 v77, s9, v45, v75, v45
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v81, -v88, v79, 1.0
	v_div_scale_f32 v84, null, v75, v75, v32
	v_div_fmas_f32 v76, v76, v78, v80
	v_fma_f32 v78, -v89, v87, v83
	v_mul_f32_e32 v80, v77, v86
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v83, s10, v39, v75, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v78, v78, v92, v87
	v_fma_f32 v87, -v85, v80, v77
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v81, v84
	v_div_fixup_f32 v16, v76, v82, v16
	v_div_fixup_f32 v17, v78, v82, v17
	v_fmac_f32_e32 v80, v87, v86
	v_div_scale_f32 v82, null, v75, v75, v52
	v_div_scale_f32 v78, s11, v32, v75, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v85, v80, v77
	v_rcp_f32_e32 v85, v82
	v_mul_f32_e32 v90, v83, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v84, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v89, null, v75, v75, v33
	v_fma_f32 v76, -v88, v90, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v91, v81
	v_div_fmas_f32 v77, v77, v86, v80
	v_rcp_f32_e32 v92, v89
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v90, v76, v79
	v_mul_f32_e32 v76, v78, v81
	v_div_fixup_f32 v45, v77, v75, v45
	v_div_scale_f32 v91, null, v75, v75, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v88, v90, v83
	v_fma_f32 v83, -v84, v76, v78
	v_fma_f32 v88, -v82, v85, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v89, v92, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v80, v79, v90
	v_fmac_f32_e32 v76, v83, v81
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s9, v52, v75, v52
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v77, -v84, v76, v78
	v_rcp_f32_e32 v80, v91
	v_mul_f32_e32 v78, v88, v85
	v_div_fixup_f32 v39, v79, v75, v39
	v_div_scale_f32 v84, s10, v47, v75, v47
	v_div_fmas_f32 v76, v77, v81, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v81, -v82, v78, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v76, v75, v32
	v_fmac_f32_e32 v78, v81, v85
	v_fma_f32 v79, -v91, v80, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v82, v78, v88
	v_div_scale_f32 v82, s11, v40, v75, v40
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, s12, v33, v75, v33
	v_fmac_f32_e32 v80, v79, v80
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v86, v87, v92
	v_fma_f32 v83, -v89, v86, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v86, v83, v92
	v_div_scale_f32 v83, null, v75, v75, v40
	v_fma_f32 v77, -v89, v86, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v79, v83
	v_div_scale_f32 v87, null, v75, v75, v37
	v_div_fmas_f32 v77, v77, v92, v86
	v_mul_f32_e32 v86, v84, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v81, v87
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v33, v77, v75, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v83, v79, 1.0
	v_fma_f32 v77, -v91, v86, v84
	v_div_fmas_f32 v76, v76, v85, v78
	v_div_scale_f32 v85, s9, v37, v75, v37
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v75, v75, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v87, v81, 1.0
	v_dual_fmac_f32 v86, v77, v80 :: v_dual_mul_f32 v77, v82, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v78, v89
	v_div_fixup_f32 v52, v76, v75, v52
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, null, v75, v75, v58
	v_fma_f32 v76, -v91, v86, v84
	v_fma_f32 v84, -v83, v77, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v85, v81
	v_rcp_f32_e32 v91, v88
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v89, v78, 1.0
	v_div_fmas_f32 v76, v76, v80, v86
	v_fmac_f32_e32 v77, v84, v79
	v_fma_f32 v80, -v87, v90, v85
	v_div_scale_f32 v84, s10, v15, v75, v15
	v_fmac_f32_e32 v78, v92, v78
	v_div_fixup_f32 v47, v76, v75, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v88, v91, 1.0
	v_fma_f32 v76, -v83, v77, v82
	v_fmac_f32_e32 v90, v80, v81
	v_mul_f32_e32 v80, v84, v78
	v_div_scale_f32 v83, null, v75, v75, v51
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v82, s12, v58, v75, v58
	v_div_fmas_f32 v76, v76, v79, v77
	v_fma_f32 v77, -v87, v90, v85
	v_fma_f32 v79, -v89, v80, v84
	v_rcp_f32_e32 v85, v83
	v_div_scale_f32 v87, null, v75, v75, v50
	v_mul_f32_e32 v86, v82, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v78
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v79, v87
	v_div_fmas_f32 v77, v77, v81, v90
	v_fma_f32 v81, -v88, v86, v82
	v_div_fixup_f32 v40, v76, v75, v40
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v85, 1.0
	v_fma_f32 v76, -v89, v80, v84
	v_div_fixup_f32 v37, v77, v75, v37
	v_fmac_f32_e32 v86, v81, v91
	v_div_scale_f32 v77, s9, v51, v75, v51
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v81, -v87, v79, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, null, v75, v75, v42
	v_div_fmas_f32 v76, v76, v78, v80
	v_fma_f32 v78, -v88, v86, v82
	v_mul_f32_e32 v80, v77, v85
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v82, s10, v50, v75, v50
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v15, v76, v75, v15
	v_div_fmas_f32 v78, v78, v91, v86
	v_fma_f32 v86, -v83, v80, v77
	v_mul_f32_e32 v89, v82, v79
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v88, null, v75, v75, v14
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v76, -v87, v89, v82
	v_div_scale_f32 v92, null, v75, v75, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v77, -v83, v80, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v89, v76, v79
	v_fma_f32 v90, -v84, v81, 1.0
	v_div_scale_f32 v86, null, v75, v75, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v77, v77, v85, v80
	v_fma_f32 v80, -v87, v89, v82
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v58, v78, v75, v58
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v78, s11, v42, v75, v42
	v_div_fmas_f32 v79, v80, v79, v89
	v_rcp_f32_e32 v80, v92
	v_fma_f32 v90, -v88, v91, 1.0
	v_rcp_f32_e32 v83, v86
	v_div_fixup_f32 v51, v77, v75, v51
	v_div_fixup_f32 v50, v79, v75, v50
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s12, v14, v75, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v92, v80, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v85, v90, v91
	v_fma_f32 v87, -v86, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v79, v80
	v_mul_f32_e32 v76, v78, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s9, v13, v75, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v82, -v84, v76, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v76, v82, v81
	v_fma_f32 v82, -v88, v85, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v84, v76, v78
	v_fmac_f32_e32 v85, v82, v91
	v_mul_f32_e32 v78, v87, v83
	v_div_scale_f32 v82, null, v74, v74, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v76, v77, v81, v76
	v_fma_f32 v77, -v88, v85, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v86, v78, v87
	v_div_scale_f32 v88, null, v74, v74, v53
	v_div_scale_f32 v84, s10, v12, v75, v12
	v_fmac_f32_e32 v78, v81, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v81, v88
	s_mov_b32 vcc_lo, s12
	v_rcp_f32_e32 v79, v82
	v_div_fmas_f32 v77, v77, v91, v85
	v_mul_f32_e32 v85, v84, v80
	v_div_fixup_f32 v42, v76, v75, v42
	v_fma_f32 v76, -v86, v78, v87
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v14, v77, v75, v14
	v_fma_f32 v77, -v92, v85, v84
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_fmas_f32 v76, v76, v83, v78
	v_fma_f32 v89, -v82, v79, 1.0
	v_div_scale_f32 v86, s11, v56, v74, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v87, null, v74, v74, v44
	v_fmac_f32_e32 v85, v77, v80
	v_fmac_f32_e32 v79, v89, v79
	v_div_fixup_f32 v13, v76, v75, v13
	v_rcp_f32_e32 v91, v87
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v76, -v92, v85, v84
	v_mul_f32_e32 v77, v86, v79
	v_div_scale_f32 v83, s9, v53, v74, v53
	v_div_scale_f32 v89, null, v74, v74, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v76, v76, v80, v85
	v_fma_f32 v84, -v82, v77, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v87, v91, 1.0
	v_rcp_f32_e32 v78, v89
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v12, v76, v75, v12
	v_fmac_f32_e32 v77, v84, v79
	v_dual_fmac_f32 v91, v85, v91 :: v_dual_mul_f32 v90, v83, v81
	v_div_scale_f32 v84, s10, v43, v74, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v82, v77, v86
	v_div_scale_f32 v82, null, v74, v74, v67
	v_fma_f32 v80, -v88, v90, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v89, v78, 1.0
	v_div_fmas_f32 v75, v75, v79, v77
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v86, null, v74, v74, v60
	v_fmac_f32_e32 v90, v80, v81
	v_div_scale_f32 v80, s12, v44, v74, v44
	v_div_fixup_f32 v56, v75, v74, v56
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v88, v90, v83
	v_mul_f32_e32 v85, v80, v91
	v_rcp_f32_e32 v83, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v81, v90
	v_fma_f32 v81, -v87, v85, v80
	v_fmac_f32_e32 v78, v92, v78
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v53, v77, v74, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v85, v81, v91 :: v_dual_mul_f32 v76, v84, v78
	v_fma_f32 v88, -v82, v83, 1.0
	v_div_scale_f32 v77, s9, v67, v74, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v89, v76, v84
	v_fmac_f32_e32 v83, v88, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v76, v79, v78
	v_rcp_f32_e32 v79, v86
	v_fma_f32 v75, -v89, v76, v84
	v_div_scale_f32 v84, null, v74, v74, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v75, v75, v78, v76
	v_fma_f32 v81, -v86, v79, 1.0
	v_fma_f32 v76, -v87, v85, v80
	v_mul_f32_e32 v78, v77, v83
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v43, v75, v74, v43
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, s10, v60, v74, v60
	v_div_fmas_f32 v76, v76, v91, v85
	v_fma_f32 v85, -v82, v78, v77
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v88, v81, v79
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v91, null, v74, v74, v69
	v_fmac_f32_e32 v78, v85, v83
	v_fma_f32 v75, -v86, v88, v81
	v_div_scale_f32 v87, null, v74, v74, v54
	v_div_fixup_f32 v44, v76, v74, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v82, v78, v77
	v_fmac_f32_e32 v88, v75, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v84, v80, 1.0
	v_div_scale_f32 v76, s11, v55, v74, v55
	v_div_fmas_f32 v77, v77, v83, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v78, -v86, v88, v81
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v90, v87
	v_div_scale_f32 v85, null, v74, v74, v11
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v82, v85
	v_div_fixup_f32 v67, v77, v74, v67
	v_div_fixup_f32 v60, v78, v74, v60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v91, v79, 1.0
	v_fmac_f32_e32 v80, v89, v80
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v86, -v85, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v78, v79
	v_mul_f32_e32 v75, v76, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v84, v75, v76
	v_fmac_f32_e32 v75, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v84, v75, v76
	v_div_scale_f32 v84, s10, v69, v74, v69
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s12, v54, v74, v54
	v_div_fmas_f32 v75, v76, v80, v75
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v83, v89, v90
	v_div_fixup_f32 v55, v75, v74, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v87, v83, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v81, v90
	v_div_scale_f32 v81, null, v74, v74, v62
	v_fma_f32 v76, -v87, v83, v89
	v_div_scale_f32 v87, null, v74, v74, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v78, v81
	v_div_fmas_f32 v76, v76, v90, v83
	v_mul_f32_e32 v83, v84, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v54, v76, v74, v54
	v_fma_f32 v76, -v91, v83, v84
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s9, v11, v74, v11
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v76, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v88, -v81, v78, 1.0
	v_mul_f32_e32 v77, v86, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v85, v77, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v80, v82
	v_rcp_f32_e32 v80, v87
	v_fma_f32 v75, -v85, v77, v86
	v_div_scale_f32 v85, s11, v62, v74, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v75, v75, v82, v77
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_scale_f32 v82, s9, v61, v74, v61
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v11, v75, v74, v11
	v_fmac_f32_e32 v80, v86, v80
	v_fma_f32 v75, -v91, v83, v84
	v_div_scale_f32 v86, null, v74, v74, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v82, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v75, v75, v79, v83
	v_rcp_f32_e32 v90, v86
	v_div_scale_f32 v83, s10, v46, v74, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v87, v89, v82
	v_fmac_f32_e32 v78, v88, v78
	v_div_scale_f32 v88, null, v74, v74, v46
	v_div_fixup_f32 v69, v75, v74, v69
	v_fmac_f32_e32 v89, v79, v80
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v77, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v88, v77, 1.0
	v_dual_fmac_f32 v77, v91, v77 :: v_dual_mul_f32 v76, v85, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v79, v83, v77
	v_fma_f32 v84, -v81, v76, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v84, v78
	v_fma_f32 v84, -v86, v90, 1.0
	v_fma_f32 v75, -v81, v76, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v84, v90
	v_div_scale_f32 v81, s12, v10, v74, v10
	v_div_scale_f32 v84, null, v74, v74, v8
	v_div_fmas_f32 v75, v75, v78, v76
	v_fma_f32 v76, -v87, v89, v82
	v_fma_f32 v78, -v88, v79, v83
	v_mul_f32_e32 v85, v81, v90
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v87, null, v74, v74, v9
	v_div_fmas_f32 v76, v76, v80, v89
	v_fmac_f32_e32 v79, v78, v77
	v_fma_f32 v80, -v86, v85, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v78, v87
	v_div_fixup_f32 v62, v75, v74, v62
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v75, -v88, v79, v83
	v_fmac_f32_e32 v85, v80, v90
	v_div_scale_f32 v88, null, v73, v73, v63
	v_rcp_f32_e32 v82, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v75, v75, v77, v79
	v_fma_f32 v77, -v86, v85, v81
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v80, -v87, v78, 1.0
	v_div_scale_f32 v81, s10, v9, v74, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v77, v77, v90, v85
	v_div_fixup_f32 v46, v75, v74, v46
	v_div_fixup_f32 v61, v76, v74, v61
	v_fma_f32 v89, -v84, v82, 1.0
	v_div_scale_f32 v76, s9, v8, v74, v8
	v_div_fixup_f32 v10, v77, v74, v10
	v_rcp_f32_e32 v77, v88
	v_fmac_f32_e32 v78, v80, v78
	v_div_scale_f32 v80, null, v73, v73, v64
	v_div_scale_f32 v90, null, v73, v73, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v86, v81, v78
	v_rcp_f32_e32 v83, v80
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v92, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v87, v86, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v75, v78
	v_div_scale_f32 v75, s11, v64, v73, v64
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v89, -v88, v77, 1.0
	v_mul_f32_e32 v79, v76, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v77, v89, v77
	v_fma_f32 v85, -v84, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v79, v85, v82
	v_fma_f32 v85, -v80, v83, 1.0
	v_fma_f32 v76, -v84, v79, v76
	v_div_scale_f32 v84, null, v73, v73, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v85, v83
	v_div_fmas_f32 v76, v76, v82, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v84
	v_fma_f32 v79, -v87, v86, v81
	v_mul_f32_e32 v81, v75, v83
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v8, v76, v74, v8
	v_fma_f32 v76, -v90, v92, 1.0
	v_div_scale_f32 v82, s9, v63, v73, v63
	v_fma_f32 v89, -v80, v81, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v84, v85, 1.0
	v_fmac_f32_e32 v92, v76, v92
	v_div_scale_f32 v76, s10, v57, v73, v57
	v_fmac_f32_e32 v81, v89, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s12, v59, v73, v59
	v_div_fmas_f32 v78, v79, v78, v86
	v_mul_f32_e32 v91, v82, v77
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v9, v78, v74, v9
	v_fma_f32 v74, -v80, v81, v75
	v_mul_f32_e32 v80, v76, v92
	v_mul_f32_e32 v86, v87, v85
	v_fma_f32 v79, -v88, v91, v82
	v_div_scale_f32 v78, null, v73, v73, v72
	v_div_fmas_f32 v74, v74, v83, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v84, v86, v87
	v_fmac_f32_e32 v91, v79, v77
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v81, null, v73, v73, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v86, v75, v85
	v_rcp_f32_e32 v75, v78
	v_fma_f32 v79, -v88, v91, v82
	v_div_fixup_f32 v64, v74, v73, v64
	v_rcp_f32_e32 v83, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v79, v77, v91
	v_fma_f32 v79, -v84, v86, v87
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v84, -v90, v80, v76
	v_fma_f32 v82, -v78, v75, 1.0
	v_div_fixup_f32 v63, v77, v73, v63
	v_div_fmas_f32 v79, v79, v85, v86
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v80, v84, v92 :: v_dual_fmac_f32 v75, v82, v75
	v_div_scale_f32 v82, s9, v72, v73, v72
	v_div_fixup_f32 v59, v79, v73, v59
	v_div_scale_f32 v79, null, v73, v73, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v74, v82, v75
	v_fma_f32 v76, -v90, v80, v76
	v_fma_f32 v77, -v81, v83, 1.0
	v_rcp_f32_e32 v85, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v78, v74, v82
	v_div_fmas_f32 v76, v76, v92, v80
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v74, v84, v75
	v_div_scale_f32 v84, null, v73, v73, v65
	v_div_fixup_f32 v57, v76, v73, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v78, v74, v82
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v82, v85
	v_div_fmas_f32 v74, v76, v75, v74
	v_div_scale_f32 v82, null, v73, v73, v71
	v_div_scale_f32 v76, s9, v66, v73, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v72, v74, v73, v72
	v_fma_f32 v74, -v84, v86, 1.0
	v_fmac_f32_e32 v83, v77, v83
	v_div_scale_f32 v77, s11, v70, v73, v70
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v74, v86
	v_div_scale_f32 v75, null, v73, v73, v7
	v_mul_f32_e32 v80, v77, v83
	v_div_scale_f32 v74, s10, v65, v73, v65
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, s11, v7, v73, v7
	v_fma_f32 v78, -v81, v80, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v90, -v82, v88, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v90, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v75
	v_div_scale_f32 v90, s12, v71, v73, v71
	v_fma_f32 v77, -v81, v80, v77
	v_mul_f32_e32 v81, v76, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v77, v77, v83, v80
	v_fma_f32 v87, -v75, v78, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v80, -v79, v81, v76
	v_mul_f32_e32 v83, v74, v86
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v70, v77, v73, v70
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v73, v73, v68
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v89, v78
	v_rcp_f32_e32 v91, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v79, v81, v76
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v77, -v75, v92, v89
	v_mul_f32_e32 v79, v90, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v76, v76, v85, v81
	v_fma_f32 v74, -v84, v83, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v92, v77, v78
	v_fma_f32 v77, -v82, v79, v90
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v81, null, v73, v73, v49
	v_fma_f32 v75, -v75, v92, v89
	v_fmac_f32_e32 v79, v77, v88
	v_div_fmas_f32 v74, v74, v86, v83
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s9, v68, v73, v68
	v_div_fmas_f32 v75, v75, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v77, v80, v91
	v_rcp_f32_e32 v83, v81
	v_div_fixup_f32 v66, v76, v73, v66
	v_div_fmas_f32 v78, v78, v88, v79
	v_div_fixup_f32 v65, v74, v73, v65
	v_fma_f32 v82, -v87, v77, v80
	v_div_fixup_f32 v7, v75, v73, v7
	v_div_scale_f32 v75, null, v73, v73, v41
	v_div_fixup_f32 v71, v78, v73, v71
	v_div_scale_f32 v78, null, v73, v73, v5
	v_fmac_f32_e32 v77, v82, v91
	v_fma_f32 v76, -v81, v83, 1.0
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v82, v78
	v_div_scale_f32 v85, null, v73, v73, v6
	v_fmac_f32_e32 v83, v76, v83
	v_div_scale_f32 v76, null, v73, v73, v4
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v78, v82, 1.0
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v74, -v87, v77, v80
	v_rcp_f32_e32 v80, v76
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v89, s11, v5, v73, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v74, v74, v91, v77
	v_rcp_f32_e32 v77, v75
	v_div_scale_f32 v79, vcc_lo, v49, v73, v49
	v_mul_f32_e32 v93, v89, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v68, v74, v73, v68
	v_fma_f32 v86, -v76, v80, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v85, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s10, v4, v73, v4
	v_fma_f32 v74, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v92, v86, v80
	v_dual_mul_f32 v84, v79, v83 :: v_dual_fmac_f32 v77, v74, v77
	v_div_scale_f32 v74, s9, v41, v73, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v88, -v81, v84, v79
	v_mul_f32_e32 v90, v74, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v84, v88, v83
	v_fma_f32 v88, -v75, v90, v74
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v79, -v81, v84, v79
	v_fma_f32 v81, -v76, v92, v86
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s12, v6, v73, v6
	v_fmac_f32_e32 v90, v88, v77
	v_fma_f32 v88, -v78, v93, v89
	v_fmac_f32_e32 v92, v81, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v94, v91, v87
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_fma_f32 v74, -v75, v90, v74
	v_fmac_f32_e32 v93, v88, v82
	v_fma_f32 v75, -v85, v94, v91
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v7, v7, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v76, v92, v86
	v_div_fmas_f32 v74, v74, v77, v90
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v75, v87
	v_fma_f32 v75, -v78, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v89, v7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v80, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v7, 15, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v85, v94, v91
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v82, v93
	s_mov_b32 vcc_lo, s12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v87, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v15, v15, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v5, v75, v73, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v77, v73, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s9, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v75, v15
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v49, v79, v73, v49
	v_div_fixup_f32 v41, v74, v73, v41
	v_div_fixup_f32 v4, v76, v73, v4
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_med3_f32 v6, v6, s9, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v74, v17
	v_cvt_i32_f32_e32 v84, v8
	v_and_b32_e32 v8, 15, v35
	v_cvt_i32_f32_e32 v95, v6
	v_and_b32_e32 v35, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v75, 16, v96
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v6, 15, v20
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v20, 10, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_cvt_i32_f32_e32 v78, v12
	v_and_b32_e32 v12, 15, v19
	v_and_b32_e32 v19, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v20, 0x1800, v20
	v_lshlrev_b32_e32 v22, 6, v75
	v_lshlrev_b32_e32 v74, 6, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v10, v10, s9, 0x40e00000
	v_med3_f32 v9, v9, s9, 0x40e00000
	v_med3_f32 v4, v4, s9, 0x40e00000
	v_med3_f32 v5, v5, s9, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v76, v14
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v79, v43
	v_cvt_i32_f32_e32 v80, v44
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v86, v59
	v_cvt_i32_f32_e32 v87, v57
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v20, 0, v20, v22
	v_and_or_b32 v22, 0x1b00, v74, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v73, v16
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v81, v11
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v90, v68
	v_cvt_i32_f32_e32 v91, v49
	v_cvt_i32_f32_e32 v77, v13
	v_cvt_i32_f32_e32 v82, v46
	v_cvt_i32_f32_e32 v83, v10
	v_cvt_i32_f32_e32 v85, v9
	v_cvt_i32_f32_e32 v93, v4
	v_cvt_i32_f32_e32 v94, v5
	v_and_b32_e32 v4, 15, v31
	v_and_b32_e32 v5, 15, v27
	v_and_b32_e32 v9, 15, v34
	v_and_b32_e32 v10, 15, v29
	v_and_b32_e32 v11, 15, v28
	v_and_b32_e32 v13, 15, v48
	v_and_b32_e32 v14, 15, v38
	v_and_b32_e32 v16, 15, v30
	v_and_b32_e32 v27, 15, v45
	v_and_b32_e32 v28, 15, v39
	v_and_b32_e32 v29, 15, v32
	v_and_b32_e32 v30, 15, v33
	v_and_b32_e32 v33, 15, v40
	v_and_b32_e32 v38, 15, v50
	v_and_b32_e32 v40, 15, v76
	v_and_b32_e32 v43, 15, v56
	v_and_b32_e32 v44, 15, v53
	v_and_b32_e32 v45, 15, v79
	v_and_b32_e32 v46, 15, v80
	v_and_b32_e32 v48, 15, v60
	v_and_b32_e32 v50, 15, v54
	v_and_b32_e32 v53, 15, v62
	v_and_b32_e32 v54, 15, v61
	v_and_b32_e32 v59, 15, v64
	v_and_b32_e32 v60, 15, v63
	v_and_b32_e32 v61, 15, v86
	v_and_b32_e32 v62, 15, v87
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v20, v20, v25, v24
	v_xad_u32 v76, v22, v99, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v15, 15, v36
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v73
	v_and_b32_e32 v31, 15, v52
	v_and_b32_e32 v32, 15, v47
	v_and_b32_e32 v34, 15, v37
	v_and_b32_e32 v36, 15, v58
	v_and_b32_e32 v37, 15, v51
	v_and_b32_e32 v47, 15, v67
	v_and_b32_e32 v51, 15, v81
	v_and_b32_e32 v52, 15, v69
	v_and_b32_e32 v64, 15, v70
	v_and_b32_e32 v67, 15, v89
	v_and_b32_e32 v68, 15, v71
	v_and_b32_e32 v69, 15, v90
	v_and_b32_e32 v70, 15, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s9, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v20, v[4:7]
	ds_store_b128 v20, v[12:15] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v76
	ds_load_b128 v[12:15], v76 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v20, v[27:30]
	ds_store_b128 v20, v[35:38] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v76
	ds_load_b128 v[27:30], v76 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v20, v[43:46]
	ds_store_b128 v20, v[51:54] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v76
	ds_load_b128 v[43:46], v76 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v20, v[59:62]
	ds_store_b128 v20, v[67:70] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v76
	ds_load_b128 v[59:62], v76 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v20, v[8:11]
	ds_store_b128 v20, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v76
	ds_load_b128 v[16:19], v76 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v92, v41
	v_and_b32_e32 v39, 15, v42
	v_and_b32_e32 v41, 15, v77
	v_and_b32_e32 v42, 15, v78
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v88, v65
	v_and_b32_e32 v49, 15, v55
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v20, v[31:34]
	ds_store_b128 v20, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v76
	ds_load_b128 v[39:42], v76 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v55, 15, v82
	v_and_b32_e32 v56, 15, v83
	v_and_b32_e32 v57, 15, v84
	v_and_b32_e32 v58, 15, v85
	v_and_b32_e32 v63, 15, v72
	v_and_b32_e32 v65, 15, v66
	v_and_b32_e32 v66, 15, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v20, v[47:50]
	ds_store_b128 v20, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v76
	ds_load_b128 v[55:58], v76 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v71, 15, v92
	v_and_b32_e32 v72, 15, v93
	v_and_b32_e32 v73, 15, v94
	v_and_b32_e32 v74, 15, v95
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	v_lshl_or_b32 v15, v17, 4, v9
	v_lshl_or_b32 v17, v19, 4, v11
	v_lshl_or_b32 v19, v28, 4, v23
	v_lshl_or_b32 v28, v43, 4, v35
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v98
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s24, v21
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v20, v[63:66]
	ds_store_b128 v20, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v76
	ds_load_b128 v[67:70], v76 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v12, v12, 4, v4
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v4, s31, 7, v43
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 16, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v16, 4, v8
	v_lshl_or_b32 v16, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 32, v7
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s9, v[4:5]
	v_mad_u64_u32 v[8:9], null, v9, s9, v[4:5]
	v_mad_u64_u32 v[9:10], null, v10, s9, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v18, v27, 4, v22
	v_lshl_or_b32 v20, v29, 4, v24
	v_lshl_or_b32 v22, v30, 4, v25
	v_lshl_or_b32 v23, v39, 4, v31
	v_lshl_or_b32 v24, v40, 4, v32
	v_lshl_or_b32 v25, v41, 4, v33
	v_lshl_or_b32 v27, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s9, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v13.l
	v_and_b16 v1.l, 0xff, v6.l
	v_lshlrev_b16 v2.l, 8, v5.l
	v_and_b16 v4.l, 0xff, v12.l
	v_lshlrev_b16 v4.h, 8, v17.l
	v_and_b16 v5.l, 0xff, v16.l
	v_lshlrev_b16 v5.h, 8, v15.l
	v_and_b16 v6.l, 0xff, v14.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v55, 4, v47
	v_lshl_or_b32 v33, v56, 4, v48
	v_lshl_or_b32 v34, v57, 4, v49
	v_lshl_or_b32 v35, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v1.l, v0.l
	v_or_b16 v11.l, v4.l, v2.l
	v_or_b16 v12.h, v5.l, v4.h
	v_or_b16 v12.l, v6.l, v5.h
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v4.h, 8, v27.l
	v_and_b16 v5.l, 0xff, v25.l
	v_lshlrev_b16 v5.h, 8, v24.l
	v_and_b16 v6.l, 0xff, v23.l
	s_mov_b32 s12, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v44, 4, v36
	v_lshl_or_b32 v30, v45, 4, v37
	v_lshl_or_b32 v31, v46, 4, v38
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v40, v67, 4, v63
	v_lshl_or_b32 v41, v68, 4, v64
	v_lshl_or_b32 v42, v69, 4, v65
	v_lshl_or_b32 v21, v70, 4, v66
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v22.l
	v_and_b16 v1.l, 0xff, v20.l
	v_lshlrev_b16 v2.l, 8, v19.l
	v_and_b16 v4.l, 0xff, v18.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v12.h, v5.l, v4.h
	v_or_b16 v12.l, v6.l, v5.h
	v_lshlrev_b16 v4.h, 8, v35.l
	v_and_b16 v5.l, 0xff, v34.l
	v_lshlrev_b16 v5.h, 8, v33.l
	v_and_b16 v6.l, 0xff, v32.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v59, 4, v51
	v_lshl_or_b32 v37, v60, 4, v52
	v_lshl_or_b32 v38, v61, 4, v53
	v_lshl_or_b32 v39, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v1.l, v0.l
	v_or_b16 v11.l, v4.l, v2.l
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v0.l, 8, v31.l
	v_and_b16 v1.l, 0xff, v30.l
	v_lshlrev_b16 v2.l, 8, v29.l
	v_and_b16 v4.l, 0xff, v28.l
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.l, v5.h
	v_lshlrev_b16 v4.h, 8, v21.l
	v_and_b16 v5.l, 0xff, v42.l
	v_lshlrev_b16 v5.h, 8, v41.l
	v_and_b16 v6.l, 0xff, v40.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v7.h, v1.l, v0.l
	v_or_b16 v7.l, v4.l, v2.l
	v_lshlrev_b16 v0.l, 8, v39.l
	v_and_b16 v1.l, 0xff, v38.l
	v_lshlrev_b16 v2.l, 8, v37.l
	v_and_b16 v4.l, 0xff, v36.l
	v_or_b16 v12.h, v5.l, v4.h
	v_or_b16 v12.l, v6.l, v5.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v96
	v_lshrrev_b32_e32 v6, 2, v75
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v1.l, v0.l
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.l, v4.l, v2.l
	v_dual_cndmask_b32 v4, 0x80000000, v10 :: v_dual_and_b32 v5, 2, v5
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[12:15], 0 offen
	buffer_store_b64 v[11:12], v4, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v43
	v_mov_b16_e32 v2.l, v26.h
	v_mov_b16_e32 v1.l, v0.h
	v_add3_u32 v0, v6, v5, v43
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v97
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v1, v1, s31, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp59:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 652
		.amdhsa_kernarg_size 120
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 43
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 652
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 33220
; TotalNumSgprs: 45
; NumVgprs: 256
; ScratchSize: 652
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
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
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 652
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 162
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
