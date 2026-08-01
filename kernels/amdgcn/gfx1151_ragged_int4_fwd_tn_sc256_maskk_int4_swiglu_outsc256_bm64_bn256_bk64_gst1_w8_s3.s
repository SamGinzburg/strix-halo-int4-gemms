	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
	v_mov_b32_e32 v219, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v89, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s74, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s5, s35, s4
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
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v219
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	s_sub_i32 s75, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s75, s5
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
	s_load_b64 s[68:69], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[70:71], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s34, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s68, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s2
	v_add_nc_u32_e32 v198, s68, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v166, 7, v219
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[1:2]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s68, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow797
	s_load_b128 s[64:67], s[0:1], 0x40
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v107, 15, v219
	v_or_b32_e32 v167, 2, v166
	v_or_b32_e32 v168, 4, v166
	v_or_b32_e32 v169, 6, v166
	v_or_b32_e32 v163, 8, v166
	v_or_b32_e32 v164, 10, v166
	v_or_b32_e32 v173, 12, v166
	v_or_b32_e32 v174, 14, v166
	v_or_b32_e32 v241, 16, v166
	v_or_b32_e32 v177, 18, v166
	v_or_b32_e32 v180, 20, v166
	v_or_b32_e32 v181, 22, v166
	v_or_b32_e32 v182, 24, v166
	v_or_b32_e32 v247, 26, v166
	v_or_b32_e32 v248, 28, v166
	v_or_b32_e32 v186, 30, v166
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v108, 0x7f, v219
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v227, 0
	v_mov_b32_e32 v222, 0
	v_mov_b32_e32 v224, 0
	v_mov_b32_e32 v226, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s76, s2, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s19, s[0:1], 0x58
	s_load_b32 s33, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s68, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s0
	v_dual_mov_b32 v233, 0 :: v_dual_add_nc_u32 v176, 0, v107
	v_add_co_u32 v2, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s2, s4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[72:73], v[0:1]
	v_dual_mov_b32 v235, 0 :: v_dual_add_nc_u32 v0, s68, v107
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_addc_u32 s1, s3, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[2:3]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[16:17], s[0:1], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[2:3]
	v_dual_mov_b32 v236, 0 :: v_dual_add_nc_u32 v1, 16, v0
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s34
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s7, s75, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[70:71], v[4:5]
	v_or_b32_e32 v8, s7, v219
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[4:5]
	v_dual_mov_b32 v234, 0 :: v_dual_lshlrev_b32 v5, 5, v219
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[70:71], v[6:7]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:772
	scratch_store_b32 off, v186, off offset:256
	v_mul_lo_u32 v0, v1, s34
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[6:7]
	v_dual_mov_b32 v232, 0 :: v_dual_lshlrev_b32 v7, 1, v219
	v_dual_mov_b32 v230, 0 :: v_dual_and_b32 v5, 32, v5
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s35, s74, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s3
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:776
	scratch_store_b32 off, v107, off offset:800
	v_mul_lo_u32 v0, v2, s34
	scratch_store_b32 off, v108, off offset:804 ; 4-byte Folded Spill
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s3, s35, s19
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v191, v108, 1, s7
	v_dual_mov_b32 v231, 0 :: v_dual_add_nc_u32 v240, 0, v219
	v_mov_b32_e32 v87, 0
	v_or_b32_e32 v1, 0x300, v219
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:780 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s34
	v_mov_b32_e32 v221, 0
	v_or_b32_e32 v2, 0x700, v219
	v_or_b32_e32 v3, 0x3f0, v219
	v_or_b32_e32 v4, 0x7f0, v219
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v7, 28, v7
	v_mov_b32_e32 v171, 0
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v0, 1, v219
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s40, s3, s16
	v_dual_mov_b32 v228, 0 :: v_dual_add_nc_u32 v175, 0, v1
	s_add_u32 s43, s40, s74
	v_and_b32_e32 v0, 0x70, v0
	v_add3_u32 v179, s43, v191, 1
	v_dual_mov_b32 v220, 0 :: v_dual_add_nc_u32 v183, 0, v2
	v_dual_mov_b32 v226, 0 :: v_dual_add_nc_u32 v249, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v229, 0 :: v_dual_add_nc_u32 v178, v176, v0
	v_and_b32_e32 v0, 0xf0, v219
	v_dual_mov_b32 v225, 0 :: v_dual_add_nc_u32 v250, 0, v4
	v_dual_mov_b32 v223, 0 :: v_dual_add_nc_u32 v184, v240, v219
	v_lshlrev_b32_e32 v6, 2, v0
	v_dual_mov_b32 v227, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	v_mov_b32_e32 v224, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v215, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, 0, v6, v5
	v_dual_mov_b32 v217, 0 :: v_dual_add_nc_u32 v0, 0, v0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v213, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v216, 0 :: v_dual_add_nc_u32 v1, v5, v7
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v102, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	s_and_b32 s1, s1, s4
	s_and_b32 s2, s5, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s41, s34, s16
	.loc	1 1135 13                       ; ragged.py:1135:13
	s_mov_b32 s42, 0
	s_and_b32 s37, s11, 0xffff
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	s_and_b32 s25, s15, 0xffff
	s_mov_b32 s24, s14
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s36, s10
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v8, off offset:788
	scratch_store_b32 off, v1, off offset:792
	scratch_store_b32 off, v0, off offset:796
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v236, off offset:768
	scratch_store_b32 off, v235, off offset:764
	scratch_store_b32 off, v84, off offset:760
	scratch_store_b32 off, v234, off offset:756
	scratch_store_b32 off, v85, off offset:752
	scratch_store_b32 off, v233, off offset:748
	scratch_store_b32 off, v232, off offset:744
	scratch_store_b32 off, v231, off offset:740
	scratch_store_b32 off, v230, off offset:736
	scratch_store_b32 off, v86, off offset:732
	scratch_store_b32 off, v87, off offset:728
	scratch_store_b32 off, v229, off offset:724
	scratch_store_b32 off, v228, off offset:720
	scratch_store_b32 off, v227, off offset:716
	scratch_store_b32 off, v226, off offset:712
	scratch_store_b32 off, v225, off offset:708
	scratch_store_b32 off, v224, off offset:704
	scratch_store_b32 off, v223, off offset:700
	scratch_store_b32 off, v222, off offset:696
	scratch_store_b32 off, v221, off offset:692
	scratch_store_b32 off, v220, off offset:688
	scratch_store_b32 off, v171, off offset:684
	scratch_store_b32 off, v218, off offset:680
	scratch_store_b32 off, v217, off offset:676
	scratch_store_b32 off, v216, off offset:672
	scratch_store_b32 off, v215, off offset:668
	scratch_store_b32 off, v214, off offset:664
	scratch_store_b32 off, v213, off offset:660
	scratch_store_b32 off, v212, off offset:656
	scratch_store_b32 off, v211, off offset:652
	scratch_store_b32 off, v210, off offset:648
	scratch_store_b32 off, v209, off offset:644
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v208, off offset:640
	scratch_store_b32 off, v207, off offset:636
	scratch_store_b32 off, v206, off offset:632
	scratch_store_b32 off, v205, off offset:628
	scratch_store_b32 off, v204, off offset:624
	scratch_store_b32 off, v203, off offset:620
	scratch_store_b32 off, v202, off offset:616
	scratch_store_b32 off, v201, off offset:612
	scratch_store_b32 off, v200, off offset:608
	scratch_store_b32 off, v197, off offset:604
	scratch_store_b32 off, v196, off offset:600
	scratch_store_b32 off, v185, off offset:596
	scratch_store_b32 off, v161, off offset:592
	scratch_store_b32 off, v195, off offset:588
	scratch_store_b32 off, v194, off offset:584
	scratch_store_b32 off, v193, off offset:580
	scratch_store_b32 off, v192, off offset:576
	scratch_store_b32 off, v190, off offset:572
	scratch_store_b32 off, v189, off offset:568
	scratch_store_b32 off, v188, off offset:564
	scratch_store_b32 off, v172, off offset:560
	scratch_store_b32 off, v170, off offset:556
	scratch_store_b32 off, v165, off offset:552
	scratch_store_b32 off, v162, off offset:548
	scratch_store_b32 off, v160, off offset:544
	scratch_store_b32 off, v159, off offset:540
	scratch_store_b32 off, v158, off offset:536
	scratch_store_b32 off, v157, off offset:532
	scratch_store_b32 off, v187, off offset:528
	scratch_store_b32 off, v156, off offset:524
	scratch_store_b32 off, v155, off offset:520
	scratch_store_b32 off, v154, off offset:516
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v149, off offset:512
	scratch_store_b32 off, v148, off offset:508
	scratch_store_b32 off, v147, off offset:504
	scratch_store_b32 off, v146, off offset:500
	scratch_store_b32 off, v145, off offset:496
	scratch_store_b32 off, v144, off offset:492
	scratch_store_b32 off, v143, off offset:488
	scratch_store_b32 off, v142, off offset:484
	scratch_store_b32 off, v141, off offset:480
	scratch_store_b32 off, v140, off offset:476
	scratch_store_b32 off, v139, off offset:472
	scratch_store_b32 off, v138, off offset:468
	scratch_store_b32 off, v137, off offset:464
	scratch_store_b32 off, v136, off offset:460
	scratch_store_b32 off, v135, off offset:456
	scratch_store_b32 off, v134, off offset:452
	scratch_store_b32 off, v133, off offset:448
	scratch_store_b32 off, v132, off offset:444
	scratch_store_b32 off, v131, off offset:440
	scratch_store_b32 off, v130, off offset:436
	scratch_store_b32 off, v153, off offset:432
	scratch_store_b32 off, v152, off offset:428
	scratch_store_b32 off, v151, off offset:424
	scratch_store_b32 off, v150, off offset:420
	scratch_store_b32 off, v129, off offset:416
	scratch_store_b32 off, v128, off offset:412
	scratch_store_b32 off, v127, off offset:408
	scratch_store_b32 off, v126, off offset:404
	scratch_store_b32 off, v125, off offset:400
	scratch_store_b32 off, v124, off offset:396
	scratch_store_b32 off, v123, off offset:392
	scratch_store_b32 off, v122, off offset:388
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v121, off offset:384
	scratch_store_b32 off, v120, off offset:380
	scratch_store_b32 off, v106, off offset:376
	scratch_store_b32 off, v105, off offset:372
	scratch_store_b32 off, v104, off offset:368
	scratch_store_b32 off, v115, off offset:364
	scratch_store_b32 off, v114, off offset:360
	scratch_store_b32 off, v113, off offset:356
	scratch_store_b32 off, v103, off offset:352
	scratch_store_b32 off, v99, off offset:348
	scratch_store_b32 off, v98, off offset:344
	scratch_store_b32 off, v97, off offset:340
	scratch_store_b32 off, v119, off offset:336
	scratch_store_b32 off, v118, off offset:332
	scratch_store_b32 off, v117, off offset:328
	scratch_store_b32 off, v116, off offset:324
	scratch_store_b32 off, v96, off offset:320
	scratch_store_b32 off, v88, off offset:316
	scratch_store_b32 off, v95, off offset:312
	scratch_store_b32 off, v94, off offset:308
	scratch_store_b32 off, v112, off offset:304
	scratch_store_b32 off, v111, off offset:300
	scratch_store_b32 off, v110, off offset:296
	scratch_store_b32 off, v93, off offset:292
	scratch_store_b32 off, v92, off offset:288
	scratch_store_b32 off, v91, off offset:284
	scratch_store_b32 off, v90, off offset:280
	scratch_store_b32 off, v109, off offset:276
	scratch_store_b32 off, v102, off offset:272
	scratch_store_b32 off, v101, off offset:268
	scratch_store_b32 off, v100, off offset:264
	scratch_store_b32 off, v89, off offset:260
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s26, s42, 7
	s_mov_b32 s27, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, v0
	v_mov_b32_e32 v3, v0
	v_dual_mov_b32 v4, v0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v5, v0
	v_dual_mov_b32 v6, v0 :: v_dual_mov_b32 v25, 0
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
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v0, 6, v219
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s44, s27, s26
	v_dual_mov_b32 v211, v163 :: v_dual_mov_b32 v194, v241
	v_mov_b32_e32 v202, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v0, s44, v0
	v_mov_b32_e32 v215, v248
	v_mov_b32_e32 v209, v247
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v0, s33, v[198:199]
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s19, v0
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v131, 0x80000000, v129, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v129, 4, v0
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s19, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s33, v[198:199]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v132, 0x80000000, v129, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v129, 8, v0
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s19, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s33, v[198:199]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v133, 0x80000000, v129, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v129, 12, v0
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s19, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s33, v[198:199]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v134, 0x80000000, v129, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v129, 16, v0
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s19, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s33, v[198:199]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v135, 0x80000000, v129, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v129, 20, v0
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s19, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s33, v[198:199]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v136, 0x80000000, v129, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v129, 24, v0
	v_or_b32_e32 v0, 28, v0
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s19, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s33, v[198:199]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v137, 0x80000000, v129, s3
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v0, s33, v[198:199]
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v166
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s19, v0
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v142, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s18, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v167
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v129, 0x80000000, v129, s3
	.loc	1 1153 59 is_stmt 1             ; ragged.py:1153:59
	v_mul_lo_u32 v243, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s17, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v168
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v0, v142, v191
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v138, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s16, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v169
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v253, v243, v191
	v_add_nc_u32_e32 v139, s40, v0
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, s43, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v255, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s15, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v163
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v254, v138, v191
	v_add_nc_u32_e32 v140, s40, v253
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s18
	v_mov_b32_e32 v163, v181
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v244, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s14, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v164
	v_dual_mov_b32 v164, v182 :: v_dual_add_nc_u32 v171, v255, v191
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v141, s40, v254
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v220, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s13, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v173
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v246, v244, v191
	v_add_nc_u32_e32 v143, s40, v171
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v203, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s12, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v174
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v196, v220, v191
	v_add_nc_u32_e32 v144, s40, v246
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v201, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s11, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v241
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v197, v203, v191
	v_add_nc_u32_e32 v145, s40, v196
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v200, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s10, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v177
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v252, v201, v191
	v_add_nc_u32_e32 v146, s40, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v212, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s9, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v180
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v213, v200, v191
	v_add_nc_u32_e32 v147, s40, v252
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v195, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s8, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v181
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v148, s40, v213
	v_add_nc_u32_e32 v232, v212, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v207, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s7, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v182
	v_dual_mov_b32 v182, v168 :: v_dual_add_nc_u32 v233, v195, v191
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v149, s40, v232
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v205, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s6, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v247
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v234, v207, v191
	v_add_nc_u32_e32 v150, s40, v233
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v204, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s5, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s44, v248
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v206, v205, v191
	v_add_nc_u32_e32 v151, s40, v234
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v187, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s4, s19, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v130, s44, v186
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v161, v204, v191
	v_add_nc_u32_e32 v152, s40, v206
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v186, v130, s35
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s19, v130
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v130, v131, s[28:31], 0 offen
	buffer_load_u8 v131, v132, s[28:31], 0 offen
	buffer_load_u8 v132, v133, s[28:31], 0 offen
	buffer_load_u8 v133, v135, s[28:31], 0 offen
	buffer_load_u8 v135, v136, s[28:31], 0 offen
	buffer_load_u8 v136, v137, s[28:31], 0 offen
	buffer_load_u8 v137, v129, s[28:31], 0 offen
	buffer_load_u8 v134, v134, s[28:31], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v188, v187, v191
	v_add_nc_u32_e32 v153, s40, v161
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v129, 0x80000000, v139, s18
	v_cndmask_b32_e64 v139, 0x80000000, v140, s17
	v_cndmask_b32_e64 v140, 0x80000000, v141, s16
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v231, v186, v191
	v_add_nc_u32_e32 v154, s40, v188
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v141, 0x80000000, v143, s15
	v_cndmask_b32_e64 v143, 0x80000000, v144, s14
	v_cndmask_b32_e64 v144, 0x80000000, v145, s13
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v155, s40, v231
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v145, 0x80000000, v146, s12
	v_cndmask_b32_e64 v146, 0x80000000, v147, s11
	v_cndmask_b32_e64 v147, 0x80000000, v148, s10
	v_cndmask_b32_e64 v148, 0x80000000, v149, s9
	v_cndmask_b32_e64 v149, 0x80000000, v150, s8
	v_cndmask_b32_e64 v150, 0x80000000, v151, s7
	v_cndmask_b32_e64 v151, 0x80000000, v152, s6
	v_cndmask_b32_e64 v152, 0x80000000, v153, s5
	v_cndmask_b32_e64 v153, 0x80000000, v154, s4
	v_cndmask_b32_e64 v154, 0x80000000, v155, s3
	s_clause 0xf
	buffer_load_u16 v129, v129, s[36:39], 0 offen
	buffer_load_u16 v222, v139, s[36:39], 0 offen
	buffer_load_u16 v216, v140, s[36:39], 0 offen
	buffer_load_u16 v217, v141, s[36:39], 0 offen
	buffer_load_u16 v228, v143, s[36:39], 0 offen
	buffer_load_u16 v229, v144, s[36:39], 0 offen
	buffer_load_u16 v230, v145, s[36:39], 0 offen
	buffer_load_u16 v218, v146, s[36:39], 0 offen
	buffer_load_u16 v223, v147, s[36:39], 0 offen
	buffer_load_u16 v224, v148, s[36:39], 0 offen
	buffer_load_u16 v236, v149, s[36:39], 0 offen
	buffer_load_u16 v237, v150, s[36:39], 0 offen
	buffer_load_u16 v225, v151, s[36:39], 0 offen
	buffer_load_u16 v238, v152, s[36:39], 0 offen
	buffer_load_u16 v239, v153, s[36:39], 0 offen
	buffer_load_u16 v226, v154, s[36:39], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(23)
	ds_store_b8 v240, v130
	s_waitcnt vmcnt(22)
	ds_store_b8 v240, v131 offset:256
	s_waitcnt vmcnt(21)
	ds_store_b8 v240, v132 offset:512
	s_waitcnt vmcnt(20)
	ds_store_b8 v240, v133 offset:1024
	s_waitcnt vmcnt(19)
	ds_store_b8 v240, v135 offset:1280
	s_waitcnt vmcnt(16)
	ds_store_b8 v175, v134
	ds_store_b8 v240, v136 offset:1536
	ds_store_b8 v183, v137
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v130, v176 offset:320
	ds_load_u8 v131, v176 offset:256
	ds_load_u8 v132, v176 offset:336
	ds_load_u8 v133, v176 offset:272
	ds_load_u8 v139, v176 offset:352
	ds_load_u8 v140, v176 offset:288
	ds_load_u8 v141, v176 offset:368
	ds_load_u8 v143, v176 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v176 offset:448
	ds_load_u8 v134, v176 offset:384
	ds_load_u8 v135, v176 offset:464
	ds_load_u8 v144, v176 offset:400
	ds_load_u8 v145, v176 offset:480
	ds_load_u8 v146, v176 offset:416
	ds_load_u8 v147, v176 offset:496
	ds_load_u8 v148, v176 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v131, v134, v131, 0xc0c0004
	ds_load_u8 v134, v176 offset:64
	ds_load_u8 v136, v176
	ds_load_u8 v149, v176 offset:80
	ds_load_u8 v150, v176 offset:16
	ds_load_u8 v151, v176 offset:96
	ds_load_u8 v152, v176 offset:32
	ds_load_u8 v153, v176 offset:112
	ds_load_u8 v154, v176 offset:48
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v134, v136, v134, 0xc0c0004
	ds_load_u8 v136, v176 offset:192
	ds_load_u8 v137, v176 offset:128
	ds_load_u8 v155, v176 offset:208
	ds_load_u8 v156, v176 offset:144
	ds_load_u8 v157, v176 offset:224
	ds_load_u8 v158, v176 offset:160
	ds_load_u8 v159, v176 offset:240
	ds_load_u8 v160, v176 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	v_lshl_or_b32 v137, v131, 16, v130
	v_perm_b32 v130, v133, v132, 0xc0c0004
	v_perm_b32 v131, v144, v135, 0xc0c0004
	v_perm_b32 v132, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v133, v156, v155, 0xc0c0004
	v_lshl_or_b32 v136, v136, 16, v134
	v_lshl_or_b32 v135, v131, 16, v130
	v_perm_b32 v130, v140, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v134, v133, 16, v132
	v_perm_b32 v131, v146, v145, 0xc0c0004
	v_perm_b32 v132, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v160, v159, 0xc0c0004
	v_lshl_or_b32 v133, v131, 16, v130
	v_perm_b32 v130, v143, v141, 0xc0c0004
	v_lshl_or_b32 v132, v139, 16, v132
	v_perm_b32 v131, v148, v147, 0xc0c0004
	v_perm_b32 v139, v154, v153, 0xc0c0004
	v_mov_b32_e32 v143, v166
	v_mov_b32_e32 v141, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v131, v131, 16, v130
	v_lshl_or_b32 v130, v140, 16, v139
	ds_load_u8 v245, v176 offset:960
	ds_load_u8 v235, v176 offset:896
	ds_load_u8 v139, v176 offset:976
	v_mov_b32_e32 v140, v174
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:240 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:912
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:252 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:992
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:220 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:928
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:224 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1024
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:128 ; 4-byte Folded Spill
	ds_load_u8 v192, v176 offset:944
	ds_load_u8 v157, v176 offset:832
	ds_load_u8 v156, v176 offset:768
	ds_load_u8 v165, v176 offset:848
	ds_load_u8 v160, v176 offset:784
	ds_load_u8 v172, v176 offset:864
	ds_load_u8 v170, v176 offset:800
	ds_load_u8 v189, v176 offset:880
	ds_load_u8 v185, v176 offset:816
	ds_load_u8 v151, v176 offset:576
	ds_load_u8 v149, v176 offset:512
	ds_load_u8 v155, v176 offset:592
	ds_load_u8 v190, v176 offset:528
	ds_load_u8 v199, v176 offset:608
	ds_load_u8 v158, v176 offset:544
	ds_load_u8 v162, v176 offset:624
	ds_load_u8 v159, v176 offset:560
	ds_load_u8 v146, v176 offset:704
	ds_load_u8 v145, v176 offset:640
	ds_load_u8 v148, v176 offset:720
	ds_load_u8 v147, v176 offset:656
	ds_load_u8 v152, v176 offset:736
	ds_load_u8 v150, v176 offset:672
	ds_load_u8 v154, v176 offset:752
	ds_load_u8 v153, v176 offset:688
	ds_load_u8 v139, v176 offset:1344
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:148 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1360
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:144 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1376
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:140 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1392
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:132 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1408
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:152 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1328
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:136 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1296
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1312
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1472
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:200 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1488
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1504
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1520
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off        ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1456
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1424
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:204 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1440
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1088
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:232 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1104
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:212 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1152
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:248 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:236 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1056
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:216 ; 4-byte Folded Spill
	ds_load_u8 v221, v176 offset:1280
	ds_load_u8 v139, v176 offset:1264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:196 ; 4-byte Folded Spill
	ds_load_u8 v227, v176 offset:1216
	ds_load_u8 v251, v176 offset:1232
	ds_load_u8 v139, v176 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:228 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:208 ; 4-byte Folded Spill
	ds_load_u8 v242, v176 offset:1168
	ds_load_u8 v139, v176 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:244 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1856
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:36 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:24 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:12 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:4 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1920
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:56 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:8 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:40 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:28 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:72 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:2000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:48 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:32 ; 4-byte Folded Spill
	ds_load_u8 v144, v249
	ds_load_u8 v139, v250
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:16 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:20 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:76 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:52 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1600
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:96 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1616
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:80 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1632
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:64 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:44 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1664
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:108 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1584
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:60 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1552
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:100 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:84 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1792
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:124 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:68 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1728
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:120 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:112 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:92 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:88 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:116 ; 4-byte Folded Spill
	ds_load_u8 v139, v176 offset:1696
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v139, off offset:104 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v184, v129
	s_waitcnt vmcnt(14)
	ds_store_b16 v184, v222 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b16 v184, v216 offset:1024
	s_waitcnt vmcnt(12)
	ds_store_b16 v184, v217 offset:1536
	s_waitcnt vmcnt(11)
	ds_store_b16 v184, v228 offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b16 v184, v229 offset:2560
	s_waitcnt vmcnt(9)
	ds_store_b16 v184, v230 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v184, v218 offset:3584
	s_waitcnt vmcnt(7)
	ds_store_b16 v184, v223 offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b16 v184, v224 offset:4608
	s_waitcnt vmcnt(5)
	ds_store_b16 v184, v236 offset:5120
	s_waitcnt vmcnt(4)
	ds_store_b16 v184, v237 offset:5632
	s_waitcnt vmcnt(3)
	ds_store_b16 v184, v225 offset:6144
	s_waitcnt vmcnt(2)
	ds_store_b16 v184, v238 offset:6656
	s_waitcnt vmcnt(1)
	ds_store_b16 v184, v239 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b16 v184, v226 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v129, v178 offset:1280
	ds_load_u8 v173, v178 offset:1920
	v_mov_b32_e32 v139, v167
	ds_load_u8 v167, v178 offset:1536
	ds_load_u8 v166, v178 offset:1024
	ds_load_u8 v174, v178 offset:1664
	ds_load_u8 v193, v178 offset:1408
	ds_load_u8 v208, v178 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	v_perm_b32 v129, v166, v129, 0xc0c0004
	ds_load_u8 v166, v178 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v178 offset:256
	ds_load_u8 v210, v178
	ds_load_u8 v214, v178 offset:896
	ds_load_u8 v216, v178 offset:640
	ds_load_u8 v217, v178 offset:384
	ds_load_u8 v218, v178 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v210, v210, v167, 0xc0c0004
	ds_load_u8 v167, v178 offset:768
	ds_load_u8 v222, v178 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v222, v222, v167, 0xc0c0004
	v_lshl_or_b32 v167, v166, 16, v129
	v_perm_b32 v129, v208, v193, 0xc0c0004
	v_perm_b32 v193, v218, v217, 0xc0c0004
	v_perm_b32 v208, v216, v214, 0xc0c0004
	v_lshl_or_b32 v166, v222, 16, v210
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v174, v173, 16, v129
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v129, v179, v142
	v_add_nc_u32_e32 v142, s43, v171
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[166:167], v[136:137], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[166:167], v[134:135], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[166:167], v[132:133], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[166:167], v[130:131], v[113:120] neg_lo:[1,1,0]
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v166, s43, v254
	v_add_nc_u32_e32 v167, s43, v253
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v173, v208, 16, v193
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v129, 0x80000000, v129, s18
	v_cndmask_b32_e64 v142, 0x80000000, v142, s15
	v_cndmask_b32_e64 v166, 0x80000000, v166, s16
	v_cndmask_b32_e64 v167, 0x80000000, v167, s17
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[73:80], v[173:174], v[136:137], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[173:174], v[134:135], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[173:174], v[132:133], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[173:174], v[130:131], v[121:128] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x4
	buffer_load_u8 v129, v129, s[36:39], 0 offen
	buffer_load_u8 v142, v142, s[36:39], 0 offen
	buffer_load_u8 v166, v166, s[36:39], 0 offen
	buffer_load_u8 v167, v167, s[36:39], 0 offen
	buffer_load_u8 v173, v0, s[36:39], 0 offen
	v_mov_b32_e32 v171, v180
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v0.l, 8, v129.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v129, s43, v246
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v247.l, v173.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v243
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v129, 0x80000000, v129, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s17
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v247.h, v167.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v138
	v_add_nc_u32_e32 v138, s43, v252
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s16
	v_cndmask_b32_e64 v138, 0x80000000, v138, s11
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v248.l, v166.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v255
	v_add_nc_u32_e32 v166, s43, v196
	v_mov_b32_e32 v196, v249
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v166, 0x80000000, v166, s13
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v248.h, v142.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v244
	v_add_nc_u32_e32 v142, s43, v197
	v_mov_b32_e32 v197, v250
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s14
	v_cndmask_b32_e64 v142, 0x80000000, v142, s12
	s_clause 0x4
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	buffer_load_u8 v138, v138, s[36:39], 0 offen
	buffer_load_u8 v142, v142, s[36:39], 0 offen
	buffer_load_u8 v166, v166, s[36:39], 0 offen
	buffer_load_u8 v129, v129, s[36:39], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v0.l, 8, v0.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v249.l, v129.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v220
	v_add_nc_u32_e32 v129, s43, v213
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v129, 0x80000000, v129, s10
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v249.h, v166.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v203
	v_add_nc_u32_e32 v166, s43, v232
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s12
	v_cndmask_b32_e64 v166, 0x80000000, v166, s9
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v250.l, v142.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v201
	v_add_nc_u32_e32 v142, s43, v233
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v142, 0x80000000, v142, s8
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v250.h, v138.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v200
	v_add_nc_u32_e32 v138, s43, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s10
	v_cndmask_b32_e64 v138, 0x80000000, v138, s7
	s_clause 0x4
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	buffer_load_u8 v138, v138, s[36:39], 0 offen
	buffer_load_u8 v142, v142, s[36:39], 0 offen
	buffer_load_u8 v166, v166, s[36:39], 0 offen
	buffer_load_u8 v129, v129, s[36:39], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v0.l, 8, v0.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v173.l, v129.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v212
	v_add_nc_u32_e32 v129, s43, v206
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v129, 0x80000000, v129, s6
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v173.h, v166.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v195
	v_add_nc_u32_e32 v166, s43, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s8
	v_cndmask_b32_e64 v166, 0x80000000, v166, s5
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v174.l, v142.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v207
	v_add_nc_u32_e32 v142, s43, v188
	v_mov_b32_e32 v188, v169
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v142, 0x80000000, v142, s4
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v174.h, v138.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v205
	v_add_nc_u32_e32 v138, s43, v231
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s6
	v_cndmask_b32_e64 v138, 0x80000000, v138, s3
	s_clause 0x4
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	buffer_load_u8 v138, v138, s[36:39], 0 offen
	buffer_load_u8 v142, v142, s[36:39], 0 offen
	buffer_load_u8 v167, v166, s[36:39], 0 offen
	buffer_load_u8 v129, v129, s[36:39], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v0.l, 8, v0.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v166.l, v129.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v204
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v166.h, v167.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v187
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v167.l, v142.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v179, v186
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s3, s27, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s27, 0x60
	s_mov_b32 s27, s3
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v0, v0, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v167.h, v138.l, v0.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v243, v178 offset:3328
	ds_load_u8 v244, v178 offset:3072
	ds_load_u8 v246, v178 offset:3840
	ds_load_u8 v255, v178 offset:3584
	ds_load_u8 v231, v178 offset:3968
	ds_load_u8 v232, v178 offset:3712
	ds_load_u8 v233, v178 offset:3456
	ds_load_u8 v234, v178 offset:3200
	ds_load_u8 v252, v178 offset:2304
	ds_load_u8 v214, v178 offset:2048
	ds_load_u8 v210, v178 offset:2816
	ds_load_u8 v193, v178 offset:2560
	ds_load_u8 v161, v178 offset:2944
	ds_load_u8 v241, v178 offset:2688
	ds_load_u8 v253, v178 offset:2432
	ds_load_u8 v208, v178 offset:2176
	ds_load_u8 v218, v178 offset:5376
	ds_load_u8 v222, v178 offset:5120
	ds_load_u8 v223, v178 offset:5888
	ds_load_u8 v226, v178 offset:5632
	ds_load_u8 v216, v178 offset:6016
	ds_load_u8 v217, v178 offset:5760
	ds_load_u8 v220, v178 offset:5504
	ds_load_u8 v224, v178 offset:5248
	ds_load_u8 v230, v178 offset:4352
	ds_load_u8 v236, v178 offset:4096
	ds_load_u8 v225, v178 offset:4992
	ds_load_u8 v228, v178 offset:4736
	ds_load_u8 v229, v178 offset:4480
	ds_load_u8 v238, v178 offset:4864
	ds_load_u8 v239, v178 offset:4608
	ds_load_u8 v237, v178 offset:4224
	ds_load_u8 v142, v178 offset:7424
	ds_load_u8 v186, v178 offset:7168
	ds_load_u8 v0, v178 offset:8064
	ds_load_u8 v129, v178 offset:7808
	ds_load_u8 v138, v178 offset:7552
	ds_load_u8 v201, v178 offset:7936
	ds_load_u8 v204, v178 offset:7680
	ds_load_u8 v187, v178 offset:7296
	ds_load_u8 v205, v178 offset:6400
	ds_load_u8 v206, v178 offset:6144
	ds_load_u8 v195, v178 offset:7040
	ds_load_u8 v200, v178 offset:6784
	ds_load_u8 v203, v178 offset:6528
	ds_load_u8 v212, v178 offset:6912
	ds_load_u8 v213, v178 offset:6656
	ds_load_u8 v207, v178 offset:6272
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v184, v247
	ds_store_b16_d16_hi v184, v247 offset:512
	ds_store_b16 v184, v248 offset:1024
	ds_store_b16_d16_hi v184, v248 offset:1536
	ds_store_b16 v184, v249 offset:2048
	ds_store_b16_d16_hi v184, v249 offset:2560
	ds_store_b16 v184, v250 offset:3072
	ds_store_b16_d16_hi v184, v250 offset:3584
	ds_store_b16 v184, v173 offset:4096
	ds_store_b16_d16_hi v184, v173 offset:4608
	ds_store_b16 v184, v174 offset:5120
	ds_store_b16_d16_hi v184, v174 offset:5632
	ds_store_b16 v184, v166 offset:6144
	ds_store_b16_d16_hi v184, v166 offset:6656
	ds_store_b16 v184, v167 offset:7168
	ds_store_b16_d16_hi v184, v167 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v166, v178 offset:1280
	ds_load_u8 v167, v178 offset:1024
	ds_load_u8 v173, v178 offset:1920
	ds_load_u8 v174, v178 offset:1664
	ds_load_u8 v247, v178 offset:1408
	ds_load_u8 v248, v178 offset:1152
	ds_load_u8 v168, v178 offset:896
	ds_load_u8 v180, v178 offset:640
	ds_load_u8 v181, v178 offset:384
	ds_load_u8 v169, v178 offset:128
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v129, v0, 0xc0c0004
	v_perm_b32 v138, v187, v138, 0xc0c0004
	v_perm_b32 v129, v207, v203, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v178 offset:1792
	ds_load_u8 v249, v178 offset:1536
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v247, v248, v247, 0xc0c0004
	v_mov_b32_e32 v248, v215
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v168, v180, v168, 0xc0c0004
	v_mov_b32_e32 v180, v171
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v169, v181, 0xc0c0004
	v_lshl_or_b32 v174, v173, 16, v247
	v_mov_b32_e32 v181, v163
	v_mov_b32_e32 v247, v209
	v_mov_b32_e32 v163, v211
	v_lshl_or_b32 v173, v168, 16, v169
	v_dual_mov_b32 v169, v188 :: v_dual_mov_b32 v168, v182
	v_mov_b32_e32 v182, v164
	v_mov_b32_e32 v164, v202
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[173:174], v[132:133], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[173:174], v[130:131], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[173:174], v[134:135], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v249, v167, 0xc0c0004
	ds_load_u8 v249, v178 offset:256
	ds_load_u8 v250, v178
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[136:137], v[9:16] neg_lo:[1,1,0]
	v_mov_b32_e32 v174, v140
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v140, v185, v189, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v167, v167, 16, v166
	v_mov_b32_e32 v173, v141
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v141, v214, v252, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v249, v250, v249, 0xc0c0004
	ds_load_u8 v250, v178 offset:768
	ds_load_u8 v254, v178 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v250, v254, v250, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v166, v250, 16, v249
	v_dual_mov_b32 v250, v197 :: v_dual_mov_b32 v249, v196
	v_wmma_i32_16x16x16_iu4 v[33:40], v[166:167], v[132:133], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[166:167], v[130:131], v[49:56] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v130, v156, v157, 0xc0c0004
	v_perm_b32 v131, v235, v245, 0xc0c0004
	v_perm_b32 v132, v149, v151, 0xc0c0004
	v_perm_b32 v133, v145, v146, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[166:167], v[134:135], v[17:24] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v135, v147, v148, 0xc0c0004
	v_lshl_or_b32 v131, v131, 16, v130
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[166:167], v[136:137], v[1:8] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v130, v133, 16, v132
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v133, off, off offset:240
	scratch_load_b32 v134, off, off offset:252
	v_perm_b32 v132, v160, v165, 0xc0c0004
	v_perm_b32 v137, v150, v152, 0xc0c0004
	v_mov_b32_e32 v167, v139
	v_perm_b32 v139, v192, v144, 0xc0c0004
	v_mov_b32_e32 v166, v143
	v_perm_b32 v143, v193, v210, 0xc0c0004
	v_perm_b32 v145, v208, v253, 0xc0c0004
	v_perm_b32 v146, v241, v161, 0xc0c0004
	v_mov_b32_e32 v241, v194
	s_waitcnt vmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_perm_b32 v134, v190, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v133, v133, 16, v132
	v_lshl_or_b32 v132, v135, 16, v134
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:220
	scratch_load_b32 v136, off, off offset:224
	v_perm_b32 v134, v170, v172, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	v_perm_b32 v136, v158, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v135, v135, 16, v134
	v_lshl_or_b32 v134, v137, 16, v136
	v_perm_b32 v136, v159, v162, 0xc0c0004
	v_perm_b32 v137, v153, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v136, v137, 16, v136
	v_lshl_or_b32 v137, v139, 16, v140
	v_perm_b32 v139, v244, v243, 0xc0c0004
	v_perm_b32 v140, v255, v246, 0xc0c0004
	v_lshl_or_b32 v140, v140, 16, v139
	v_lshl_or_b32 v139, v143, 16, v141
	v_perm_b32 v141, v234, v233, 0xc0c0004
	v_perm_b32 v143, v232, v231, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[139:140], v[130:131], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[139:140], v[132:133], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v144, v143, 16, v141
	v_lshl_or_b32 v143, v146, 16, v145
	v_wmma_i32_16x16x16_iu4 v[97:104], v[139:140], v[134:135], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[139:140], v[136:137], v[113:120] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[143:144], v[130:131], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[143:144], v[132:133], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[143:144], v[134:135], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[143:144], v[136:137], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v139, v178 offset:3328
	ds_load_u8 v140, v178 offset:3072
	ds_load_u8 v141, v178 offset:3968
	ds_load_u8 v143, v178 offset:3712
	ds_load_u8 v144, v178 offset:3456
	ds_load_u8 v145, v178 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v178 offset:3840
	ds_load_u8 v146, v178 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v141, v143, v141, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v141, 16, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v146, v140, 0xc0c0004
	ds_load_u8 v146, v178 offset:2304
	ds_load_u8 v147, v178 offset:2048
	ds_load_u8 v148, v178 offset:2944
	ds_load_u8 v149, v178 offset:2688
	ds_load_u8 v150, v178 offset:2432
	ds_load_u8 v151, v178 offset:2176
	v_lshl_or_b32 v140, v140, 16, v139
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v178 offset:2816
	ds_load_u8 v152, v178 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v145, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v143, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v143, v145, 16, v143
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v145, v237, v229, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[143:144], v[132:133], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[143:144], v[134:135], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[143:144], v[136:137], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v143, v239, v238, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v152, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v139, v147, 16, v146
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v146, v228, v225, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[130:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[139:140], v[132:133], v[17:24] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v131, off, off offset:152
	scratch_load_b32 v132, off, off offset:200
	scratch_load_b32 v130, off, off offset:148
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[139:140], v[134:135], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[139:140], v[136:137], v[49:56] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v131, v131, v132, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v132, off, off offset:128
	scratch_load_b32 v133, off, off offset:232
	s_waitcnt vmcnt(0)
	v_perm_b32 v132, v132, v133, 0xc0c0004
	scratch_load_b32 v133, off, off offset:248 ; 4-byte Folded Reload
	v_perm_b32 v130, v221, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v131, v131, 16, v130
	s_waitcnt vmcnt(0)
	v_perm_b32 v133, v133, v227, 0xc0c0004
	v_lshl_or_b32 v130, v133, 16, v132
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v132, off, off offset:144
	scratch_load_b32 v133, off, off offset:176
	s_waitcnt vmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v133, off, off offset:184
	scratch_load_b32 v134, off, off offset:204
	s_waitcnt vmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:212
	scratch_load_b32 v135, off, off offset:236
	v_lshl_or_b32 v133, v133, 16, v132
	s_waitcnt vmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	v_perm_b32 v135, v242, v251, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v135, 16, v134
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:140
	scratch_load_b32 v135, off, off offset:164
	s_waitcnt vmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:168
	scratch_load_b32 v136, off, off offset:188
	s_waitcnt vmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:192
	scratch_load_b32 v137, off, off offset:216
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt vmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v137, off, off offset:228
	scratch_load_b32 v139, off, off offset:244
	s_waitcnt vmcnt(0)
	v_perm_b32 v137, v139, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:132
	scratch_load_b32 v137, off, off offset:136
	s_waitcnt vmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v137, off, off offset:156
	scratch_load_b32 v139, off, off offset:160
	s_waitcnt vmcnt(0)
	v_perm_b32 v137, v139, v137, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v139, off, off offset:172
	scratch_load_b32 v140, off, off offset:180
	v_lshl_or_b32 v137, v137, 16, v136
	s_waitcnt vmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v140, off, off offset:196
	scratch_load_b32 v141, off, off offset:208
	s_waitcnt vmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	v_perm_b32 v141, v236, v230, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v136, v140, 16, v139
	v_perm_b32 v139, v222, v218, 0xc0c0004
	v_perm_b32 v140, v226, v223, 0xc0c0004
	v_lshl_or_b32 v140, v140, 16, v139
	v_lshl_or_b32 v139, v143, 16, v141
	v_perm_b32 v141, v224, v220, 0xc0c0004
	v_perm_b32 v143, v217, v216, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[139:140], v[130:131], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[139:140], v[132:133], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v144, v143, 16, v141
	v_lshl_or_b32 v143, v146, 16, v145
	v_wmma_i32_16x16x16_iu4 v[97:104], v[139:140], v[134:135], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[139:140], v[136:137], v[113:120] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[143:144], v[130:131], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[143:144], v[132:133], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[143:144], v[134:135], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[143:144], v[136:137], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v139, v178 offset:5376
	ds_load_u8 v140, v178 offset:5120
	ds_load_u8 v141, v178 offset:6016
	ds_load_u8 v143, v178 offset:5760
	ds_load_u8 v144, v178 offset:5504
	ds_load_u8 v145, v178 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v178 offset:5888
	ds_load_u8 v146, v178 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v141, v143, v141, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v141, 16, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v146, v140, 0xc0c0004
	ds_load_u8 v146, v178 offset:4352
	ds_load_u8 v147, v178 offset:4096
	ds_load_u8 v148, v178 offset:4992
	ds_load_u8 v149, v178 offset:4736
	ds_load_u8 v150, v178 offset:4480
	ds_load_u8 v151, v178 offset:4224
	v_lshl_or_b32 v140, v140, 16, v139
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v178 offset:4864
	ds_load_u8 v152, v178 offset:4608
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v145, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v143, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v145, 16, v143
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[143:144], v[132:133], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[143:144], v[134:135], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[143:144], v[136:137], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v152, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v139, v147, 16, v146
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[130:131], v[1:8] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v130, off, off offset:36
	scratch_load_b32 v131, off, off offset:124
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[139:140], v[132:133], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[139:140], v[134:135], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[139:140], v[136:137], v[49:56] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v131, off, off offset:56
	scratch_load_b32 v132, off, off offset:72
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v131, v132, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v132, off, off
	scratch_load_b32 v133, off, off offset:96
	v_lshl_or_b32 v131, v131, 16, v130
	s_waitcnt vmcnt(0)
	v_perm_b32 v132, v132, v133, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v133, off, off offset:108
	scratch_load_b32 v134, off, off offset:120
	s_waitcnt vmcnt(0)
	v_perm_b32 v133, v133, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v133, 16, v132
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v132, off, off offset:24
	scratch_load_b32 v133, off, off offset:40
	s_waitcnt vmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v133, off, off offset:48
	scratch_load_b32 v134, off, off offset:76
	s_waitcnt vmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:80
	scratch_load_b32 v135, off, off offset:100
	v_lshl_or_b32 v133, v133, 16, v132
	s_waitcnt vmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:112
	scratch_load_b32 v136, off, off offset:116
	s_waitcnt vmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v135, 16, v134
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:12
	scratch_load_b32 v135, off, off offset:28
	s_waitcnt vmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:32
	scratch_load_b32 v136, off, off offset:52
	s_waitcnt vmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:64
	scratch_load_b32 v137, off, off offset:84
	v_lshl_or_b32 v135, v135, 16, v134
	s_waitcnt vmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v137, off, off offset:92
	scratch_load_b32 v139, off, off offset:104
	s_waitcnt vmcnt(0)
	v_perm_b32 v137, v139, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v137, 16, v136
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:44
	scratch_load_b32 v137, off, off offset:60
	s_waitcnt vmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v137, off, off offset:68
	scratch_load_b32 v139, off, off offset:88
	s_waitcnt vmcnt(0)
	v_perm_b32 v137, v139, v137, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v139, off, off offset:4
	scratch_load_b32 v140, off, off offset:8
	v_lshl_or_b32 v136, v137, 16, v136
	s_waitcnt vmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v140, off, off offset:16
	scratch_load_b32 v141, off, off offset:20
	s_waitcnt vmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	v_perm_b32 v141, v206, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v137, v140, 16, v139
	v_perm_b32 v139, v186, v142, 0xc0c0004
	scratch_load_b32 v186, off, off offset:256 ; 4-byte Folded Reload
	v_perm_b32 v140, v204, v201, 0xc0c0004
	v_perm_b32 v142, v213, v212, 0xc0c0004
	v_lshl_or_b32 v140, v140, 16, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v139, v142, 16, v141
	v_perm_b32 v141, v200, v195, 0xc0c0004
	v_lshl_or_b32 v142, v0, 16, v138
	v_wmma_i32_16x16x16_iu4 v[65:72], v[139:140], v[130:131], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v141, v141, 16, v129
	v_wmma_i32_16x16x16_iu4 v[81:88], v[139:140], v[132:133], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[139:140], v[134:135], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[139:140], v[136:137], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[141:142], v[130:131], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[141:142], v[132:133], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[141:142], v[134:135], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[141:142], v[136:137], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v0, v178 offset:7424
	ds_load_u8 v129, v178 offset:7168
	ds_load_u8 v140, v178 offset:8064
	ds_load_u8 v141, v178 offset:7808
	ds_load_u8 v142, v178 offset:7552
	ds_load_u8 v143, v178 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	ds_load_u8 v129, v178 offset:7936
	ds_load_u8 v138, v178 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v138, v129, 0xc0c0004
	ds_load_u8 v138, v178 offset:6400
	ds_load_u8 v139, v178 offset:6144
	ds_load_u8 v144, v178 offset:7040
	ds_load_u8 v145, v178 offset:6784
	ds_load_u8 v146, v178 offset:6528
	ds_load_u8 v147, v178 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v178 offset:6912
	ds_load_u8 v148, v178 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v139, 0xc0c0004
	v_lshl_or_b32 v139, v129, 16, v0
	v_perm_b32 v0, v143, v142, 0xc0c0004
	v_perm_b32 v129, v141, v140, 0xc0c0004
	v_perm_b32 v140, v147, v146, 0xc0c0004
	v_perm_b32 v142, v145, v144, 0xc0c0004
	v_lshl_or_b32 v138, v148, 16, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v141, v129, 16, v0
	v_lshl_or_b32 v140, v142, 16, v140
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[138:139], v[130:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[138:139], v[132:133], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[138:139], v[134:135], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[138:139], v[136:137], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[140:141], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[140:141], v[132:133], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[140:141], v[134:135], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[140:141], v[136:137], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v73
	v_cvt_f32_i32_e32 v135, v74
	v_cvt_f32_i32_e32 v156, v83
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v74, v22
	v_cvt_f32_i32_e32 v73, v23
	v_cvt_f32_i32_e32 v83, v36
	v_cvt_f32_i32_e32 v23, v42
	v_cvt_f32_i32_e32 v22, v43
	v_cvt_f32_i32_e32 v36, v54
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v54, off, off offset:788
	scratch_load_b32 v42, off, off offset:772
	scratch_load_b32 v43, off, off offset:776
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v151, v66
	v_cvt_f32_i32_e32 v133, v76
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v76, v4
	v_cvt_f32_i32_e32 v4, v29
	v_cvt_f32_i32_e32 v29, v40
	v_cvt_f32_i32_e32 v40, v50
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v143, v70
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v70, v6
	v_cvt_f32_i32_e32 v6, v31
	v_cvt_f32_i32_e32 v31, v39
	v_cvt_f32_i32_e32 v39, v51
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s42, s41
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v142, v71
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s35
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v5, v30
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v69
	v_cvt_f32_i32_e32 v157, v84
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v69, v7
	v_cvt_f32_i32_e32 v7, v32
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v32, v38
	v_cvt_f32_i32_e32 v38, v52
	v_cvt_f32_i32_e32 v35, v55
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v148, v85
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v150, v65
	v_cvt_f32_i32_e32 v152, v67
	v_cvt_f32_i32_e32 v153, v68
	v_cvt_f32_i32_e32 v141, v72
	v_cvt_f32_i32_e32 v134, v75
	v_cvt_f32_i32_e32 v155, v82
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v68, v8
	v_cvt_f32_i32_e32 v67, v9
	v_cvt_f32_i32_e32 v66, v10
	v_cvt_f32_i32_e32 v65, v11
	v_cvt_f32_i32_e32 v9, v12
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v72, v24
	v_cvt_f32_i32_e32 v24, v41
	v_cvt_f32_i32_e32 v21, v44
	v_cvt_f32_i32_e32 v8, v45
	v_cvt_f32_i32_e32 v10, v46
	v_cvt_f32_i32_e32 v11, v47
	v_cvt_f32_i32_e32 v12, v48
	v_cvt_f32_i32_e32 v41, v49
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v147, v86
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v33, v37
	v_cvt_f32_i32_e32 v37, v53
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v145, v88
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v154, v81
	v_cvt_f32_i32_e32 v138, v90
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v111, v116
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v112, v117
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v160, v99
	v_cvt_f32_i32_e32 v162, v100
	v_cvt_f32_i32_e32 v165, v102
	v_cvt_f32_i32_e32 v170, v103
	v_cvt_f32_i32_e32 v149, v104
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v108, v113
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v106, v122
	v_cvt_f32_i32_e32 v105, v123
	v_cvt_f32_i32_e32 v104, v124
	v_cvt_f32_i32_e32 v99, v125
	v_cvt_f32_i32_e32 v139, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v158, v97
	v_cvt_f32_i32_e32 v172, v101
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v159, v98
	v_cvt_f32_i32_e32 v146, v87
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v137, v91
	v_cvt_f32_i32_e32 v131, v78
	v_cvt_f32_i32_e32 v129, v80
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v132, v77
	v_cvt_f32_i32_e32 v130, v79
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v91, v1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v87, v96
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v77, v3
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v97, v127
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v78, v2
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v96, v128
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v81, v18
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v3, v16
	v_cvt_f32_i32_e32 v16, v26
	v_cvt_f32_i32_e32 v0, v13
	v_cvt_f32_i32_e32 v13, v28
	v_cvt_f32_i32_e32 v2, v15
	v_cvt_f32_i32_e32 v15, v27
	v_cvt_f32_i32_e32 v17, v25
	v_cvt_f32_i32_e32 v27, v58
	v_cvt_f32_i32_e32 v28, v57
	v_cvt_f32_i32_e32 v26, v59
	v_cvt_f32_i32_e32 v25, v60
	v_cvt_f32_i32_e32 v1, v14
	v_cvt_f32_i32_e32 v14, v61
	v_cvt_f32_i32_e32 v18, v62
	v_cvt_f32_i32_e32 v19, v63
	v_cvt_f32_i32_e32 v20, v64
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v30, v54, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v42, s42, v42, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v43, s42, v43, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v30, v30, s[24:27], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	s_clause 0x1
	buffer_load_u16 v42, v42, s[20:23], 0 offen
	buffer_load_u16 v50, v43, s[20:23], 0 offen
	scratch_load_b32 v43, off, off offset:780 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v50, 16, v50
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v43, s42, v43, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	buffer_load_u16 v51, v43, s[20:23], 0 offen
	scratch_load_b32 v43, off, off offset:784 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v43, s42, v43, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s42, s42, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s42, s34
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	buffer_load_u16 v52, v43, s[20:23], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v55, off, off offset:792 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v55, v30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v56, off, off offset:796
	scratch_load_b32 v218, off, off offset:680
	scratch_load_b32 v209, off, off offset:644
	scratch_load_b32 v201, off, off offset:612
	scratch_load_b32 v202, off, off offset:616
	scratch_load_b32 v204, off, off offset:624
	scratch_load_b32 v203, off, off offset:620
	scratch_load_b32 v195, off, off offset:588
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v30, 16, v42
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(7)
	ds_load_b128 v[42:45], v56
	ds_load_b128 v[46:49], v56 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v30, v150
	s_clause 0x10                           ; 68-byte Folded Reload
	scratch_load_b32 v187, off, off offset:528
	scratch_load_b32 v161, off, off offset:592
	scratch_load_b32 v217, off, off offset:676
	scratch_load_b32 v150, off, off offset:420
	scratch_load_b32 v193, off, off offset:580
	scratch_load_b32 v227, off, off offset:716
	scratch_load_b32 v215, off, off offset:668
	scratch_load_b32 v116, off, off offset:324
	scratch_load_b32 v117, off, off offset:328
	scratch_load_b32 v119, off, off offset:336
	scratch_load_b32 v122, off, off offset:388
	scratch_load_b32 v123, off, off offset:392
	scratch_load_b32 v124, off, off offset:396
	scratch_load_b32 v125, off, off offset:400
	scratch_load_b32 v118, off, off offset:332
	scratch_load_b32 v194, off, off offset:584
	scratch_load_b32 v216, off, off offset:672
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(21) lgkmcnt(1)
	v_fmac_f32_e32 v201, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v30, v151
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v151, off, off offset:424
	scratch_load_b32 v222, off, off offset:696
	scratch_load_b32 v210, off, off offset:648
	scratch_load_b32 v223, off, off offset:700
	scratch_load_b32 v211, off, off offset:652
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(25)
	v_dual_fmac_f32 v202, v53, v43 :: v_dual_mul_f32 v53, v30, v152
	scratch_load_b32 v152, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v51, 16, v51
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v212, off, off offset:656
	scratch_load_b32 v224, off, off offset:704
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(27)
	v_dual_fmac_f32 v204, v53, v44 :: v_dual_mul_f32 v53, v30, v153
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v153, off, off offset:432
	scratch_load_b32 v225, off, off offset:708
	scratch_load_b32 v213, off, off offset:660
	scratch_load_b32 v226, off, off offset:712
	scratch_load_b32 v214, off, off offset:664
	s_waitcnt vmcnt(31)
	v_fmac_f32_e32 v203, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v154
	scratch_load_b32 v154, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v41, v52, v41
	v_mul_f32_e32 v39, v52, v39
	v_mul_f32_e32 v14, v52, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v154, v53, v42 :: v_dual_mul_f32 v53, v50, v155
	scratch_load_b32 v155, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v1, v30
	v_mul_f32_e32 v2, v2, v30
	v_dual_mul_f32 v0, v30, v0 :: v_dual_mul_f32 v3, v3, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v155, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v156
	scratch_load_b32 v156, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v6, v6, v50
	v_mul_f32_e32 v4, v50, v4
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v187, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v157
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v156, v53, v45 :: v_dual_mul_f32 v53, v51, v158
	v_dual_fmac_f32 v150, v53, v42 :: v_dual_mul_f32 v53, v51, v159
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v38, v52, v38 :: v_dual_mul_f32 v33, v51, v33
	v_dual_mul_f32 v40, v52, v40 :: v_dual_mul_f32 v31, v51, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v151, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v160
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v9, v30, v9 :: v_dual_mul_f32 v32, v51, v32
	v_mul_f32_e32 v8, v51, v8
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v153, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v162
	scratch_load_b32 v162, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v152, v53, v45 :: v_dual_mul_f32 v53, v52, v108
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v116, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v109
	v_mul_f32_e32 v53, v140, v30
	scratch_load_b32 v109, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v117, v42, v43 :: v_dual_mul_f32 v42, v52, v110
	scratch_load_b32 v110, off, off offset:296 ; 4-byte Folded Reload
	v_dual_fmac_f32 v119, v42, v44 :: v_dual_mul_f32 v42, v52, v111
	scratch_load_b32 v111, off, off offset:300 ; 4-byte Folded Reload
	v_fmac_f32_e32 v118, v42, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v30, v144
	scratch_load_b32 v144, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v193, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v30, v143
	scratch_load_b32 v143, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v194, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v30, v142
	scratch_load_b32 v142, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v195, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v30, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v161, v42, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v148
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v142, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v143, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v146
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v144, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v145
	scratch_load_b32 v145, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v145, v42, v49 :: v_dual_mul_f32 v42, v51, v172
	scratch_load_b32 v172, off, off offset:560 ; 4-byte Folded Reload
	v_fmac_f32_e32 v122, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v51, v165
	scratch_load_b32 v165, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v123, v42, v47 :: v_dual_mul_f32 v42, v51, v170
	scratch_load_b32 v170, off, off offset:556 ; 4-byte Folded Reload
	v_fmac_f32_e32 v124, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v51, v149
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v125, v42, v49 :: v_dual_mul_f32 v42, v52, v112
	scratch_load_b32 v112, off, off offset:304 ; 4-byte Folded Reload
	v_dual_fmac_f32 v109, v42, v46 :: v_dual_mul_f32 v42, v52, v113
	scratch_load_b32 v113, off, off offset:356 ; 4-byte Folded Reload
	v_fmac_f32_e32 v110, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v114
	scratch_load_b32 v114, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v111, v42, v48 :: v_dual_mul_f32 v42, v52, v115
	scratch_load_b32 v115, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v112, v42, v49
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[42:45], v56 offset:512
	ds_load_b128 v[46:49], v56 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v227, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v30, v135
	scratch_load_b32 v135, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v162, v53, v43 :: v_dual_mul_f32 v53, v30, v134
	scratch_load_b32 v134, off, off offset:452 ; 4-byte Folded Reload
	v_fmac_f32_e32 v165, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v30, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v170, v53, v45 :: v_dual_mul_f32 v53, v139, v50
	v_fmac_f32_e32 v223, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v138
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v134, v53, v43 :: v_dual_mul_f32 v53, v50, v137
	scratch_load_b32 v137, off, off offset:464 ; 4-byte Folded Reload
	v_fmac_f32_e32 v135, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v136
	scratch_load_b32 v136, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v136, v53, v45 :: v_dual_mul_f32 v53, v103, v51
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v216, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v102
	scratch_load_b32 v102, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v113, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v101
	scratch_load_b32 v101, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v114, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v100
	scratch_load_b32 v100, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v115, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v107, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v212, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v42, v52, v106 :: v_dual_mul_f32 v53, v30, v91
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v100, v42, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v105
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v101, v42, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v104
	scratch_load_b32 v104, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v102, v42, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v30, v132
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v172, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v131, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v226, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v130, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v225, v42, v48 :: v_dual_mul_f32 v42, v129, v30
	v_fmac_f32_e32 v224, v42, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v137, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v89, v50
	scratch_load_b32 v89, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v222, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v88, v50
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v218, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v87, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v217, v42, v49 :: v_dual_mul_f32 v42, v51, v95
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v104, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v94, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v215, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v93, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v214, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v92, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v213, v42, v49 :: v_dual_mul_f32 v42, v52, v99
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v89, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v98, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v211, v42, v47 :: v_dual_mul_f32 v42, v97, v52
	v_fmac_f32_e32 v210, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v96, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v209, v42, v49 :: v_dual_add_nc_u32 v42, s74, v54
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v42, v42, s3, 1
	buffer_load_u16 v42, v42, s[24:27], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v55, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v208, off, off offset:640
	scratch_load_b32 v207, off, off offset:636
	scratch_load_b32 v206, off, off offset:632
	scratch_load_b32 v205, off, off offset:628
	scratch_load_b32 v200, off, off offset:608
	scratch_load_b32 v197, off, off offset:604
	scratch_load_b32 v196, off, off offset:600
	scratch_load_b32 v185, off, off offset:596
	scratch_load_b32 v160, off, off offset:544
	scratch_load_b32 v192, off, off offset:576
	scratch_load_b32 v190, off, off offset:572
	scratch_load_b32 v188, off, off offset:564
	scratch_load_b32 v189, off, off offset:568
	scratch_load_b32 v159, off, off offset:540
	scratch_load_b32 v157, off, off offset:532
	scratch_load_b32 v158, off, off offset:536
	scratch_load_b32 v103, off, off offset:352
	scratch_load_b32 v97, off, off offset:340
	scratch_load_b32 v98, off, off offset:344
	scratch_load_b32 v121, off, off offset:384
	scratch_load_b32 v120, off, off offset:380
	scratch_load_b32 v105, off, off offset:372
	scratch_load_b32 v106, off, off offset:376
	scratch_load_b32 v99, off, off offset:348
	scratch_load_b32 v133, off, off offset:448
	scratch_load_b32 v132, off, off offset:444
	scratch_load_b32 v131, off, off offset:440
	scratch_load_b32 v130, off, off offset:436
	scratch_load_b32 v129, off, off offset:416
	scratch_load_b32 v128, off, off offset:412
	scratch_load_b32 v127, off, off offset:408
	scratch_load_b32 v126, off, off offset:404
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v94, off, off offset:308
	scratch_load_b32 v96, off, off offset:320
	scratch_load_b32 v88, off, off offset:316
	scratch_load_b32 v95, off, off offset:312
	scratch_load_b32 v90, off, off offset:280
	scratch_load_b32 v91, off, off offset:284
	scratch_load_b32 v92, off, off offset:288
	scratch_load_b32 v93, off, off offset:292
	ds_load_b128 v[42:45], v56
	ds_load_b128 v[46:49], v56 offset:16
	s_clause 0x14                           ; 84-byte Folded Reload
	scratch_load_b32 v149, off, off offset:512
	scratch_load_b32 v148, off, off offset:508
	scratch_load_b32 v146, off, off offset:500
	scratch_load_b32 v147, off, off offset:504
	scratch_load_b32 v141, off, off offset:480
	scratch_load_b32 v140, off, off offset:476
	scratch_load_b32 v139, off, off offset:472
	scratch_load_b32 v138, off, off offset:468
	scratch_load_b32 v236, off, off offset:768
	scratch_load_b32 v235, off, off offset:764
	scratch_load_b32 v234, off, off offset:756
	scratch_load_b32 v233, off, off offset:748
	scratch_load_b32 v232, off, off offset:744
	scratch_load_b32 v231, off, off offset:740
	scratch_load_b32 v230, off, off offset:736
	scratch_load_b32 v228, off, off offset:720
	scratch_load_b32 v87, off, off offset:728
	scratch_load_b32 v229, off, off offset:724
	scratch_load_b32 v221, off, off offset:692
	scratch_load_b32 v220, off, off offset:688
	scratch_load_b32 v171, off, off offset:684
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(60) lgkmcnt(1)
	v_dual_mul_f32 v29, v51, v29 :: v_dual_fmac_f32 v208, v53, v42
	v_mul_f32_e32 v53, v30, v78
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(59)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v207, v53, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v30, v77
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(58)
	v_fmac_f32_e32 v206, v53, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v30, v76
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(44)
	v_fmac_f32_e32 v103, v41, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v205, v53, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(42)
	v_dual_mul_f32 v53, v50, v82 :: v_dual_fmac_f32 v98, v39, v44
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(37)
	v_dual_fmac_f32 v99, v38, v45 :: v_dual_fmac_f32 v160, v53, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v50, v81
	v_mul_f32_e32 v38, v30, v71
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v97, v40, v43
	s_waitcnt vmcnt(31) lgkmcnt(0)
	v_dual_fmac_f32 v129, v33, v46 :: v_dual_fmac_f32 v128, v32, v47
	v_fmac_f32_e32 v159, v53, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v50, v80
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v200, v38, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v38, v30, v70 :: v_dual_fmac_f32 v127, v31, v48
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(29)
	v_fmac_f32_e32 v126, v29, v49
	v_fmac_f32_e32 v157, v53, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v50, v79
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v197, v38, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v30, v69
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v158, v53, v45 :: v_dual_mul_f32 v53, v51, v86
	scratch_load_b32 v86, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v52, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v133, v53, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v51, v85
	scratch_load_b32 v85, off, off offset:752 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(30)
	v_dual_fmac_f32 v94, v29, v46 :: v_dual_mul_f32 v29, v52, v36
	v_fmac_f32_e32 v196, v38, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v30, v68
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(29)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v29, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v52, v35
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(28)
	v_dual_fmac_f32 v88, v29, v48 :: v_dual_mul_f32 v29, v52, v34
	v_dual_fmac_f32 v132, v53, v43 :: v_dual_fmac_f32 v185, v38, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v51, v84
	scratch_load_b32 v84, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v38, v50, v75 :: v_dual_fmac_f32 v95, v29, v49
	v_mul_f32_e32 v29, v67, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v131, v53, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v51, v83
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(23)
	v_fmac_f32_e32 v149, v38, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v50, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v130, v53, v45
	s_waitcnt vmcnt(22)
	v_fmac_f32_e32 v148, v38, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v50, v73
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(21)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v146, v38, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v50, v72
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(20)
	v_fmac_f32_e32 v147, v38, v49
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[31:34], v56 offset:512
	ds_load_b128 v[35:38], v56 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v5, v5, v50
	v_mul_f32_e32 v7, v7, v50
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v188, v9, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v17, v50
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v236, v29, v31 :: v_dual_mul_f32 v29, v30, v66
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v138, v4, v35
	s_waitcnt vmcnt(11)
	v_fmac_f32_e32 v232, v6, v37
	v_dual_fmac_f32 v93, v14, v35 :: v_dual_fmac_f32 v234, v3, v38
	v_dual_fmac_f32 v192, v29, v32 :: v_dual_mul_f32 v29, v30, v65
	v_fmac_f32_e32 v106, v8, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v190, v29, v33
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v85, v9, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v50, v16
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v141, v9, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v50, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v15, v20, v52 :: v_dual_fmac_f32 v140, v9, v33
	v_mul_f32_e32 v9, v50, v13
	v_mul_f32_e32 v13, v19, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v231, v7, v38
	v_fmac_f32_e32 v171, v15, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v139, v9, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v9, v24, v51 :: v_dual_fmac_f32 v84, v2, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v233, v5, v36
	v_fmac_f32_e32 v220, v13, v37
	v_fmac_f32_e32 v230, v9, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v51, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v121, v9, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v51, v22
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v120, v9, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v51, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v105, v9, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v28, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v228, v9, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v52, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v90, v9, v32 :: v_dual_mul_f32 v9, v52, v26
	v_fmac_f32_e32 v91, v9, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v52, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v92, v9, v34 :: v_dual_mul_f32 v9, v10, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v11, v51
	v_dual_mul_f32 v11, v12, v51 :: v_dual_mul_f32 v12, v18, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v189, v0, v35 :: v_dual_fmac_f32 v86, v9, v36
	v_fmac_f32_e32 v235, v1, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v10, v37
	v_fmac_f32_e32 v229, v11, v38
	v_fmac_f32_e32 v221, v12, v36
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v107, off, off offset:800
	scratch_load_b32 v108, off, off offset:804
	v_mov_b32_e32 v5, v198
.LBB0_9:                                ; %Flow798
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v166
	v_or_b32_e32 v2, 60, v166
	v_or_b32_e32 v4, 58, v166
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v12, 0xbfb8aa3b, v84 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s68, v0
	v_add_co_ci_u32_e64 v1, null, s69, 0, s0
	v_add_co_u32 v2, s1, s68, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v3, null, s69, 0, s1
	v_add_co_u32 v7, s1, s68, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[0:1]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, s69, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v166
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 54, v166
	v_or_b32_e32 v4, 52, v166
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s5, s68, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s5
	v_add_co_u32 v2, s5, s68, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[70:71], v[7:8]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s69, 0, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[7:8]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v7, 50, v166
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s9, s68, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s9
	v_add_co_u32 v7, s9, s68, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[70:71], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, s69, 0, s9
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v166
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v13, 0xbfb8aa3b, v234
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v12
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s13, s68, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s69, 0, s13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v13
	v_cndmask_b32_e64 v14, 0, 0x42800000, s17
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 46, v166
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[72:73], v[3:4]
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_mul_f32_e32 v4, 0xbfb8aa3b, v235
	v_cndmask_b32_e64 v16, 0, 0x42800000, s18
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v84 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v231
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s13, s68, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v16, 0xbfb8aa3b, v234 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v200
	v_mul_f32_e32 v0, 0xbfb8aa3b, v236
	v_exp_f32_e32 v14, v14
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[70:71], v[7:8]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v16
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s69, 0, s13
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[72:73], v[7:8]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v206
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s17
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s18
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v17
	v_mul_f32_e32 v59, 0xbfb8aa3b, v141
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v13, v14, v13
	v_ldexp_f32 v14, v16, v15
	v_mul_f32_e32 v16, 0xbfb8aa3b, v232
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_dual_fmac_f32 v11, 0xbfb8aa3b, v236 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v16
	v_cndmask_b32_e64 v20, 0, 0x42800000, s18
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v11, v11
	v_mul_f32_e32 v27, 0xbfb8aa3b, v196
	v_cndmask_b32_e64 v18, 0, 0x42800000, s17
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v231 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v128
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v235 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v232
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v11, v11, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v85 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v138
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s17
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v48, 0xbfb8aa3b, v160 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v229
	v_ldexp_f32 v12, v12, v4
	v_dual_mul_f32 v4, 0xbfb8aa3b, v233 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v17, v18, v17
	v_ldexp_f32 v18, v20, v19
	v_mul_f32_e32 v20, 0xbfb8aa3b, v87
	v_dual_mul_f32 v36, 0xbfb8aa3b, v192 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v20
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v21
	v_exp_f32_e32 v15, v15
	v_mul_f32_e32 v47, 0xbfb8aa3b, v127
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0x42800000, s17
	v_cndmask_b32_e64 v24, 0, 0x42800000, s18
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s17
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v233
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v87
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v229
	v_ldexp_f32 v15, v15, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v230 :: v_dual_mul_f32 v63, 0xbfb8aa3b, v103
	v_exp_f32_e32 v16, v16
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s18
	v_mul_f32_e32 v44, 0xbfb8aa3b, v139
	v_dual_mul_f32 v54, 0xbfb8aa3b, v133 :: v_dual_add_f32 v11, 1.0, v11
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v16, v16, v4
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_ldexp_f32 v21, v22, v21
	v_ldexp_f32 v22, v24, v23
	v_dual_mul_f32 v23, 0xbfb8aa3b, v221 :: v_dual_mul_f32 v34, 0xbfb8aa3b, v147
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v230
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v23
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v11, v11, v236
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_and_b32 v6, 0x80, v219
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, s17
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_fmac_f32 v57, 0xbfb8aa3b, v221
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v19, v19, v4
	v_mul_f32_e32 v4, 0xbfb8aa3b, v228
	v_dual_mul_f32 v56, 0xbfb8aa3b, v105 :: v_dual_add_f32 v15, 1.0, v15
	v_exp_f32_e32 v68, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, s18, v84, v13, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v25, v20
	v_mul_f32_e32 v25, 0xbfb8aa3b, v171
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v83, null, v15, v15, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v25
	v_ldexp_f32 v61, v68, v61
	v_mul_f32_e32 v24, 0xbfb8aa3b, v220
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v69, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v64, 0xbfb8aa3b, v120
	v_cndmask_b32_e64 v25, 0, 0x42800000, s17
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v68, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v171 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v98
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v71, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, vcc_lo, v236, v11, v236
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v228 :: v_dual_add_f32 v18, 1.0, v18
	v_dual_mul_f32 v60, 0xbfb8aa3b, v99 :: v_dual_add_f32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v74, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v23
	v_dual_mul_f32 v10, 0xbfb8aa3b, v208 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v159
	v_ldexp_f32 v67, v71, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v13, v13, v84
	v_fma_f32 v78, -v69, v76, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v52, 0xbfb8aa3b, v96 :: v_dual_add_f32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v72, v23, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v78, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v8, 0xbfb8aa3b, v205 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v207
	v_dual_mul_f32 v30, 0xbfb8aa3b, v197 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v69, v76, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v28, 0xbfb8aa3b, v189 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v71, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v62, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v69, v69, v73, v76
	v_rcp_f32_e32 v73, v83
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_fmac_f32 v75, v79, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v14, v14, v234
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v69, v11, v236
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v38, 0xbfb8aa3b, v158 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v149
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v81, v79
	v_mul_f32_e32 v82, v80, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v32, 0xbfb8aa3b, v157 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v140
	v_dual_mul_f32 v40, 0xbfb8aa3b, v148 :: v_dual_mul_f32 v65, 0xbfb8aa3b, v121
	v_dual_mul_f32 v50, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v95
	v_dual_mul_f32 v42, 0xbfb8aa3b, v131 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v79, v81, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v220
	v_dual_mul_f32 v0, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v90
	v_dual_mul_f32 v46, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v76, v81
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v24
	v_mul_f32_e32 v57, 0xbfb8aa3b, v94
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 44, v166
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[70:71], v[1:2]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v70, v66
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v12, v12, v235
	v_rcp_f32_e32 v68, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v70, v68, 1.0
	v_fmac_f32_e32 v68, v77, v68
	v_div_scale_f32 v77, s17, v235, v12, v235
	s_mov_b32 vcc_lo, s17
	v_div_scale_f32 v76, s17, v85, v15, v85
	v_mul_f32_e32 v78, v77, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v70, v78, v77
	v_fmac_f32_e32 v78, v74, v68
	v_fma_f32 v74, -v71, v82, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v69, -v70, v78, v77
	v_fmac_f32_e32 v82, v74, v75
	v_div_scale_f32 v70, s19, v234, v14, v234
	v_fma_f32 v74, -v83, v73, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v68, v69, v68, v78
	v_fma_f32 v69, -v71, v82, v80
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v80, null, v17, v17, v232
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v24, 0xbfb8aa3b, v91 :: v_dual_mul_f32 v71, v70, v81
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v69, v69, v75, v82
	v_fmac_f32_e32 v73, v74, v73
	v_div_fixup_f32 v12, v68, v12, v235
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v77, -v79, v71, v70
	v_div_fixup_f32 v13, v69, v13, v84
	v_rcp_f32_e32 v69, v80
	v_mul_f32_e32 v78, v76, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v71, v77, v81
	v_fma_f32 v68, -v83, v78, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v70, -v79, v71, v70
	v_div_scale_f32 v79, null, v18, v18, v231
	v_fma_f32 v82, -v80, v69, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v68, v73
	v_div_fmas_f32 v70, v70, v81, v71
	s_mov_b32 vcc_lo, s17
	v_fmac_f32_e32 v69, v82, v69
	v_div_scale_f32 v74, null, v16, v16, v233
	v_div_scale_f32 v68, s18, v233, v16, v233
	v_fma_f32 v71, -v83, v78, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v75, v74
	v_div_scale_f32 v83, null, v19, v19, v230
	v_div_scale_f32 v81, s19, v232, v17, v232
	v_div_fmas_f32 v71, v71, v73, v78
	v_div_fixup_f32 v14, v70, v14, v234
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v78, v81, v69
	v_fma_f32 v77, -v74, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v4, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v15, v71, v15, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v80, v78, v81
	v_fmac_f32_e32 v75, v77, v75
	v_rcp_f32_e32 v77, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v78, v70, v69
	v_mul_f32_e32 v76, v68, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v73, -v74, v76, v68
	v_fma_f32 v82, -v79, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v76, v73, v75 :: v_dual_fmac_f32 v77, v82, v77
	v_div_scale_f32 v84, s17, v231, v18, v231
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v82, v83
	v_fma_f32 v68, -v74, v76, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v71, v84, v77
	v_div_scale_f32 v73, null, v20, v20, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v68, v68, v75, v76
	v_fma_f32 v70, -v79, v71, v84
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v73
	v_fma_f32 v85, -v83, v82, 1.0
	v_fma_f32 v75, -v80, v78, v81
	v_fmac_f32_e32 v71, v70, v77
	s_mov_b32 vcc_lo, s19
	v_div_fixup_f32 v16, v68, v16, v233
	v_fmac_f32_e32 v82, v85, v82
	v_div_scale_f32 v85, s20, v230, v19, v230
	v_div_fmas_f32 v69, v75, v69, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v73, v74, 1.0
	v_fma_f32 v75, -v79, v71, v84
	v_mul_f32_e32 v70, v85, v82
	s_mov_b32 vcc_lo, s17
	v_div_scale_f32 v79, s18, v86, v20, v86
	v_fmac_f32_e32 v74, v76, v74
	v_div_scale_f32 v76, null, v21, v21, v87
	v_fma_f32 v78, -v83, v70, v85
	v_div_fmas_f32 v71, v75, v77, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v77, v79, v74
	v_rcp_f32_e32 v75, v76
	v_div_fixup_f32 v68, v69, v17, v232
	v_fmac_f32_e32 v70, v78, v82
	v_div_fixup_f32 v69, v71, v18, v231
	v_div_scale_f32 v71, null, v22, v22, v229
	v_fma_f32 v18, -v73, v77, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v17, -v83, v70, v85
	s_mov_b32 vcc_lo, s20
	v_fma_f32 v78, -v76, v75, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v72
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v82, v70
	v_rcp_f32_e32 v70, v71
	v_fmac_f32_e32 v77, v18, v74
	v_fmac_f32_e32 v75, v78, v75
	v_div_scale_f32 v78, null, v72, v72, v228
	v_div_scale_f32 v18, s17, v87, v21, v87
	v_div_fixup_f32 v80, v17, v19, v230
	v_fma_f32 v17, -v73, v77, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v79, v78
	v_mul_f32_e32 v19, v18, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v71, v70, 1.0
	s_mov_b32 vcc_lo, s18
	v_div_fmas_f32 v17, v17, v74, v77
	v_fma_f32 v74, -v76, v19, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v73, v70
	v_div_scale_f32 v73, null, v61, v61, v221
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v66, 1.0, v66 :: v_dual_fmac_f32 v19, v74, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v81, -v78, v79, 1.0
	v_div_scale_f32 v77, s18, v229, v22, v229
	v_div_fixup_f32 v82, v17, v20, v86
	v_rcp_f32_e32 v17, v73
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, null, v66, v66, v220
	v_mul_f32_e32 v20, v77, v70
	v_div_scale_f32 v74, s19, v228, v72, v228
	v_fma_f32 v18, -v76, v19, v18
	v_div_scale_f32 v86, null, v67, v67, v171
	v_rcp_f32_e32 v85, v81
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v76, -v71, v20, v77
	v_mul_f32_e32 v83, v74, v79
	v_fma_f32 v84, -v73, v17, 1.0
	v_div_fmas_f32 v18, v18, v75, v19
	v_rcp_f32_e32 v75, v86
	v_fmac_f32_e32 v20, v76, v70
	v_fma_f32 v19, -v78, v83, v74
	v_fmac_f32_e32 v17, v84, v17
	v_div_scale_f32 v76, s17, v221, v61, v221
	v_fma_f32 v84, -v81, v85, 1.0
	v_div_fixup_f32 v87, v18, v21, v87
	v_fma_f32 v18, -v71, v20, v77
	v_fmac_f32_e32 v83, v19, v79
	v_mul_f32_e32 v19, v76, v17
	v_fma_f32 v71, -v86, v75, 1.0
	v_fmac_f32_e32 v85, v84, v85
	v_div_scale_f32 v21, s20, v220, v66, v220
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v75, v71, v75
	v_div_fmas_f32 v18, v18, v70, v20
	v_fma_f32 v20, -v78, v83, v74
	v_fma_f32 v70, -v73, v19, v76
	v_div_scale_f32 v71, s18, v171, v67, v171
	v_mul_f32_e32 v74, v21, v85
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v19, v70, v17
	v_div_fmas_f32 v20, v20, v79, v83
	v_mul_f32_e32 v77, v71, v75
	v_fma_f32 v70, -v81, v74, v21
	v_div_fixup_f32 v78, v18, v22, v229
	v_fma_f32 v18, -v73, v19, v76
	v_div_fixup_f32 v72, v20, v72, v228
	v_fma_f32 v20, -v86, v77, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v70, v85
	s_mov_b32 vcc_lo, s17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v10, v18, v17, v19
	v_fmac_f32_e32 v77, v20, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v81, v74, v21
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v86, v77, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v208
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v85, v74
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v20, v75, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v61, v10, v61, v221
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v207
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v9, v67, v171
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v226, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v10, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v66, v17, v66, v220
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v20, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v222, v16
	v_mul_f32_e32 v16, v218, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v20, v224, v14 :: v_dual_add_f32 v67, 1.0, v8
	v_dual_mul_f32 v14, v216, v80 :: v_dual_mul_f32 v9, v209, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v225, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v67, v67, v208
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v215, v82
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v227, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_ldexp_f32 v7, v10, v70
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, vcc_lo, v208, v67, v208
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v74, v10
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v212, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v74, v70
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v8, v12
	v_ldexp_f32 v7, v8, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v71, v73, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v214, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v73, v8, v73 :: v_dual_mul_f32 v18, v223, v15
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v15, v217, v69 :: v_dual_mul_f32 v8, v210, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v79, v77, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v71, v79, v77
	v_fmac_f32_e32 v79, v74, v73
	v_div_scale_f32 v69, null, v68, v68, v207
	v_div_scale_f32 v80, s17, v207, v68, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v71, v79, v77
	v_rcp_f32_e32 v75, v69
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v39, v71, v73, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v76, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v39, v67, v208
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v7, -v69, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v200
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, s18, v205, v76, v205
	v_fmac_f32_e32 v75, v7, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v211, v61
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v80, v75
	v_div_scale_f32 v74, null, v61, v61, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v69, v66, v80
	v_fmac_f32_e32 v66, v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v69, v66, v80
	v_div_fmas_f32 v30, v67, v75, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, s20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v213, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v76, v76, v205
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v197
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v78
	v_div_fixup_f32 v30, v30, v68, v207
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v78, v72, 1.0
	v_fmac_f32_e32 v72, v70, v72
	v_rcp_f32_e32 v70, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v81, v72
	v_fma_f32 v69, -v78, v77, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v74, v70, 1.0
	v_dual_fmac_f32 v77, v69, v72 :: v_dual_fmac_f32 v70, v79, v70
	v_div_scale_f32 v79, s19, v206, v61, v206
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v73, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v78, v77, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v79, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v72, v78, v72, v77
	v_fma_f32 v27, -v74, v66, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v73, 0xbfb8aa3b, v196 :: v_dual_fmac_f32 v66, v27, v70
	v_exp_f32_e32 v27, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v69, v69, v200
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v74, v66, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v185
	v_ldexp_f32 v27, v27, v67
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v74
	v_ldexp_f32 v67, v74, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v70, v66
	v_fma_f32 v70, -v75, v77, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v73, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v61, v206
	v_fmac_f32_e32 v77, v70, v77
	v_div_scale_f32 v70, vcc_lo, v200, v69, v200
	v_div_scale_f32 v71, null, v66, v66, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v73, 1.0, v27 :: v_dual_mul_f32 v80, v70, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v72, v76, v205
	v_rcp_f32_e32 v78, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v79, null, v73, v73, v196
	v_fma_f32 v68, -v75, v80, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v203, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v80, v68, v77
	v_fma_f32 v72, -v71, v78, 1.0
	v_div_scale_f32 v68, s17, v197, v66, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v75, v80, v70
	v_div_scale_f32 v75, null, v67, v67, v185
	v_fmac_f32_e32 v78, v72, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v79, v61, 1.0
	v_div_fmas_f32 v70, v70, v77, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v75
	v_mul_f32_e32 v74, v68, v78
	v_fmac_f32_e32 v61, v72, v61
	v_div_scale_f32 v72, s18, v196, v73, v196
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v71, v74, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v201, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v70, v69, v200
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v192
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v75, v76, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v80, v72, v61
	v_fmac_f32_e32 v74, v77, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v70, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v79, v80, v72
	v_fma_f32 v68, -v71, v74, v68
	v_div_scale_f32 v71, s19, v185, v67, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v190
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v69, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v37, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v68, v78, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_exp_f32_e32 v31, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v71, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v79, v80, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v75, v74, v71
	v_div_scale_f32 v79, null, v70, v70, v192
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v61, v72, v61, v80
	v_rcp_f32_e32 v69, v79
	v_fmac_f32_e32 v74, v37, v76
	v_div_fixup_f32 v37, v68, v66, v197
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v61, v73, v196
	v_fma_f32 v61, -v75, v74, v71
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v71, null, v66, v66, v190
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v79, v69, 1.0
	v_div_fmas_f32 v61, v61, v76, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v72, v69
	v_div_scale_f32 v72, s17, v192, v70, v192
	v_div_fixup_f32 v28, v61, v67, v185
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v68, v68, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v72, v69
	v_fma_f32 v75, -v71, v73, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v26, v204, v26 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v189
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v79, v74, v72
	v_fmac_f32_e32 v73, v75, v73
	v_div_scale_f32 v75, s18, v190, v66, v190
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v68, v68, v188
	v_fmac_f32_e32 v74, v76, v69
	v_mul_f32_e32 v76, v75, v73
	s_mov_b32 vcc_lo, s17
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v78, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v194, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v79, v74, v72
	v_fma_f32 v79, -v71, v76, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v67, v61
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v30, v202, v30 :: v_dual_mul_f32 v39, v193, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v72, v69, v74
	v_fmac_f32_e32 v76, v79, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v77, v78, 1.0
	v_div_fixup_f32 v67, v67, v70, v192
	v_fma_f32 v70, -v71, v76, v75
	v_div_scale_f32 v71, null, v61, v61, v189
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v69, v78
	v_div_scale_f32 v48, s17, v188, v68, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v160
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v75, v48, v78
	v_div_fmas_f32 v41, v70, v73, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s19
	v_exp_f32_e32 v74, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v71, v69, 1.0
	v_div_fixup_f32 v41, v41, v66, v190
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v159
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v77, v75, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v76, v69
	v_div_scale_f32 v76, s18, v189, v61, v189
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v66, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v74, v72
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v76, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v77, v75, v48
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v71, v66, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v158
	v_ldexp_f32 v70, v73, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	v_div_scale_f32 v73, null, v77, v77, v160
	v_fmac_f32_e32 v66, v38, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v48, v78, v75
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v74, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v71, v66, v76
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s19
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v48, v69, v66
	v_div_scale_f32 v66, vcc_lo, v160, v77, v160
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v73, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v38, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v48, v61, v189
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v70, v70, v159
	v_fmac_f32_e32 v74, v78, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v38, v32, v68, v188
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v172, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v79
	v_mul_f32_e32 v75, v66, v74
	v_div_scale_f32 v78, null, v72, v72, v158
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v61, v71
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v73, v75, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v80, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v165, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v79, v76, 1.0
	v_dual_fmac_f32 v75, v48, v74 :: v_dual_mul_f32 v48, v162, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v195, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v73, v75, v66
	v_fma_f32 v67, -v78, v80, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v66, v66, v74, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v67, v80
	v_div_scale_f32 v67, s18, v158, v72, v158
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v66, v66, v77, v160
	v_fmac_f32_e32 v76, v69, v76
	v_div_scale_f32 v69, s17, v159, v70, v159
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v68, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v79, v68, v69
	v_fmac_f32_e32 v68, v71, v76
	v_div_scale_f32 v71, null, v61, v61, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v69, -v79, v68, v69
	v_rcp_f32_e32 v45, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v68, v69, v76, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_exp_f32_e32 v40, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v67, v80
	v_div_scale_f32 v76, s17, v157, v61, v157
	v_fma_f32 v75, -v71, v45, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v68, v68, v70, v159
	v_fma_f32 v70, -v78, v69, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v75, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_ldexp_f32 v35, v40, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v69, v70, v80 :: v_dual_mul_f32 v40, v76, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v148
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v28, v161, v28 :: v_dual_add_f32 v77, 1.0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v71, v40, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v146
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v78, v69, v67
	v_div_scale_f32 v78, null, v77, v77, v149
	v_fmac_f32_e32 v40, v35, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v73
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v35, v75, v74
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_rcp_f32_e32 v73, v78
	v_div_fmas_f32 v67, v67, v80, v69
	v_fma_f32 v69, -v71, v40, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v147
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v40, v69, v45, v40
	v_div_scale_f32 v70, null, v71, v71, v148
	v_fma_f32 v35, -v78, v73, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, vcc_lo, v149, v77, v149
	v_rcp_f32_e32 v69, v70
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v73, v35, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v67, v72, v158
	v_div_fixup_f32 v34, v40, v61, v157
	v_div_scale_f32 v79, s17, v148, v71, v148
	v_mul_f32_e32 v67, v76, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v45, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, null, v75, v75, v146
	v_fma_f32 v40, -v70, v69, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v78, v67, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v156, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v69, v40, v69 :: v_dual_mul_f32 v40, v155, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v74, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v45, v154, v66 :: v_dual_mul_f32 v74, v79, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v68, v68, v147
	v_fma_f32 v66, -v78, v67, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v76, -v70, v74, v79
	v_fma_f32 v80, -v61, v72, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v78, v81
	v_div_fmas_f32 v59, v66, v73, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v74, v76, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	v_fmac_f32_e32 v72, v80, v72
	v_div_scale_f32 v80, s18, v146, v75, v146
	v_fma_f32 v70, -v70, v74, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v141
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v81, v78, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v80, v72
	v_div_fmas_f32 v49, v70, v69, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v59, v59, v77, v149
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v61, v73, v80
	v_div_fixup_f32 v49, v49, v71, v148
	v_fmac_f32_e32 v78, v76, v78
	v_div_scale_f32 v76, s19, v147, v68, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v143, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v67, v66
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v76, v78
	v_fmac_f32_e32 v73, v77, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v140
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v81, v69, v76
	v_fma_f32 v61, -v61, v73, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v69, v44, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v66, v66, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v61, v61, v72, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v81, v69, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v142, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v44, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v170, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_div_fmas_f32 v43, v43, v78, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v72, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v74, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v43, v68, v147
	v_div_scale_f32 v72, null, v69, v69, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v67, v73
	v_div_scale_f32 v67, vcc_lo, v141, v66, v141
	v_rcp_f32_e32 v78, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v80, v67, v73
	v_div_fixup_f32 v44, v61, v75, v146
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v145, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v77, v77, v139
	v_fma_f32 v68, -v74, v80, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v72, v78, 1.0
	v_rcp_f32_e32 v61, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v76, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v68, v73
	v_div_scale_f32 v68, s17, v140, v69, v140
	v_fmac_f32_e32 v78, v71, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v74, v80, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v74, v68, v78
	v_fma_f32 v71, -v79, v61, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v67, v67, v73, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v70, v70, v138
	v_fma_f32 v73, -v72, v74, v68
	v_fmac_f32_e32 v61, v71, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, s18, v139, v77, v139
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v187, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v74, v73, v78 :: v_dual_fmac_f32 v81, 0xbfb8aa3b, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v71, v61
	v_div_fixup_f32 v66, v67, v66, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v68, -v72, v74, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v81
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v79, v76, v71
	v_fma_f32 v73, -v75, v54, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v132
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v67, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	v_fmac_f32_e32 v54, v73, v54
	v_div_scale_f32 v73, s19, v138, v70, v138
	v_div_fmas_f32 v68, v68, v78, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v51, v80
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	v_exp_f32_e32 v50, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v73, v54
	v_fma_f32 v71, -v79, v76, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v75, v74, v73
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v80, null, v72, v72, v133
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v61, v71, v61, v76
	v_fmac_f32_e32 v74, v51, v54
	v_rcp_f32_e32 v67, v80
	v_div_fixup_f32 v51, v68, v69, v140
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v130
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v61, v77, v139
	v_fma_f32 v61, -v75, v74, v73
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v71, null, v68, v68, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v80, v67, 1.0
	v_div_fmas_f32 v54, v61, v54, v74
	v_rcp_f32_e32 v74, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, s17, v133, v72, v133
	v_fmac_f32_e32 v67, v73, v67
	v_div_fixup_f32 v42, v54, v70, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v69, v69, v78
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v61, v67
	v_fma_f32 v75, -v71, v74, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v70, 0xbfb8aa3b, v131 :: v_dual_add_f32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v76, -v80, v73, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, s18, v132, v68, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v69, v69, v130
	v_dual_fmac_f32 v73, v76, v67 :: v_dual_mul_f32 v76, v75, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v135, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v80, v73, v61
	v_fma_f32 v79, -v71, v76, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v70, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v61, v67, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v79, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v134, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v77, v78, 1.0
	v_fma_f32 v70, -v71, v76, v75
	v_div_scale_f32 v71, null, v54, v54, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v66, v78
	v_div_scale_f32 v0, s17, v130, v69, v130
	v_rcp_f32_e32 v66, v71
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v67, v67, v72, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v75, v0, v78
	v_div_fmas_f32 v53, v70, v74, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, s19
	v_exp_f32_e32 v73, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v71, v66, 1.0
	v_div_fixup_f32 v53, v53, v68, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v128
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v77, v75, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v76, v66
	v_div_scale_f32 v76, s18, v131, v54, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v68, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v73, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v144, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v76, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v77, v75, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v71, v68, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v74, v70
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v77, v77, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v68, v47, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	v_div_scale_f32 v79, null, v70, v70, v128
	v_div_fmas_f32 v0, v0, v78, v75
	v_fma_f32 v46, -v71, v68, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_rcp_f32_e32 v76, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v74, v73, 1.0
	v_div_fmas_f32 v46, v46, v66, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, vcc_lo, v129, v77, v129
	v_fmac_f32_e32 v73, v78, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v46, v54, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v79, v76, 1.0
	v_dual_mul_f32 v75, v66, v73 :: v_dual_add_f32 v72, 1.0, v47
	v_div_fixup_f32 v0, v0, v69, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v68, v76
	v_fma_f32 v69, -v74, v75, v66
	v_div_scale_f32 v68, s17, v128, v70, v128
	v_div_scale_f32 v78, null, v72, v72, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v75, v69, v73 :: v_dual_mul_f32 v80, v68, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v152, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v81, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v54, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v74, v75, v66
	v_fma_f32 v69, -v79, v80, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v54, v150, v67 :: v_dual_mul_f32 v53, v151, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v73, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v69, v76
	v_fma_f32 v67, -v78, v81, 1.0
	v_div_scale_f32 v69, null, v0, v0, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v79, v80, v68
	v_fmac_f32_e32 v81, v67, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v65, v69
	v_div_scale_f32 v67, s18, v127, v72, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v121
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	v_mul_f32_e32 v74, v67, v81
	v_div_fmas_f32 v68, v68, v76, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v75, v66, v77, v129
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v66, -v69, v65, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v68, v68, v70, v128
	v_fma_f32 v70, -v78, v74, v67
	v_div_scale_f32 v64, s17, v126, v0, v126
	v_fmac_f32_e32 v65, v66, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v70, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	v_ldexp_f32 v70, v73, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v64, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v78, v74, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v69, v56, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v76
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v105
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v70, v70, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v77, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v66, v76, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v69, v56, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v106
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v55, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v78, v77, 1.0
	v_div_fmas_f32 v67, v67, v81, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v69, v69, v120
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v76, 1.0, v55 :: v_dual_fmac_f32 v77, v66, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, s18, v121, v70, v121
	s_mov_b32 vcc_lo, s17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v137, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v74
	v_div_fmas_f32 v55, v64, v65, v56
	v_div_scale_f32 v64, null, v76, v76, v105
	v_mul_f32_e32 v65, v66, v77
	v_div_fixup_f32 v56, v67, v72, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v71, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v64
	v_div_fixup_f32 v0, v55, v0, v126
	v_fma_f32 v72, -v78, v65, v66
	v_fma_f32 v73, -v74, v79, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v136, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v125, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v65, v72, v77 :: v_dual_add_f32 v0, 1.0, v67
	v_fmac_f32_e32 v79, v73, v79
	v_div_scale_f32 v72, s17, v120, v69, v120
	v_fma_f32 v67, -v64, v71, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v78, v65, v66
	v_div_scale_f32 v73, null, v0, v0, v106
	v_mul_f32_e32 v78, v72, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v71, v67, v71
	v_div_scale_f32 v80, s19, v105, v76, v105
	v_div_fmas_f32 v65, v66, v77, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v81, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v66, v123, v68 :: v_dual_mul_f32 v67, v122, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v74, v78, v72
	v_mul_f32_e32 v75, v80, v71
	v_div_fixup_f32 v65, v65, v70, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v68, v79
	v_fma_f32 v68, -v64, v75, v80
	v_fma_f32 v63, -v73, v81, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v103
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v74, v78, v72
	v_fmac_f32_e32 v75, v68, v71
	v_fmac_f32_e32 v81, v63, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v77
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v97
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s17
	v_div_scale_f32 v62, s18, v106, v0, v106
	v_div_fmas_f32 v72, v72, v79, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	v_exp_f32_e32 v60, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v62, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v68, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v64, v75, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v73, v74, v62
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v99
	v_ldexp_f32 v60, v60, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v71, v75
	v_fmac_f32_e32 v74, v77, v81
	v_div_scale_f32 v71, null, v68, v68, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v73, v74, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v71
	v_div_scale_f32 v77, null, v60, v60, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v69, v72, v69, v120
	v_div_fmas_f32 v62, v62, v81, v74
	v_rcp_f32_e32 v74, v77
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v58, v70
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v71, v73, 1.0
	v_div_fixup_f32 v0, v62, v0, v106
	v_div_scale_f32 v80, vcc_lo, v103, v68, v103
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v78, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v70, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v77, v74, 1.0
	v_div_fixup_f32 v63, v64, v76, v105
	v_div_scale_f32 v79, null, v72, v72, v99
	v_mul_f32_e32 v64, v80, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v74, v62, v74
	v_div_scale_f32 v76, s17, v97, v60, v97
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v104, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v0, v79
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v62, v115, v63 :: v_dual_mul_f32 v63, v114, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v78, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v71, v64, v80
	v_mul_f32_e32 v78, v76, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v153, v46
	v_mul_f32_e32 v70, v113, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v75, v73
	v_fma_f32 v69, -v77, v78, v76
	v_fma_f32 v81, -v79, v0, 1.0
	v_div_scale_f32 v75, s18, v99, v72, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v71, v64, v80
	v_fmac_f32_e32 v78, v69, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v0, v81, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v65, v65, v98
	v_div_fmas_f32 v64, v71, v73, v64
	v_fma_f32 v71, -v77, v78, v76
	s_mov_b32 vcc_lo, s17
	v_mul_f32_e32 v57, v75, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v82, 0, 0x42800000, s19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v81
	v_div_fmas_f32 v71, v71, v74, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v79, v57, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v94
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s19
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v25
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v73, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v82
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v81, v69, 1.0
	v_div_scale_f32 v33, s17, v98, v65, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v76, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v52, v69
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v73, v73, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v79, v57, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v78, v33, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v75, v0, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v75, v77
	v_ldexp_f32 v74, v76, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v81, v78, v33
	v_div_scale_f32 v77, null, v73, v73, v94
	v_div_fixup_f32 v0, v0, v72, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v57, v69
	v_div_fixup_f32 v57, v64, v68, v103
	v_rcp_f32_e32 v68, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_ldexp_f32 v29, v75, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, null, v72, v72, v96
	v_fma_f32 v33, -v81, v78, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v77, v68, 1.0
	s_mov_b32 vcc_lo, s17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v69, v78
	v_div_scale_f32 v78, vcc_lo, v94, v73, v94
	v_fmac_f32_e32 v68, v75, v68
	v_div_scale_f32 v75, null, v29, v29, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v52, v76, 1.0
	v_div_fixup_f32 v33, v33, v65, v98
	v_mul_f32_e32 v81, v78, v68
	v_div_scale_f32 v82, s17, v96, v72, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v76, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v79, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v80, v75
	v_div_fixup_f32 v65, v71, v60, v97
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v119, v33
	v_mul_f32_e32 v60, v118, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v77, v81, v78
	v_mul_f32_e32 v33, v82, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v117, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v0, v68
	v_fma_f32 v0, -v52, v33, v82
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v69, -v75, v80, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v71, v79, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v124, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, s18, v88, v29, v88
	v_fmac_f32_e32 v33, v0, v76
	v_dual_fmac_f32 v80, v69, v80 :: v_dual_mul_f32 v69, v116, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v77, v81, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v52, v33, v82
	v_mul_f32_e32 v0, v74, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v68, v71, v68, v81
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v71, -v75, v0, v74
	v_div_fmas_f32 v25, v52, v76, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, s19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v71, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s19
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v90
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v75, v0, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v57, v57, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v4, v76
	v_cndmask_b32_e64 v76, 0, 0x42800000, s17
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v74, v80, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v52, v33
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v23, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v29, v88
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v76
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s17
	v_ldexp_f32 v4, v4, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v72, v96
	v_div_scale_f32 v71, null, v29, v29, v90
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v78, -v24, v23, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, vcc_lo, v95, v57, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v4, v4, v91
	v_fmac_f32_e32 v23, v78, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v71
	v_div_scale_f32 v74, null, v52, v52, v92
	v_rcp_f32_e32 v78, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v82, null, v33, v33, v93
	v_mul_f32_e32 v77, v72, v23
	v_rcp_f32_e32 v80, v74
	v_div_fixup_f32 v68, v68, v73, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v79, -v71, v75, 1.0
	v_fma_f32 v81, -v24, v77, v72
	v_fma_f32 v83, -v76, v78, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v79, v75
	v_div_scale_f32 v79, s17, v90, v29, v90
	v_fmac_f32_e32 v77, v81, v23
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v74, v80, 1.0
	v_fmac_f32_e32 v78, v83, v78
	v_div_scale_f32 v83, s18, v91, v4, v91
	v_fma_f32 v86, -v82, v84, 1.0
	v_dual_mul_f32 v85, v79, v75 :: v_dual_fmac_f32 v80, v81, v80
	v_div_scale_f32 v81, s19, v92, v52, v92
	v_fma_f32 v24, -v24, v77, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v87, v83, v78 :: v_dual_fmac_f32 v84, v86, v84
	v_div_scale_f32 v86, s20, v93, v33, v93
	v_fma_f32 v72, -v71, v85, v79
	v_mul_f32_e32 v88, v81, v80
	v_div_fmas_f32 v23, v24, v23, v77
	v_fma_f32 v24, -v76, v87, v83
	v_mul_f32_e32 v77, v86, v84
	v_fmac_f32_e32 v85, v72, v75
	v_fma_f32 v72, -v74, v88, v81
	v_div_fixup_f32 v23, v23, v57, v95
	v_fmac_f32_e32 v87, v24, v78
	v_fma_f32 v24, -v82, v77, v86
	v_fma_f32 v57, -v71, v85, v79
	v_fmac_f32_e32 v88, v72, v80
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v71, -v76, v87, v83
	v_fmac_f32_e32 v77, v24, v84
	v_div_fmas_f32 v57, v57, v75, v85
	v_fma_f32 v24, -v74, v88, v81
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v111, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v75, v71, v78, v87
	v_fma_f32 v71, -v82, v77, v86
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v110, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v24, v80, v88
	s_mov_b32 vcc_lo, s20
	v_div_fixup_f32 v4, v75, v4, v91
	v_div_fmas_f32 v76, v71, v84, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v112, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v24, v52, v92
	v_div_fixup_f32 v24, v57, v29, v90
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v75, v109, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v76, v33, v93
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v101, v4
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, |v27|, |v39|, |v37|
.Ltmp6:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v100, v24
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, |v48|, |v41|, |v38|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v89, v0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v36|, |v30|
	v_max3_f32 v25, |v32|, |v21|, |v19|
	v_max_f32_e64 v29, |v45|, |v40|
	v_max3_f32 v33, |v35|, |v59|, |v49|
	v_max3_f32 v76, |v61|, |v51|, |v50|
	v_max3_f32 v77, |v42|, |v17|, |v16|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v102, v23
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, |v31|, |v28|, |v22|
	v_max3_f32 v0, v0, |v26|, v4
	v_max3_f32 v4, v24, v25, |v20|
	v_max3_f32 v24, |v44|, |v43|, |v18|
	v_max3_f32 v25, v29, |v34|, v33
	v_max3_f32 v29, v76, v77, |v15|
	v_max_f32_e64 v33, |v54|, |v53|
	v_max3_f32 v76, |v47|, |v67|, |v66|
	v_max3_f32 v77, |v70|, |v63|, |v62|
	v_max3_f32 v78, |v58|, |v13|, |v11|
	v_max3_f32 v0, v0, v23, v4
	v_max3_f32 v23, v25, v24, v29
	v_max3_f32 v4, |v56|, |v55|, |v14|
	v_max3_f32 v24, v33, |v46|, v76
	v_max3_f32 v25, v77, v78, |v12|
	v_max_f32_e64 v29, |v69|, |v65|
	v_max3_f32 v33, |v60|, |v75|, |v74|
	v_max3_f32 v76, |v73|, |v68|, |v57|
	v_max3_f32 v77, |v52|, |v7|, |v8|
	s_mov_b32 s17, 0x76543210
	v_max3_f32 v24, v24, v4, v25
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v78, v0, s17, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v72|, |v71|, |v10|
	v_max3_f32 v29, v29, |v64|, v33
	v_max3_f32 v33, v76, v77, |v9|
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v77, v23, s17, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v78, v78
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v78, v24, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v82, 8, v219
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v29, v25, v33
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v78, v78, v78 :: v_dual_and_b32 v33, 3, v219
	v_dual_max_f32 v76, v0, v76 :: v_dual_lshlrev_b32 v29, 4, v219
	v_max_f32_e32 v77, v23, v77
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v23, 4, v219
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v79, v33, 9, 0
	v_lshlrev_b32_e32 v80, 5, v33
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v24, v78
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v25, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v24, 0x60, v219
	v_lshl_add_u32 v79, v23, 2, v79
	v_and_or_b32 v81, 0x680, v29, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_lshlrev_b32 v83, 1, v6
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v80, v80, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v84, v82, 4, v79
	v_lshrrev_b32_e32 v85, 3, v6
	v_xor_b32_e32 v81, v81, v24
	v_lshl_add_u32 v86, v23, 6, 0
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v25, v0
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v84, v83, v80
.Ltmp25:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v25, 42, v166
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v3, s18, s68, v3
.Ltmp26:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v80, v86, v85, v81
	ds_store_b128 v0, v[76:79]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp27:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 40, v166
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[76:79], v80
.Ltmp29:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s17, s68, v25
	v_add_co_ci_u32_e64 v4, null, s69, 0, s18
	v_add_co_ci_u32_e64 v81, null, s69, 0, s17
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[72:73], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 38, v166
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s22, s68, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s22
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[72:73], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s22, s68, v2
	v_add_co_ci_u32_e64 v3, null, s69, 0, s22
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[70:71], v[0:1]
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, v76
.Ltmp31:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[72:73], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 36, v166
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[72:73], v[2:3]
.Ltmp32:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v25, v78
.Ltmp33:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s26, s68, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s26
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v4, v4 :: v_dual_mov_b32 v4, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v25, v25 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[72:73], v[0:1]
.Ltmp37:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v79, v79
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v79, v79 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.h, 0
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v76, v76 :: v_dual_max_f32 v1, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v76, v79, v79
.Ltmp41:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v77, 34, v166
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v3 :: v_dual_max_f32 v3, v4, v4
	v_dual_max_f32 v4, v78, v78 :: v_dual_lshlrev_b32 v33, 4, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v78, v2 :: v_dual_lshlrev_b32 v23, 5, v23
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v1, v3 :: v_dual_max_f32 v4, v4, v25
	v_max_f32_e32 v25, v0, v76
.Ltmp45:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s28, s68, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v3
.Ltmp47:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s69, 0, s28
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v25
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v77, v4
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[70:71], v[0:1]
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v78, v78
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[72:73], v[0:1]
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v76, v76
	v_max_f32_e32 v76, v79, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v2, v2, v78 :: v_dual_max_f32 v1, v77, v77
.Ltmp55:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v77, 32, v166
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v25, v25, v76 :: v_dual_mov_b32 v78, v2
	v_max_f32_e32 v4, v4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s30, s68, v77
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v76, v3 :: v_dual_mov_b32 v79, v25
.Ltmp59:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s69, 0, s30
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v77, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[70:71], v[0:1]
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v78, v78
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[72:73], v[0:1]
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v76, v76 :: v_dual_max_f32 v76, v79, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v0, v2, v78
	v_max_f32_e32 v2, v77, v77
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v77, 1, v24
	v_lshlrev_b32_e32 v78, 3, v82
	v_add_nc_u32_e32 v79, 0, v6
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v3, v1
	v_max_f32_e32 v3, v25, v76
	v_dual_max_f32 v2, v4, v2 :: v_dual_add_nc_u32 v25, 0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v79, v77, v78
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v23, v25, v23, v78
.Ltmp69:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v76, s33, s68, v186
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v4, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v23
.Ltmp71:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v77, null, s69, 0, s33
	v_add_co_u32 v78, s33, s68, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v79, null, s69, 0, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[70:71], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[72:73], v[80:81]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v80, s33, s68, v247
	v_add_co_ci_u32_e64 v81, null, s69, 0, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[70:71], v[76:77]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[72:73], v[76:77]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v76, s38, s68, v182
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[70:71], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[72:73], v[78:79]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v77, null, s69, 0, s38
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v0, v0, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s38, s68, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v79, null, s69, 0, s38
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v4, 0x2b8cbccc, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[70:71], v[76:77]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[72:73], v[76:77]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v76, s43, s68, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v0, null, 0x40e00000, 0x40e00000, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[70:71], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[72:73], v[78:79]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v77, null, s69, 0, s43
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v23, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s43, s68, v177
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[70:71], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[72:73], v[80:81]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v79, null, s69, 0, s43
	v_add_co_u32 v80, s43, s68, v241
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v0, v23, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v81, null, s69, 0, s43
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[70:71], v[76:77]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v2, 0x2b8cbccc, v2 :: v_dual_fmac_f32 v23, v25, v23
	v_div_scale_f32 v25, vcc_lo, v4, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[70:71], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[72:73], v[80:81]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v81, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v80, v25, v23
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[72:73], v[76:77]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v76, s49, s68, v174
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[70:71], v[78:79]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v82, -v0, v80, v25
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[72:73], v[78:79]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v77, null, s69, 0, s49
	v_add_co_u32 v78, s49, s68, v173
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v79, null, s69, 0, s49
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v83, v81
	v_dual_max_f32 v1, v1, v1 :: v_dual_fmac_f32 v80, v82, v23
	v_max_f32_e32 v3, v3, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[70:71], v[76:77]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[72:73], v[76:77]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v76, s52, s68, v164
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[70:71], v[78:79]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v77, null, s69, 0, s52
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[72:73], v[78:79]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v78, 0x2b8cbccc, v1
	v_fma_f32 v0, -v0, v80, v25
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	v_fma_f32 v1, -v81, v83, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[70:71], v[76:77]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v79, null, 0x40e00000, 0x40e00000, v78
	v_div_fmas_f32 v23, v0, v23, v80
	v_div_scale_f32 v80, null, 0x40e00000, 0x40e00000, v3
	v_fmac_f32_e32 v83, v1, v83
	v_div_scale_f32 v25, vcc_lo, v2, 0x40e00000, v2
	v_rcp_f32_e32 v82, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v85, v80
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s54, s68, v163
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v23, 0x40e00000, v4
	v_mul_f32_e32 v84, v25, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s69, 0, s54
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[72:73], v[76:77]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v76.l, v4.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v23, -v81, v84, v25
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v76.h, v86.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v77, -v79, v82, 1.0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[72:73], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v0, -v80, v85, 1.0
	v_dual_fmac_f32 v84, v23, v83 :: v_dual_and_b32 v23, 1, v76
	v_fmac_f32_e32 v82, v77, v82
	v_div_scale_f32 v76, s59, v78, 0x40e00000, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v0, v85
	v_div_scale_f32 v77, s60, v3, 0x40e00000, v3
	v_fma_f32 v25, -v81, v84, v25
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v23, v4, v23, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v4, v76, v82 :: v_dual_mul_f32 v81, v77, v85
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s57, s68, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v25, v25, v83, v84
	v_fma_f32 v83, -v79, v4, v76
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v84, 0xffff0000, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v87, -v80, v81, v77
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s69, 0, s57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v4, v83, v82
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v84, v84, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v81, v87, v85
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[72:73], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v0, -v79, v4, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v79, v83
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v80, v81, v77
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v2, v25, 0x40e00000, v2
	v_div_fmas_f32 v0, v0, v82, v4
	s_mov_b32 vcc_lo, s60
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v77.h, v86.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v85, v81
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v2.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v0, 0x40e00000, v78
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v4, -v83, v79, 1.0
	v_div_scale_f32 v78, null, v84, v84, v30
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v76, v1, 0x40e00000, v3
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v25, 1, v86
	v_mov_b16_e32 v77.l, v0.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v4, v79
	v_rcp_f32_e32 v80, v78
	v_div_scale_f32 v81, vcc_lo, v36, v84, v36
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v76.h
	v_add3_u32 v1, v2, v25, 0x7fff
	v_and_b32_e32 v2, 1, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v82, v81, v79
	v_div_scale_f32 v85, null, v84, v84, v26
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v86, 1, v86
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, null, v84, v84, v27
	v_fma_f32 v77, -v78, v80, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v25, v0, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v83, v82, v81
	v_rcp_f32_e32 v87, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v76, v86, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v88
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s59, s68, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s69, 0, s59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v77, v80
	v_div_scale_f32 v89, s59, v30, v84, v30
	v_fmac_f32_e32 v82, v0, v79
	v_fma_f32 v91, -v85, v87, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v88, v86, 1.0
	v_mul_f32_e32 v90, v89, v80
	v_div_scale_f32 v93, null, v84, v84, v39
	v_fma_f32 v81, -v83, v82, v81
	v_fmac_f32_e32 v87, v91, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v78, v90, v89
	v_div_scale_f32 v91, s60, v26, v84, v26
	v_div_fmas_f32 v79, v81, v79, v82
	v_fmac_f32_e32 v86, v92, v86
	v_rcp_f32_e32 v82, v93
	v_div_scale_f32 v92, null, v84, v84, v37
	v_fmac_f32_e32 v90, v83, v80
	v_mul_f32_e32 v81, v91, v87
	v_div_scale_f32 v83, s61, v27, v84, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v94, v92
	v_div_fixup_f32 v36, v79, v84, v36
	v_fma_f32 v78, -v78, v90, v89
	v_fma_f32 v79, -v85, v81, v91
	v_mul_f32_e32 v89, v83, v86
	v_fma_f32 v95, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s59
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v77, 0xffff0000, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v80, v90
	v_fmac_f32_e32 v81, v79, v87
	v_fma_f32 v79, -v88, v89, v83
	v_fmac_f32_e32 v82, v95, v82
	v_div_scale_f32 v80, s59, v39, v84, v39
	v_fma_f32 v90, -v92, v94, 1.0
	v_div_fixup_f32 v30, v78, v84, v30
	v_fma_f32 v78, -v85, v81, v91
	v_fmac_f32_e32 v89, v79, v86
	v_mul_f32_e32 v79, v80, v82
	v_fmac_f32_e32 v94, v90, v94
	v_div_scale_f32 v90, null, v84, v84, v31
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v85, s62, v37, v84, v37
	v_div_fmas_f32 v78, v78, v87, v81
	v_fma_f32 v81, -v88, v89, v83
	v_fma_f32 v83, -v93, v79, v80
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v91, null, v84, v84, v28
	v_mul_f32_e32 v88, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v83, v82
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v83, v91
	v_div_fmas_f32 v81, v81, v86, v89
	v_fma_f32 v86, -v92, v88, v85
	v_div_fixup_f32 v26, v78, v84, v26
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v90, v87, 1.0
	v_fma_f32 v78, -v93, v79, v80
	v_div_fixup_f32 v27, v81, v84, v27
	v_fmac_f32_e32 v88, v86, v94
	v_div_scale_f32 v80, s60, v31, v84, v31
	v_fmac_f32_e32 v87, v89, v87
	v_fma_f32 v81, -v91, v83, 1.0
	v_div_scale_f32 v86, null, v84, v84, v22
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v89, null, v84, v84, v48
	v_div_fmas_f32 v78, v78, v82, v79
	v_fma_f32 v79, -v92, v88, v85
	v_mul_f32_e32 v82, v80, v87
	v_fmac_f32_e32 v83, v81, v83
	v_rcp_f32_e32 v81, v86
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v85, s59, v28, v84, v28
	v_div_fmas_f32 v79, v79, v94, v88
	v_fma_f32 v88, -v90, v82, v80
	v_rcp_f32_e32 v94, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v92, v85, v83
	v_div_fixup_f32 v39, v78, v84, v39
	v_div_fixup_f32 v37, v79, v84, v37
	v_fma_f32 v93, -v86, v81, 1.0
	v_fmac_f32_e32 v82, v88, v87
	v_div_scale_f32 v88, null, v84, v84, v41
	v_fma_f32 v78, -v91, v92, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v79, s61, v22, v84, v22
	v_fma_f32 v93, -v89, v94, 1.0
	v_fma_f32 v80, -v90, v82, v80
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v92, v78, v83
	v_mul_f32_e32 v78, v79, v81
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s62, v48, v84, v48
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v95, null, v84, v84, v38
	v_div_fmas_f32 v80, v80, v87, v82
	v_fma_f32 v82, -v91, v92, v85
	v_fma_f32 v85, -v86, v78, v79
	v_mul_f32_e32 v87, v93, v94
	v_fma_f32 v91, -v88, v90, 1.0
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v31, v80, v84, v31
	v_div_fmas_f32 v82, v82, v83, v92
	v_fmac_f32_e32 v78, v85, v81
	v_rcp_f32_e32 v83, v95
	v_fma_f32 v85, -v89, v87, v93
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, s59, v41, v84, v41
	v_fma_f32 v79, -v86, v78, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v85, v94
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v80, v91, v90
	v_div_fixup_f32 v28, v82, v84, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v84, v84, v32
	v_div_fmas_f32 v78, v79, v81, v78
	v_fma_f32 v79, -v89, v87, v93
	v_fma_f32 v81, -v88, v80, v91
	v_div_scale_f32 v89, null, v84, v84, v21
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v81, v90
	v_rcp_f32_e32 v81, v89
	v_div_scale_f32 v86, s60, v38, v84, v38
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v22, v78, v84, v22
	v_div_fmas_f32 v79, v79, v94, v87
	v_mul_f32_e32 v87, v86, v83
	v_fma_f32 v78, -v88, v80, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v85, v82, 1.0
	v_div_scale_f32 v88, s61, v32, v84, v32
	v_fma_f32 v91, -v89, v81, 1.0
	v_div_fixup_f32 v48, v79, v84, v48
	v_fma_f32 v79, -v95, v87, v86
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v84, v84, v19
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v84, v84, v20
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v87, v79, v83
	v_div_fmas_f32 v78, v78, v90, v80
	v_mul_f32_e32 v79, v88, v82
	v_rcp_f32_e32 v80, v92
	v_div_scale_f32 v90, s59, v21, v84, v21
	v_rcp_f32_e32 v94, v91
	v_div_fixup_f32 v41, v78, v84, v41
	v_fma_f32 v78, -v95, v87, v86
	v_fma_f32 v86, -v85, v79, v88
	v_mul_f32_e32 v93, v90, v81
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v92, v80, 1.0
	v_div_fmas_f32 v78, v78, v83, v87
	v_fmac_f32_e32 v79, v86, v82
	v_fma_f32 v83, -v89, v93, v90
	v_fma_f32 v87, -v91, v94, 1.0
	v_fmac_f32_e32 v80, v95, v80
	v_div_scale_f32 v86, s60, v19, v84, v19
	v_div_fixup_f32 v38, v78, v84, v38
	v_fma_f32 v78, -v85, v79, v88
	v_fmac_f32_e32 v93, v83, v81
	v_fmac_f32_e32 v94, v87, v94
	v_div_scale_f32 v87, null, v77, v77, v45
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v83, v86, v80
	v_div_scale_f32 v85, s62, v20, v84, v20
	v_div_fmas_f32 v78, v78, v82, v79
	v_fma_f32 v79, -v89, v93, v90
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v90, null, v77, v77, v40
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v82, -v92, v83, v86
	v_mul_f32_e32 v89, v85, v94
	v_div_fmas_f32 v79, v79, v81, v93
	v_rcp_f32_e32 v81, v90
	v_div_fixup_f32 v32, v78, v84, v32
	v_fmac_f32_e32 v83, v82, v80
	v_fma_f32 v82, -v91, v89, v85
	v_fma_f32 v93, -v87, v88, 1.0
	v_div_fixup_f32 v21, v79, v84, v21
	v_div_scale_f32 v79, s59, v45, v77, v45
	v_fma_f32 v78, -v92, v83, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v89, v82, v94 :: v_dual_fmac_f32 v88, v93, v88
	v_fma_f32 v82, -v90, v81, 1.0
	v_div_scale_f32 v86, null, v77, v77, v34
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v80, v83
	v_fma_f32 v80, -v91, v89, v85
	v_mul_f32_e32 v83, v79, v88
	v_fmac_f32_e32 v81, v82, v81
	v_rcp_f32_e32 v82, v86
	v_div_scale_f32 v85, s60, v40, v77, v40
	v_div_scale_f32 v91, null, v77, v77, v35
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v92, v85, v81
	v_div_fmas_f32 v80, v80, v94, v89
	v_fma_f32 v89, -v87, v83, v79
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v82, 1.0
	v_div_fixup_f32 v19, v78, v84, v19
	v_fma_f32 v78, -v90, v92, v85
	v_fmac_f32_e32 v83, v89, v88
	v_div_fixup_f32 v20, v80, v84, v20
	v_fmac_f32_e32 v82, v93, v82
	v_div_scale_f32 v80, s61, v34, v77, v34
	v_div_scale_f32 v84, null, v77, v77, v59
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v91, v94, 1.0
	v_fma_f32 v79, -v87, v83, v79
	v_fmac_f32_e32 v92, v78, v81
	s_mov_b32 vcc_lo, s59
	v_mul_f32_e32 v78, v80, v82
	v_rcp_f32_e32 v87, v84
	v_fmac_f32_e32 v94, v89, v94
	v_div_scale_f32 v89, s62, v35, v77, v35
	v_div_fmas_f32 v79, v79, v88, v83
	v_fma_f32 v83, -v90, v92, v85
	v_div_scale_f32 v93, null, v77, v77, v49
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v85, -v86, v78, v80
	v_mul_f32_e32 v88, v89, v94
	v_div_fmas_f32 v81, v83, v81, v92
	v_rcp_f32_e32 v83, v93
	v_fma_f32 v90, -v84, v87, 1.0
	v_fmac_f32_e32 v78, v85, v82
	v_fma_f32 v85, -v91, v88, v89
	v_div_fixup_f32 v40, v81, v77, v40
	v_div_fixup_f32 v45, v79, v77, v45
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, s59, v59, v77, v59
	v_fmac_f32_e32 v88, v85, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v93, v83, 1.0
	v_div_scale_f32 v85, null, v77, v77, v44
	v_fma_f32 v79, -v86, v78, v80
	v_mul_f32_e32 v80, v90, v87
	v_fmac_f32_e32 v83, v81, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v85
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v86, s60, v49, v77, v49
	v_div_fmas_f32 v78, v79, v82, v78
	v_fma_f32 v79, -v91, v88, v89
	v_fma_f32 v82, -v84, v80, v90
	v_div_scale_f32 v89, null, v77, v77, v43
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v85, v81, 1.0
	v_fmac_f32_e32 v80, v82, v87
	v_rcp_f32_e32 v82, v89
	v_div_fmas_f32 v79, v79, v94, v88
	v_mul_f32_e32 v88, v86, v83
	v_div_fixup_f32 v34, v78, v77, v34
	v_fma_f32 v78, -v84, v80, v90
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v77, v77, v18
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v35, v79, v77, v35
	v_fma_f32 v79, -v93, v88, v86
	v_div_scale_f32 v84, s61, v44, v77, v44
	v_fma_f32 v90, -v89, v82, 1.0
	v_div_fmas_f32 v78, v78, v87, v80
	v_rcp_f32_e32 v80, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v79, v83 :: v_dual_mul_f32 v79, v84, v81
	v_fmac_f32_e32 v82, v90, v82
	v_div_scale_f32 v87, s59, v43, v77, v43
	v_div_scale_f32 v90, null, v77, v77, v61
	v_div_fixup_f32 v59, v78, v77, v59
	v_fma_f32 v78, -v93, v88, v86
	v_fma_f32 v86, -v85, v79, v84
	v_mul_f32_e32 v92, v87, v82
	v_rcp_f32_e32 v93, v90
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v79, v86, v81
	v_div_fmas_f32 v78, v78, v83, v88
	v_fma_f32 v83, -v89, v92, v87
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v86, s60, v18, v77, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v49, v78, v77, v49
	v_fma_f32 v88, -v90, v93, 1.0
	v_fma_f32 v78, -v85, v79, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v92, v83, v82 :: v_dual_mul_f32 v83, v86, v80
	v_div_scale_f32 v85, null, v77, v77, v51
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v93, v88, v93
	v_div_scale_f32 v84, s62, v61, v77, v61
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v89, v92, v87
	v_fma_f32 v81, -v91, v83, v86
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v89, null, v77, v77, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v88, v84, v93 :: v_dual_fmac_f32 v83, v81, v80
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v81, v89
	v_div_fmas_f32 v79, v79, v82, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v90, v88, v84
	v_div_fixup_f32 v44, v78, v77, v44
	v_fma_f32 v92, -v85, v87, 1.0
	v_fma_f32 v78, -v91, v83, v86
	v_div_fixup_f32 v43, v79, v77, v43
	v_fmac_f32_e32 v88, v82, v93
	v_div_scale_f32 v79, s59, v51, v77, v51
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v82, -v89, v81, 1.0
	v_div_scale_f32 v86, null, v77, v77, v42
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v94, null, v77, v77, v15
	v_div_fmas_f32 v78, v78, v80, v83
	v_fma_f32 v80, -v90, v88, v84
	v_mul_f32_e32 v83, v79, v87
	v_fmac_f32_e32 v81, v82, v81
	v_rcp_f32_e32 v82, v86
	v_div_scale_f32 v84, s60, v50, v77, v50
	v_div_scale_f32 v90, null, v77, v77, v17
	s_mov_b32 vcc_lo, s62
	v_dual_mul_f32 v91, v84, v81 :: v_dual_and_b32 v0, 0xffff0000, v2
	v_div_fmas_f32 v80, v80, v93, v88
	v_fma_f32 v88, -v85, v83, v79
	v_rcp_f32_e32 v93, v90
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v76, 0xffff0000, v1
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v86, v82, 1.0
	v_div_fixup_f32 v18, v78, v77, v18
	v_fmac_f32_e32 v83, v88, v87
	v_fma_f32 v78, -v89, v91, v84
	v_div_fixup_f32 v61, v80, v77, v61
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v80, s61, v42, v77, v42
	v_div_scale_f32 v88, null, v77, v77, v16
	v_fma_f32 v92, -v90, v93, 1.0
	v_fma_f32 v79, -v85, v83, v79
	v_fmac_f32_e32 v91, v78, v81
	s_mov_b32 vcc_lo, s59
	v_mul_f32_e32 v78, v80, v82
	v_rcp_f32_e32 v85, v88
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s62, v17, v77, v17
	v_div_fmas_f32 v79, v79, v87, v83
	v_fma_f32 v83, -v89, v91, v84
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v84, -v86, v78, v80
	v_mul_f32_e32 v87, v92, v93
	v_div_fixup_f32 v51, v79, v77, v51
	v_div_fmas_f32 v81, v83, v81, v91
	v_rcp_f32_e32 v83, v94
	v_fma_f32 v89, -v88, v85, 1.0
	v_fmac_f32_e32 v78, v84, v82
	v_fma_f32 v84, -v90, v87, v92
	v_div_fixup_f32 v50, v81, v77, v50
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s59, v16, v77, v16
	v_fmac_f32_e32 v87, v84, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v94, v83, 1.0
	v_div_scale_f32 v84, null, v76, v76, v54
	v_fma_f32 v79, -v86, v78, v80
	v_mul_f32_e32 v80, v89, v85
	v_fmac_f32_e32 v83, v81, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v86, s60, v15, v77, v15
	v_div_fmas_f32 v78, v79, v82, v78
	v_fma_f32 v79, -v90, v87, v92
	v_fma_f32 v82, -v88, v80, v89
	v_div_scale_f32 v90, null, v76, v76, v53
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v42, v78, v77, v42
	v_fmac_f32_e32 v80, v82, v85
	v_rcp_f32_e32 v82, v90
	v_fma_f32 v91, -v84, v81, 1.0
	v_div_fmas_f32 v79, v79, v93, v87
	v_mul_f32_e32 v87, v86, v83
	v_fma_f32 v78, -v88, v80, v89
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v76, v76, v46
	v_div_fixup_f32 v17, v79, v77, v17
	v_fma_f32 v79, -v94, v87, v86
	v_div_scale_f32 v88, s61, v54, v76, v54
	v_fma_f32 v89, -v90, v82, 1.0
	v_div_fmas_f32 v78, v78, v85, v80
	v_rcp_f32_e32 v80, v91
	v_fmac_f32_e32 v87, v79, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v79, v88, v81 :: v_dual_fmac_f32 v82, v89, v82
	v_div_scale_f32 v85, s59, v53, v76, v53
	v_div_scale_f32 v89, null, v76, v76, v47
	v_div_fixup_f32 v16, v78, v77, v16
	v_fma_f32 v78, -v94, v87, v86
	v_fma_f32 v86, -v84, v79, v88
	v_mul_f32_e32 v92, v85, v82
	v_rcp_f32_e32 v93, v89
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v79, v86, v81
	v_div_fmas_f32 v78, v78, v83, v87
	v_fma_f32 v83, -v90, v92, v85
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v86, s60, v46, v76, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v15, v78, v77, v15
	v_fma_f32 v87, -v89, v93, 1.0
	v_fma_f32 v77, -v84, v79, v88
	v_fmac_f32_e32 v92, v83, v82
	v_mul_f32_e32 v78, v86, v80
	v_div_scale_f32 v84, null, v76, v76, v67
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v93, v87, v93
	v_div_scale_f32 v83, s62, v47, v76, v47
	v_div_fmas_f32 v77, v77, v81, v79
	v_fma_f32 v79, -v90, v92, v85
	v_fma_f32 v81, -v91, v78, v86
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v88, null, v76, v76, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v87, v83, v93 :: v_dual_fmac_f32 v78, v81, v80
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v79, v79, v82, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v89, v87, v83
	v_div_fixup_f32 v54, v77, v76, v54
	v_fma_f32 v90, -v84, v85, 1.0
	v_fma_f32 v77, -v91, v78, v86
	v_div_fixup_f32 v53, v79, v76, v53
	v_fmac_f32_e32 v87, v82, v93
	v_div_scale_f32 v79, s59, v67, v76, v67
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v82, -v88, v81, 1.0
	v_div_scale_f32 v86, null, v76, v76, v56
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v89, v87, v83
	v_mul_f32_e32 v80, v79, v85
	v_fmac_f32_e32 v81, v82, v81
	v_rcp_f32_e32 v82, v86
	v_div_scale_f32 v83, s60, v66, v76, v66
	v_div_scale_f32 v89, null, v76, v76, v55
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v90, v83, v81
	v_div_fmas_f32 v78, v78, v93, v87
	v_fma_f32 v87, -v84, v80, v79
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v86, v82, 1.0
	v_div_fixup_f32 v46, v77, v76, v46
	v_fma_f32 v77, -v88, v90, v83
	v_fmac_f32_e32 v80, v87, v85
	v_div_scale_f32 v87, null, v76, v76, v14
	v_div_fixup_f32 v47, v78, v76, v47
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v78, s61, v56, v76, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v89, v92, 1.0
	v_fma_f32 v79, -v84, v80, v79
	v_fmac_f32_e32 v90, v77, v81
	v_rcp_f32_e32 v84, v87
	s_mov_b32 vcc_lo, s59
	v_dual_mul_f32 v77, v78, v82 :: v_dual_fmac_f32 v92, v91, v92
	v_div_scale_f32 v91, s62, v55, v76, v55
	v_div_fmas_f32 v79, v79, v85, v80
	v_fma_f32 v80, -v88, v90, v83
	v_div_scale_f32 v93, null, v76, v76, v70
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v83, -v86, v77, v78
	v_mul_f32_e32 v85, v91, v92
	v_fma_f32 v88, -v87, v84, 1.0
	v_div_fmas_f32 v80, v80, v81, v90
	v_rcp_f32_e32 v81, v93
	v_fmac_f32_e32 v77, v83, v82
	v_fma_f32 v83, -v89, v85, v91
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s59, v14, v76, v14
	v_div_fixup_f32 v67, v79, v76, v67
	v_div_fixup_f32 v66, v80, v76, v66
	v_fma_f32 v78, -v86, v77, v78
	v_fmac_f32_e32 v85, v83, v92
	v_mul_f32_e32 v79, v88, v84
	v_fma_f32 v80, -v93, v81, 1.0
	v_div_scale_f32 v83, null, v76, v76, v63
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v86, s60, v70, v76, v70
	v_div_fmas_f32 v77, v78, v82, v77
	v_fma_f32 v78, -v89, v85, v91
	v_fma_f32 v82, -v87, v79, v88
	v_fmac_f32_e32 v81, v80, v81
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v89, null, v76, v76, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v82, v84
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v56, v77, v76, v56
	v_rcp_f32_e32 v82, v89
	v_div_fmas_f32 v78, v78, v92, v85
	v_mul_f32_e32 v85, v86, v81
	v_fma_f32 v77, -v87, v79, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v80, 1.0
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v55, v78, v76, v55
	v_fma_f32 v78, -v93, v85, v86
	v_div_scale_f32 v87, s61, v63, v76, v63
	v_fmac_f32_e32 v80, v90, v80
	v_fma_f32 v88, -v89, v82, 1.0
	v_div_scale_f32 v90, null, v76, v76, v58
	v_div_fmas_f32 v77, v77, v84, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v78, v81 :: v_dual_fmac_f32 v82, v88, v82
	v_rcp_f32_e32 v79, v90
	v_div_scale_f32 v88, null, v76, v76, v13
	v_mul_f32_e32 v78, v87, v80
	v_div_scale_f32 v84, s59, v62, v76, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v92, v88
	v_div_fixup_f32 v14, v77, v76, v14
	v_fma_f32 v77, -v93, v85, v86
	v_fma_f32 v86, -v83, v78, v87
	v_mul_f32_e32 v91, v84, v82
	v_fma_f32 v93, -v90, v79, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v81, v85
	v_fmac_f32_e32 v78, v86, v80
	v_fma_f32 v81, -v89, v91, v84
	v_fmac_f32_e32 v79, v93, v79
	v_div_scale_f32 v85, s60, v58, v76, v58
	v_fma_f32 v86, -v88, v92, 1.0
	v_div_fixup_f32 v70, v77, v76, v70
	v_fma_f32 v77, -v83, v78, v87
	v_fmac_f32_e32 v91, v81, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v81, v85, v79 :: v_dual_fmac_f32 v92, v86, v92
	v_div_scale_f32 v86, null, v76, v76, v11
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v83, s62, v13, v76, v13
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v89, v91, v84
	v_fma_f32 v80, -v90, v81, v85
	v_rcp_f32_e32 v84, v86
	v_div_scale_f32 v89, null, v76, v76, v12
	v_mul_f32_e32 v87, v83, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v80, v79
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v80, v89
	v_div_fmas_f32 v78, v78, v82, v91
	v_fma_f32 v82, -v88, v87, v83
	v_div_fixup_f32 v63, v77, v76, v63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v86, v84, 1.0
	v_fma_f32 v77, -v90, v81, v85
	v_div_fixup_f32 v62, v78, v76, v62
	v_fmac_f32_e32 v87, v82, v92
	v_div_scale_f32 v78, s59, v11, v76, v11
	v_fmac_f32_e32 v84, v91, v84
	v_fma_f32 v82, -v89, v80, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v90, null, v0, v0, v65
	v_div_fmas_f32 v77, v77, v79, v81
	v_fma_f32 v79, -v88, v87, v83
	v_mul_f32_e32 v81, v78, v84
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, null, v0, v0, v69
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v83, s60, v12, v76, v12
	v_div_fmas_f32 v79, v79, v92, v87
	v_rcp_f32_e32 v85, v82
	v_fma_f32 v87, -v86, v81, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v88, v83, v80
	v_div_fixup_f32 v58, v77, v76, v58
	v_div_fixup_f32 v13, v79, v76, v13
	v_rcp_f32_e32 v79, v90
	v_fmac_f32_e32 v81, v87, v84
	v_fma_f32 v77, -v89, v88, v83
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v92, null, v0, v0, v60
	v_fma_f32 v87, -v82, v85, 1.0
	v_fma_f32 v78, -v86, v81, v78
	v_div_scale_f32 v86, null, v0, v0, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v77, v80 :: v_dual_fmac_f32 v85, v87, v85
	v_div_scale_f32 v77, s61, v69, v0, v69
	v_rcp_f32_e32 v87, v86
	v_fma_f32 v91, -v90, v79, 1.0
	v_div_fmas_f32 v78, v78, v84, v81
	v_fma_f32 v81, -v89, v88, v83
	v_mul_f32_e32 v83, v77, v85
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v79, v91, v79
	v_div_scale_f32 v84, s59, v65, v0, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v82, v83, v77
	v_fma_f32 v89, -v86, v87, 1.0
	v_rcp_f32_e32 v94, v92
	v_div_fmas_f32 v80, v81, v80, v88
	v_mul_f32_e32 v93, v84, v79
	v_fmac_f32_e32 v83, v91, v85
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, s62, v64, v0, v64
	v_div_fixup_f32 v11, v78, v76, v11
	v_div_fixup_f32 v12, v80, v76, v12
	v_fma_f32 v76, -v82, v83, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v89, v87
	v_div_scale_f32 v80, null, v0, v0, v75
	v_fma_f32 v81, -v90, v93, v84
	v_fma_f32 v78, -v92, v94, 1.0
	v_fma_f32 v77, -v86, v88, v89
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v93, v81, v79 :: v_dual_fmac_f32 v94, v78, v94
	v_fmac_f32_e32 v88, v77, v87
	v_rcp_f32_e32 v77, v80
	v_div_scale_f32 v78, s60, v60, v0, v60
	v_div_fmas_f32 v76, v76, v85, v83
	v_fma_f32 v81, -v90, v93, v84
	v_div_scale_f32 v83, null, v0, v0, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v82, v78, v94
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v69, v76, v0, v69
	v_fma_f32 v84, -v80, v77, 1.0
	v_div_fmas_f32 v79, v81, v79, v93
	v_fma_f32 v81, -v86, v88, v89
	v_rcp_f32_e32 v85, v83
	v_fma_f32 v86, -v92, v82, v78
	v_fmac_f32_e32 v77, v84, v77
	v_div_scale_f32 v84, s59, v75, v0, v75
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v82, v86, v94
	v_div_fmas_f32 v81, v81, v87, v88
	v_mul_f32_e32 v76, v84, v77
	v_div_fixup_f32 v65, v79, v0, v65
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v83, v85, 1.0
	v_fma_f32 v78, -v92, v82, v78
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v86, -v80, v76, v84
	v_div_fixup_f32 v64, v81, v0, v64
	v_div_scale_f32 v81, null, v0, v0, v72
	v_fmac_f32_e32 v85, v79, v85
	v_div_scale_f32 v79, s61, v74, v0, v74
	v_div_fmas_f32 v78, v78, v94, v82
	v_fmac_f32_e32 v76, v86, v77
	v_rcp_f32_e32 v87, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v82, v79, v85
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v60, v78, v0, v60
	v_fma_f32 v78, -v80, v76, v84
	v_div_scale_f32 v86, null, v0, v0, v71
	v_fma_f32 v80, -v83, v82, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v78, v77, v76
	v_div_scale_f32 v77, null, v0, v0, v10
	v_fma_f32 v84, -v81, v87, 1.0
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v82, v80, v85
	v_rcp_f32_e32 v80, v77
	v_div_scale_f32 v78, s59, v72, v0, v72
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, null, v0, v0, v73
	v_div_fixup_f32 v75, v76, v0, v75
	v_fma_f32 v79, -v83, v82, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v86, v88, 1.0
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v77, v80, 1.0
	v_mul_f32_e32 v83, v78, v87
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v88, v76, v88
	v_div_scale_f32 v76, s60, v71, v0, v71
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v89, null, v0, v0, v68
	v_div_fmas_f32 v79, v79, v85, v82
	v_fma_f32 v82, -v81, v83, v78
	v_mul_f32_e32 v85, v76, v88
	v_div_scale_f32 v91, s61, v10, v0, v10
	v_fma_f32 v92, -v84, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v83, v82, v87
	v_fma_f32 v82, -v86, v85, v76
	v_mul_f32_e32 v94, v91, v80
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s62, v73, v0, v73
	v_div_fixup_f32 v74, v79, v0, v74
	v_fma_f32 v78, -v81, v83, v78
	v_fmac_f32_e32 v85, v82, v88
	v_fma_f32 v79, -v77, v94, v91
	v_mul_f32_e32 v81, v92, v90
	v_fma_f32 v82, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v76, -v86, v85, v76
	v_fmac_f32_e32 v94, v79, v80
	v_fma_f32 v79, -v84, v81, v92
	v_fmac_f32_e32 v93, v82, v93
	v_div_scale_f32 v82, s59, v68, v0, v68
	v_div_fmas_f32 v78, v78, v87, v83
	v_fma_f32 v77, -v77, v94, v91
	v_fmac_f32_e32 v81, v79, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v79, v82, v93
	v_div_scale_f32 v83, null, v0, v0, v57
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v72, v78, v0, v72
	v_div_fmas_f32 v76, v76, v88, v85
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v85, v83
	v_div_fmas_f32 v77, v77, v80, v94
	v_fma_f32 v80, -v84, v81, v92
	v_fma_f32 v84, -v89, v79, v82
	v_div_fixup_f32 v71, v76, v0, v71
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v10, v77, v0, v10
	v_div_scale_f32 v77, null, v0, v0, v52
	v_fmac_f32_e32 v79, v84, v93
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v83, v85, 1.0
	v_div_fmas_f32 v80, v80, v90, v81
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v87, null, v0, v0, v9
	v_fma_f32 v76, -v89, v79, v82
	v_fmac_f32_e32 v85, v78, v85
	v_div_fixup_f32 v73, v80, v0, v73
	v_div_scale_f32 v78, null, v0, v0, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v76, v76, v93, v79
	v_div_scale_f32 v81, vcc_lo, v57, v0, v57
	v_rcp_f32_e32 v79, v77
	v_rcp_f32_e32 v82, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v68, v76, v0, v68
	v_mul_f32_e32 v86, v81, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v80, null, v0, v0, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v83, v86, v81
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v76, -v77, v79, 1.0
	v_rcp_f32_e32 v84, v80
	v_fma_f32 v88, -v78, v82, 1.0
	v_fmac_f32_e32 v86, v90, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v76, v79
	v_div_scale_f32 v76, s59, v52, v0, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v83, v86, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v87, v89, 1.0
	v_mul_f32_e32 v92, v76, v79
	v_fma_f32 v91, -v80, v84, 1.0
	v_div_fmas_f32 v81, v81, v85, v86
	s_mov_b32 vcc_lo, s59
	s_mov_b32 s59, 0xc1000000
	v_fma_f32 v90, -v77, v92, v76
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v73, v73, s59, 0x40e00000
	v_med3_f32 v72, v72, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v57, v81, v0, v57
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s59, 0x40e00000
	v_med3_f32 v35, v35, s59, 0x40e00000
	v_cvt_i32_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v90, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s59, 0x40e00000
	v_med3_f32 v10, v10, s59, 0x40e00000
	v_cvt_i32_f32_e32 v99, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v88, s60, v7, v0, v7
	v_fma_f32 v76, -v77, v92, v76
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v68, v68
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v74, v74, s59, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v79, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v101, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v88, v82
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s61, v8, v0, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s62, v9, v0, v9
	v_div_fixup_f32 v52, v76, v0, v52
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s59, 0x40e00000
	v_cvt_i32_f32_e32 v98, v74
	v_and_b32_e32 v74, 15, v20
	v_and_b32_e32 v20, 15, v35
	v_and_b32_e32 v35, 15, v49
	v_and_b32_e32 v49, 15, v101
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v78, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v103, v57
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v57, 3, v6
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v91, v84
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v83, v82
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v102, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v93, v89
	v_fma_f32 v90, -v80, v95, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v52, v52, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v78, v94, v88
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v77, -v87, v96, v93
	v_fmac_f32_e32 v95, v90, v84
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v82, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v55, v55
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v51, v51, s59, 0x40e00000
	v_cvt_i32_f32_e32 v104, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v77, v89
	v_fma_f32 v77, -v80, v95, v91
	v_div_fixup_f32 v7, v78, v0, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v87, v96, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v30, v30, s59, 0x40e00000
	v_med3_f32 v31, v31, s59, 0x40e00000
	v_med3_f32 v41, v41, s59, 0x40e00000
	v_med3_f32 v32, v32, s59, 0x40e00000
	v_med3_f32 v55, v55, s59, 0x40e00000
	v_cvt_i32_f32_e32 v78, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v84, v95
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v89, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v62, v62, s59, 0x40e00000
	v_med3_f32 v11, v11, s59, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v87, v55
	v_and_b32_e32 v55, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v78, 16, v219
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v77, v0, v8
	v_div_fixup_f32 v0, v79, v0, v9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v36
	v_rndne_f32_e32 v36, v39
	v_rndne_f32_e32 v39, v48
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v48, v59
	v_rndne_f32_e32 v59, v61
	v_rndne_f32_e32 v61, v67
	v_rndne_f32_e32 v67, v70
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v70, v75
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v75, v38
	v_cvt_i32_f32_e32 v83, v54
	v_cvt_i32_f32_e32 v90, v62
	v_cvt_i32_f32_e32 v93, v11
	v_and_b32_e32 v11, 15, v30
	v_and_b32_e32 v38, 15, v31
	v_and_b32_e32 v54, 15, v41
	v_and_b32_e32 v62, 15, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v30, 13, v219
	v_and_b32_e32 v31, 0x2f0, v29
	v_lshlrev_b32_e32 v32, 8, v78
	v_and_b32_e32 v41, 64, v219
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s59, 0x40e00000
	v_med3_f32 v45, v45, s59, 0x40e00000
	v_med3_f32 v69, v69, s59, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v30, 0xe000, v30, v32
	v_xor_b32_e32 v31, v31, v41
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s59, 0x40e00000
	v_med3_f32 v27, v27, s59, 0x40e00000
	v_med3_f32 v36, v36, s59, 0x40e00000
	v_med3_f32 v28, v28, s59, 0x40e00000
	v_med3_f32 v48, v48, s59, 0x40e00000
	v_med3_f32 v61, v61, s59, 0x40e00000
	v_med3_f32 v70, v70, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v47, v47
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s59, 0x40e00000
	v_med3_f32 v18, v18, s59, 0x40e00000
	v_med3_f32 v14, v14, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v64, v64
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s59, 0x40e00000
	v_med3_f32 v58, v58, s59, 0x40e00000
	v_med3_f32 v65, v65, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v7, v7, s59, 0x40e00000
	v_med3_f32 v8, v8, s59, 0x40e00000
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v30, v30, v57, v31
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s59, 0x40e00000
	v_med3_f32 v15, v15, s59, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v97, v70
	v_med3_f32 v46, v46, s59, 0x40e00000
	v_med3_f32 v47, v47, s59, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v14, v14
	v_med3_f32 v63, v63, s59, 0x40e00000
	v_med3_f32 v64, v64, s59, 0x40e00000
	v_cvt_i32_f32_e32 v80, v42
	v_cvt_i32_f32_e32 v91, v58
	v_cvt_i32_f32_e32 v65, v65
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s59, 0x40e00000
	v_med3_f32 v40, v40, s59, 0x40e00000
	v_med3_f32 v34, v34, s59, 0x40e00000
	v_med3_f32 v59, v59, s59, 0x40e00000
	v_med3_f32 v53, v53, s59, 0x40e00000
	v_med3_f32 v67, v67, s59, 0x40e00000
	v_med3_f32 v0, v0, s59, 0x40e00000
	v_cvt_i32_f32_e32 v105, v7
	v_cvt_i32_f32_e32 v106, v8
	v_and_b32_e32 v7, 15, v9
	v_and_b32_e32 v8, 15, v45
	v_and_b32_e32 v9, 15, v83
	v_and_b32_e32 v10, 15, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v31, 0, v30
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s59, 0x40e00000
	v_med3_f32 v21, v21, s59, 0x40e00000
	v_med3_f32 v17, v17, s59, 0x40e00000
	v_med3_f32 v66, v66, s59, 0x40e00000
	v_med3_f32 v13, v13, s59, 0x40e00000
	v_cvt_i32_f32_e32 v76, v19
	v_cvt_i32_f32_e32 v82, v15
	v_and_b32_e32 v15, 15, v26
	v_and_b32_e32 v19, 15, v27
	v_and_b32_e32 v26, 15, v36
	v_and_b32_e32 v42, 15, v28
	v_and_b32_e32 v27, 15, v48
	v_and_b32_e32 v28, 15, v61
	v_and_b32_e32 v29, 15, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v84, v46
	v_cvt_i32_f32_e32 v85, v47
	v_and_b32_e32 v46, 15, v22
	v_and_b32_e32 v47, 15, v18
	v_and_b32_e32 v48, 15, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v71, v71
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v89, v63
	v_cvt_i32_f32_e32 v95, v64
	v_and_b32_e32 v63, 15, v80
	v_and_b32_e32 v64, 15, v91
	v_and_b32_e32 v14, 15, v65
	v_and_b32_e32 v65, 15, v104
	v_med3_f32 v50, v50, s59, 0x40e00000
	v_med3_f32 v16, v16, s59, 0x40e00000
	v_med3_f32 v56, v56, s59, 0x40e00000
	v_med3_f32 v12, v12, s59, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v77, v34
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v88, v67
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v31, v[7:10]
	ds_store_b128 v31, v[26:29] offset:256
	ds_store_b128 v31, v[46:49] offset:2048
	ds_store_b128 v31, v[62:65] offset:2304
	v_lshlrev_b32_e32 v7, 6, v219
	v_lshlrev_b32_e32 v8, 5, v24
	v_cndmask_b32_e64 v6, 0x2010, 0, vcc_lo
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s59, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v86, v66
	v_cvt_i32_f32_e32 v92, v13
	v_med3_f32 v60, v60, s59, 0x40e00000
	v_med3_f32 v43, v43, s59, 0x40e00000
	v_med3_f32 v71, v71, s59, 0x40e00000
	v_cvt_i32_f32_e32 v79, v50
	v_cvt_i32_f32_e32 v81, v16
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v94, v12
	v_and_b32_e32 v50, 15, v39
	v_and_b32_e32 v12, 15, v40
	v_and_b32_e32 v16, 15, v77
	v_and_b32_e32 v51, 15, v59
	v_and_b32_e32 v13, 15, v53
	v_and_b32_e32 v52, 15, v88
	v_and_b32_e32 v53, 15, v73
	v_and_b32_e32 v77, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v30, 16, 0
	v_lshlrev_b32_e32 v10, 2, v78
	v_and_or_b32 v7, 0x300, v7, v8
	v_xor_b32_e32 v6, v6, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v44, v44
	v_and_b32_e32 v34, 15, v37
	v_and_b32_e32 v66, 15, v21
	v_and_b32_e32 v67, 15, v17
	v_and_b32_e32 v36, 15, v86
	v_and_b32_e32 v68, 15, v92
	v_and_b32_e32 v37, 15, v98
	v_and_b32_e32 v69, 15, v105
	v_cvt_i32_f32_e32 v96, v60
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v100, v71
	v_and_b32_e32 v58, 15, v75
	v_and_b32_e32 v59, 15, v79
	v_and_b32_e32 v17, 15, v84
	v_and_b32_e32 v40, 15, v56
	v_and_b32_e32 v56, 15, v89
	v_and_b32_e32 v60, 15, v90
	v_and_b32_e32 v18, 15, v95
	v_and_b32_e32 v57, 15, v102
	v_and_b32_e32 v61, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[11:14]
	ds_store_b128 v0, v[34:37] offset:256
	v_xad_u32 v9, v30, 32, 0
	ds_store_b128 v0, v[50:53] offset:2048
	ds_store_b128 v0, v[66:69] offset:2304
	v_xad_u32 v0, v30, 48, 0
	v_or3_b32 v24, v6, v7, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v70, 15, v76
	v_and_b32_e32 v39, 15, v44
	v_and_b32_e32 v71, 15, v81
	v_and_b32_e32 v75, 15, v82
	v_and_b32_e32 v72, 15, v93
	v_and_b32_e32 v76, 15, v94
	v_and_b32_e32 v41, 15, v99
	v_and_b32_e32 v73, 15, v106
	v_and_b32_e32 v21, 15, v85
	v_and_b32_e32 v22, 15, v96
	v_and_b32_e32 v43, 15, v43
	v_and_b32_e32 v44, 15, v87
	v_and_b32_e32 v45, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v9, v[15:18]
	ds_store_b128 v9, v[38:41] offset:256
	ds_store_b128 v9, v[54:57] offset:2048
	ds_store_b128 v9, v[70:73] offset:2304
	ds_store_b128 v0, v[19:22]
	ds_store_b128 v0, v[42:45] offset:256
	ds_store_b128 v0, v[58:61] offset:2048
	ds_store_b128 v0, v[74:77] offset:2304
	v_xad_u32 v0, 0x4020, v24, 0
	v_xad_u32 v22, 0x8040, v24, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v0
	ds_load_b128 v[30:33], v0 offset:128
	ds_load_b128 v[34:37], v0 offset:4096
	ds_load_b128 v[38:41], v0 offset:4224
	v_xad_u32 v0, 0xc060, v24, 0
	ds_load_b128 v[42:45], v22
	ds_load_b128 v[46:49], v22 offset:128
	ds_load_b128 v[50:53], v22 offset:4096
	ds_load_b128 v[54:57], v22 offset:4224
	ds_load_b128 v[58:61], v0 offset:4096
	ds_load_b128 v[62:65], v0
	ds_load_b128 v[66:69], v0 offset:128
	ds_load_b128 v[70:73], v0 offset:4224
	v_add_nc_u32_e32 v18, 0, v24
	ds_load_b128 v[6:9], v18
	ds_load_b128 v[10:13], v18 offset:128
	ds_load_b128 v[14:17], v18 offset:4096
	ds_load_b128 v[18:21], v18 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v74, s59, s68, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v75, null, s69, 0, s59
	v_add_co_u32 v76, s59, s68, v166
	v_add_co_ci_u32_e64 v77, null, s69, 0, s59
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v3, s68, v166
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s69, s74, 31
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[70:71], v[74:75]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[72:73], v[74:75]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v74, v34, 4, v26
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v26, 34, v3
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v0, s75, 7, v108
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(8)
	v_lshl_or_b32 v47, v55, 4, v47
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v55, v71, 4, v67
	v_lshl_or_b32 v71, v36, 4, v28
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s74, s69
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v28, 36, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v72, 4, v68
	v_lshl_or_b32 v72, v37, 4, v29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v29, 38, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[72:73], v[76:77]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v50, 4, v42
	v_lshl_or_b32 v50, v58, 4, v62
	v_lshl_or_b32 v62, v38, 4, v30
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s68, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v30, 40, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v70, 4, v66
	v_lshl_or_b32 v70, v35, 4, v27
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[26:27], null, v26, s72, v[0:1]
	v_mad_u64_u32 v[27:28], null, v28, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v24, v14, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, 2, v3
	v_mad_u64_u32 v[28:29], null, v29, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v43, v51, 4, v43
	v_lshl_or_b32 v51, v59, 4, v63
	v_lshl_or_b32 v63, v39, 4, v31
	v_lshl_or_b32 v67, v16, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 4, v3
	v_mad_u64_u32 v[29:30], null, v30, s72, v[0:1]
	v_add_nc_u32_e32 v31, 42, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v44, v52, 4, v44
	v_lshl_or_b32 v52, v60, 4, v64
	v_lshl_or_b32 v64, v40, 4, v32
	v_lshl_or_b32 v68, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 6, v3
	v_add_nc_u32_e32 v32, 44, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v58, v18, 4, v10
	v_lshl_or_b32 v41, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 8, v3
	v_add_nc_u32_e32 v33, 46, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v59, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 10, v3
	v_add_nc_u32_e32 v34, 48, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v15, 4, v7
	v_lshl_or_b32 v60, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 12, v3
	v_add_nc_u32_e32 v35, 50, v3
	v_mad_u64_u32 v[6:7], null, v6, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v53, v61, 4, v65
	v_lshl_or_b32 v61, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 14, v3
	v_add_nc_u32_e32 v36, 52, v3
	v_mad_u64_u32 v[7:8], null, v8, s72, v[0:1]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[0:1]
	v_add_nc_u32_e32 v14, 16, v3
	v_add_nc_u32_e32 v37, 54, v3
	v_mad_u64_u32 v[8:9], null, v9, s72, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[0:1]
	v_add_nc_u32_e32 v15, 18, v3
	v_add_nc_u32_e32 v38, 56, v3
	v_mad_u64_u32 v[9:10], null, v10, s72, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[0:1]
	v_add_nc_u32_e32 v16, 20, v3
	v_mad_u64_u32 v[10:11], null, v11, s72, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[0:1]
	v_add_nc_u32_e32 v17, 22, v3
	v_mad_u64_u32 v[11:12], null, v12, s72, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[0:1]
	v_add_nc_u32_e32 v18, 24, v3
	v_mad_u64_u32 v[12:13], null, v13, s72, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[0:1]
	v_add_nc_u32_e32 v19, 26, v3
	v_mad_u64_u32 v[13:14], null, v14, s72, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[70:71], v[76:77]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 28, v3
	v_add_nc_u32_e32 v21, 30, v3
	v_add_nc_u32_e32 v22, 32, v3
	v_add_nc_u32_e32 v40, 60, v3
	v_add_nc_u32_e32 v65, 62, v3
	v_mad_u64_u32 v[14:15], null, v15, s72, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[0:1]
	v_add_nc_u32_e32 v39, 58, v3
	v_mad_u64_u32 v[3:4], null, v3, s72, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s72, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s72, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[0:1]
	v_mad_u64_u32 v[19:20], null, v20, s72, v[0:1]
	v_mad_u64_u32 v[20:21], null, v21, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[21:22], null, v22, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s59
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v22, 0x80000000, v3, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[3:4], null, v65, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[38:39], null, v39, s72, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s60
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x5
	buffer_store_b8 v24, v22, s[68:71], 0 offen
	buffer_store_b8 v74, v0, s[68:71], 0 offen
	buffer_store_b8 v42, v4, s[68:71], 0 offen
	buffer_store_b8 v50, v6, s[68:71], 0 offen
	buffer_store_b8 v58, v7, s[68:71], 0 offen
	buffer_store_b8 v62, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v57, v73, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v25.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v23.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v46, v0, s[68:71], 0 offen
	buffer_store_b8 v54, v4, s[68:71], 0 offen
	buffer_store_b8 v66, v6, s[68:71], 0 offen
	buffer_store_b8 v70, v7, s[68:71], 0 offen
	buffer_store_b8 v43, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s39, s40
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s37, s38
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s30, s31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v51, v0, s[68:71], 0 offen
	buffer_store_b8 v59, v4, s[68:71], 0 offen
	buffer_store_b8 v63, v6, s[68:71], 0 offen
	buffer_store_b8 v47, v7, s[68:71], 0 offen
	buffer_store_b8 v55, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s28, s29
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s26, s27
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s24, s25
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s22, s23
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s20, s21
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v67, v0, s[68:71], 0 offen
	buffer_store_b8 v71, v4, s[68:71], 0 offen
	buffer_store_b8 v44, v6, s[68:71], 0 offen
	buffer_store_b8 v52, v7, s[68:71], 0 offen
	buffer_store_b8 v60, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s18, s19
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s16, s17
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s10, s11
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v64, v0, s[68:71], 0 offen
	buffer_store_b8 v48, v4, s[68:71], 0 offen
	buffer_store_b8 v56, v6, s[68:71], 0 offen
	buffer_store_b8 v68, v7, s[68:71], 0 offen
	buffer_store_b8 v72, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s74, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b8 v45, v0, s[68:71], 0 offen
	buffer_store_b8 v53, v4, s[68:71], 0 offen
	buffer_store_b8 v61, v6, s[68:71], 0 offen
	buffer_store_b8 v41, v7, s[68:71], 0 offen
	buffer_store_b8 v49, v8, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v219
	v_lshrrev_b32_e32 v6, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v0, 0x80000000, v3, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshlrev_b32_e32 v3, 3, v107
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v57, v0, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v3
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s74, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add3_u32 v3, v6, v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v3
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v219
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s75, 1
	s_and_b32 vcc_lo, vcc_lo, s76
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp72:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 812
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
		.amdhsa_next_free_sgpr 77
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 77
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 812
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 37672
; TotalNumSgprs: 79
; NumVgprs: 256
; ScratchSize: 812
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 79
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 812
    .sgpr_count:     79
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 202
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
