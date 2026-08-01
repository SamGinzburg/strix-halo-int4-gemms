	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s76, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
	v_mov_b32_e32 v108, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v98, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s76, 0xff
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
	v_and_b32_e32 v0, 63, v108
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
	s_sub_i32 s77, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s77, s5
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
	s_load_b64 s[66:67], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[72:73], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[74:75], s[2:3], 0x0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s2
	v_add_nc_u32_e32 v25, s66, v0
	v_and_b32_e32 v72, 0x7f, v108
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[74:75], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s34, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v6, 0x7f, v108
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow725
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v107, 0 :: v_dual_and_b32 v110, 0x80, v108
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v109, 15, v108
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s3, 0, v110
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v206, 0
	v_mov_b32_e32 v205, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s8, s66, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s8
	v_cndmask_b32_e64 v67, 0x88, 0, s3
	v_add_co_u32 v2, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s10, s6, s4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[74:75], v[0:1]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v0, 6, v108
	scratch_store_b32 off, v72, off offset:788 ; 4-byte Folded Spill
	v_xor_b32_e32 v72, v67, v72
	s_clause 0x1
	s_load_b32 s26, s[0:1], 0x58
	s_load_b32 s33, s[0:1], 0x50
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s11, s7, s5
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:200
	scratch_store_b32 off, v109, off offset:780
	scratch_store_b32 off, v72, off offset:220
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v0, s66, v109
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[72:73], v[2:3]
	v_cmp_le_i64_e64 s1, s[72:73], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[74:75], v[2:3]
	v_cmp_gt_i64_e64 s7, s[74:75], v[4:5]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v3, 32, v0
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v2, 16, v0
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v4, 48, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s34
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s9, s[10:11], 0x0
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s10, s77, 8
	v_dual_mov_b32 v131, 0 :: v_dual_lshlrev_b32 v66, 1, v108
	v_or_b32_e32 v77, s10, v108
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v68, 5, v109
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:204
	scratch_store_b32 off, v110, off offset:784
	scratch_store_b32 off, v77, off offset:228
	v_mul_lo_u32 v0, v2, s34
	v_dual_mov_b32 v211, 0 :: v_dual_and_b32 v2, 0xe0, v108
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v69, 24, v66
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[72:73], v[6:7]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v127, 0 :: v_dual_lshlrev_b32 v2, 4, v2
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[74:75], v[6:7]
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v1, 5, v108
	v_dual_mov_b32 v112, 0 :: v_dual_lshlrev_b32 v73, 5, v108
	v_or3_b32 v75, v68, v69, v2
	v_xor_b32_e32 v68, 0x110, v72
	v_dual_mov_b32 v155, 0 :: v_dual_and_b32 v72, 0xf0, v108
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s5
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s5, s76, 1
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_or_b32_e32 v1, s10, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v153, 0 :: v_dual_lshlrev_b32 v76, 2, v72
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v73, 32, v73
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s4
	s_and_b32 s4, s6, s8
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s6, s26, s5
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s7, s34, s9
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s6, s9
	v_add3_u32 v73, 0, v76, v73
	v_mad_u64_u32 v[76:77], null, v1, s26, s[6:7]
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v58, 16, v1
	v_or_b32_e32 v59, 8, v1
	v_or_b32_e32 v57, 24, v1
	v_or_b32_e32 v56, 32, v1
	v_or_b32_e32 v55, 40, v1
	v_dual_mov_b32 v226, 0 :: v_dual_add_nc_u32 v63, s76, v58
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v64, s76, v59
	scratch_store_b64 off, v[76:77], off offset:232 ; 8-byte Folded Spill
	v_mad_u64_u32 v[76:77], null, s26, v59, s[6:7]
	v_mad_u64_u32 v[58:59], null, s26, v58, s[6:7]
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v62, s76, v57
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v61, s76, v56
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v60, s76, v55
	scratch_store_b64 off, v[58:59], off offset:248 ; 8-byte Folded Spill
	v_mad_u64_u32 v[57:58], null, s26, v57, s[6:7]
	v_or_b32_e32 v48, 56, v1
	v_or_b32_e32 v49, 48, v1
	v_or_b32_e32 v47, 64, v1
	v_or_b32_e32 v46, 0x48, v1
	v_or_b32_e32 v45, 0x50, v1
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v53, s76, v48
	scratch_store_b64 off, v[57:58], off offset:256 ; 8-byte Folded Spill
	v_mad_u64_u32 v[56:57], null, s26, v56, s[6:7]
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v54, s76, v49
	v_dual_mov_b32 v227, 0 :: v_dual_add_nc_u32 v52, s76, v47
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v51, s76, v46
	scratch_store_b64 off, v[56:57], off offset:264 ; 8-byte Folded Spill
	v_mad_u64_u32 v[55:56], null, s26, v55, s[6:7]
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v50, s76, v45
	v_or_b32_e32 v38, 0x60, v1
	v_or_b32_e32 v39, 0x58, v1
	v_or_b32_e32 v37, 0x68, v1
	v_or_b32_e32 v36, 0x70, v1
	scratch_store_b64 off, v[55:56], off offset:272 ; 8-byte Folded Spill
	v_mad_u64_u32 v[55:56], null, s26, v49, s[6:7]
	v_mad_u64_u32 v[48:49], null, s26, v48, s[6:7]
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v43, s76, v38
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v44, s76, v39
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v42, s76, v37
	scratch_store_b64 off, v[48:49], off offset:288 ; 8-byte Folded Spill
	v_mad_u64_u32 v[47:48], null, s26, v47, s[6:7]
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v41, s76, v36
	v_or_b32_e32 v35, 0x78, v1
	v_or_b32_e32 v28, 0x88, v1
	v_or_b32_e32 v29, 0x80, v1
	v_or_b32_e32 v27, 0x90, v1
	scratch_store_b64 off, v[47:48], off offset:296 ; 8-byte Folded Spill
	v_mad_u64_u32 v[46:47], null, s26, v46, s[6:7]
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v40, s76, v35
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v33, s76, v28
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v34, s76, v29
	scratch_store_b64 off, v[46:47], off offset:304 ; 8-byte Folded Spill
	v_mad_u64_u32 v[45:46], null, s26, v45, s[6:7]
	v_dual_mov_b32 v247, 0 :: v_dual_add_nc_u32 v32, s76, v27
	v_or_b32_e32 v26, 0x98, v1
	v_or_b32_e32 v24, 0xa0, v1
	v_or_b32_e32 v18, 0xa8, v1
	v_or_b32_e32 v17, 0xb0, v1
	scratch_store_b64 off, v[45:46], off offset:312 ; 8-byte Folded Spill
	v_mad_u64_u32 v[45:46], null, s26, v39, s[6:7]
	v_mad_u64_u32 v[38:39], null, s26, v38, s[6:7]
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v31, s76, v26
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v22, s76, v17
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v23, s76, v18
	scratch_store_b64 off, v[38:39], off offset:328 ; 8-byte Folded Spill
	v_mad_u64_u32 v[37:38], null, s26, v37, s[6:7]
	v_or_b32_e32 v16, 0xb8, v1
	v_or_b32_e32 v15, 0xc0, v1
	v_or_b32_e32 v5, 0xe8, v1
	v_or_b32_e32 v6, 0xe0, v1
	v_or_b32_e32 v7, 0xd8, v1
	v_dual_mov_b32 v222, 0 :: v_dual_add_nc_u32 v21, s76, v16
	scratch_store_b64 off, v[37:38], off offset:336 ; 8-byte Folded Spill
	v_mad_u64_u32 v[36:37], null, s26, v36, s[6:7]
	v_or_b32_e32 v8, 0xd0, v1
	v_or_b32_e32 v14, 0xc8, v1
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v20, s76, v15
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v65, s76, v1
	scratch_store_b64 off, v[36:37], off offset:344 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s26, v35, s[6:7]
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v19, s76, v14
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v12, s76, v7
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v13, s76, v8
	scratch_store_b64 off, v[35:36], off offset:352 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s26, v29, s[6:7]
	v_mad_u64_u32 v[28:29], null, s26, v28, s[6:7]
	scratch_store_b64 off, v[76:77], off offset:240 ; 8-byte Folded Spill
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v11, s76, v6
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v10, s76, v5
	v_dual_mov_b32 v149, 0 :: v_dual_and_b32 v66, 28, v66
	scratch_store_b64 off, v[28:29], off offset:368 ; 8-byte Folded Spill
	v_mad_u64_u32 v[27:28], null, s26, v27, s[6:7]
	v_or_b32_e32 v70, 0x300, v108
	v_or_b32_e32 v71, 0x700, v108
	v_or_b32_e32 v2, 0x3f0, v108
	v_or_b32_e32 v67, 0x7f0, v108
	v_xor_b32_e32 v69, 8, v75
	v_xor_b32_e32 v74, 16, v75
	scratch_store_b64 off, v[27:28], off offset:376 ; 8-byte Folded Spill
	v_mad_u64_u32 v[26:27], null, s26, v26, s[6:7]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v75, off offset:224
	scratch_store_b64 off, v[45:46], off offset:320
	v_xor_b32_e32 v75, 24, v75
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v30, s76, v24
	v_mov_b32_e32 v220, 0
	scratch_store_b64 off, v[26:27], off offset:384 ; 8-byte Folded Spill
	v_mad_u64_u32 v[26:27], null, s26, v24, s[6:7]
	v_mov_b32_e32 v214, 0
	v_dual_mov_b32 v151, 0 :: v_dual_lshlrev_b32 v72, 1, v72
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v236, 0, v109
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v243, 0, v68
	scratch_store_b64 off, v[26:27], off offset:392 ; 8-byte Folded Spill
	v_mad_u64_u32 v[26:27], null, s26, v18, s[6:7]
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s34
	v_mad_u64_u32 v[17:18], null, s26, v17, s[6:7]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[35:36], off offset:360
	scratch_store_b64 off, v[55:56], off offset:280
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v217, 0, v72
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v165, 0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:212
	scratch_store_b64 off, v[17:18], off offset:408
	v_mul_lo_u32 v0, v4, s34
	v_mad_u64_u32 v[16:17], null, s26, v16, s[6:7]
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v4, 0xf0, v1
	scratch_store_b64 off, v[26:27], off offset:400 ; 8-byte Folded Spill
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v157, 0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:216
	scratch_store_b64 off, v[16:17], off offset:416
	v_or_b32_e32 v0, 0xf8, v1
	v_mad_u64_u32 v[15:16], null, s26, v15, s[6:7]
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v9, s76, v4
	v_mov_b32_e32 v163, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1175 36                       ; ragged.py:1175:36
	v_add_nc_u32_e32 v3, s76, v0
	v_mad_u64_u32 v[0:1], null, s26, v0, s[6:7]
	scratch_store_b64 off, v[15:16], off offset:424 ; 8-byte Folded Spill
	v_mad_u64_u32 v[14:15], null, s26, v14, s[6:7]
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v167, 0
	scratch_store_b64 off, v[0:1], off offset:480 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v65, s26, s[6:7]
	scratch_store_b64 off, v[14:15], off offset:432 ; 8-byte Folded Spill
	v_mad_u64_u32 v[14:15], null, s26, v8, s[6:7]
	v_mad_u64_u32 v[7:8], null, s26, v7, s[6:7]
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v147, 0
	scratch_store_b64 off, v[0:1], off offset:488 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v64, s26, s[6:7]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[14:15], off offset:440
	scratch_store_b64 off, v[7:8], off offset:448
	v_mad_u64_u32 v[6:7], null, s26, v6, s[6:7]
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v145, 0
	scratch_store_b64 off, v[0:1], off offset:496 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v63, s26, s[6:7]
	v_mov_b32_e32 v179, 0
	scratch_store_b64 off, v[6:7], off offset:456 ; 8-byte Folded Spill
	v_mad_u64_u32 v[5:6], null, s26, v5, s[6:7]
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v141, 0
	scratch_store_b64 off, v[0:1], off offset:504 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v62, s26, s[6:7]
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v143, 0
	scratch_store_b64 off, v[5:6], off offset:464 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s26, v4, s[6:7]
	v_mov_b32_e32 v175, 0
	scratch_store_b64 off, v[0:1], off offset:512 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v61, s26, s[6:7]
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v186, 0
	v_mov_b32_e32 v139, 0
	scratch_store_b64 off, v[4:5], off offset:472 ; 8-byte Folded Spill
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v224, 0
	v_mov_b32_e32 v137, 0
	scratch_store_b64 off, v[0:1], off offset:520 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v60, s26, s[6:7]
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_mov_b32_e32 v133, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v180, 0
	v_mov_b32_e32 v135, 0
	scratch_store_b64 off, v[0:1], off offset:528 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v54, s26, s[6:7]
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v182, 0
	v_mov_b32_e32 v117, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_mov_b32_e32 v103, 0
	scratch_store_b64 off, v[0:1], off offset:536 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v53, s26, s[6:7]
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v111, 0
	scratch_store_b64 off, v[0:1], off offset:544 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v52, s26, s[6:7]
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v123, 0
	scratch_store_b64 off, v[0:1], off offset:552 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v51, s26, s[6:7]
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v91, 0
	scratch_store_b64 off, v[0:1], off offset:560 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v50, s26, s[6:7]
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v107, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v138, 0
	scratch_store_b64 off, v[0:1], off offset:568 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, v73, v66
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v118, 0
	scratch_store_b32 off, v0, off offset:576 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v44, s26, s[6:7]
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v124, 0
	v_mov_b32_e32 v90, 0
	scratch_store_b64 off, v[0:1], off offset:580 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v70
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v98, 0
	s_mov_b32 s8, 0
	scratch_store_b32 off, v0, off offset:588 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v71
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	scratch_store_b32 off, v0, off offset:592 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	s_and_b32 s25, s15, 0xffff
	s_mov_b32 s24, s14
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s29, s19, 0xffff
	scratch_store_b32 off, v0, off offset:596 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v67
	s_mov_b32 s28, s18
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	scratch_store_b32 off, v0, off offset:600 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v69
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	scratch_store_b32 off, v0, off offset:604 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v74
	s_mov_b32 s35, s8
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b64 off, v[25:26], off offset:192 ; 8-byte Folded Spill
	v_mov_b32_e32 v161, 0
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v75
	scratch_store_b32 off, v0, off offset:612 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v43, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:616 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v42, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:624 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v41, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:632 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v40, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:640 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v34, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:648 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v33, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:656 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v32, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:664 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v31, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:672 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v30, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:680 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v23, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:688 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v22, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:696 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v21, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:704 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v20, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:712 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v19, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:720 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v13, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:728 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v12, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:736 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v11, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:744 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v10, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:752 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v9, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:760 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v3, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:768 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v108
	scratch_store_b32 off, v0, off offset:776 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v2, off, off offset:200
	scratch_load_b64 v[13:14], off, off offset:296
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s6, s35, 5
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v112, off offset:184
	scratch_store_b32 off, v85, off offset:180
	scratch_store_b32 off, v120, off offset:176
	scratch_store_b32 off, v121, off offset:172
	scratch_store_b32 off, v210, off offset:168
	scratch_store_b32 off, v115, off offset:164
	scratch_store_b32 off, v87, off offset:160
	scratch_store_b32 off, v88, off offset:156
	scratch_store_b32 off, v113, off offset:152
	scratch_store_b32 off, v155, off offset:148
	scratch_store_b32 off, v165, off offset:144
	scratch_store_b32 off, v164, off offset:140
	scratch_store_b32 off, v166, off offset:136
	scratch_store_b32 off, v201, off offset:132
	scratch_store_b32 off, v107, off offset:128
	scratch_store_b32 off, v154, off offset:124
	scratch_store_b32 off, v118, off offset:120
	scratch_store_b32 off, v173, off offset:116
	scratch_store_b32 off, v195, off offset:112
	scratch_store_b32 off, v86, off offset:108
	scratch_store_b32 off, v119, off offset:104
	scratch_store_b32 off, v174, off offset:100
	scratch_store_b32 off, v153, off offset:96
	scratch_store_b32 off, v104, off offset:92
	scratch_store_b32 off, v116, off offset:88
	scratch_store_b32 off, v169, off offset:84
	scratch_store_b32 off, v117, off offset:80
	scratch_store_b32 off, v111, off offset:76
	scratch_store_b32 off, v170, off offset:72
	scratch_store_b32 off, v168, off offset:68
	scratch_store_b32 off, v89, off offset:64
	scratch_store_b32 off, v106, off offset:60
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v103, off offset:56
	scratch_store_b32 off, v102, off offset:52
	scratch_store_b32 off, v101, off offset:48
	scratch_store_b32 off, v100, off offset:44
	scratch_store_b32 off, v105, off offset:40
	scratch_store_b32 off, v99, off offset:36
	scratch_store_b32 off, v97, off offset:32
	scratch_store_b32 off, v98, off offset:28
	scratch_store_b32 off, v96, off offset:24
	scratch_store_b32 off, v95, off offset:20
	scratch_store_b32 off, v94, off offset:16
	scratch_store_b32 off, v93, off offset:12
	scratch_store_b32 off, v92, off offset:8
	scratch_store_b32 off, v91, off offset:4
	scratch_store_b32 off, v90, off
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	v_mov_b32_e32 v155, v182
	v_mov_b32_e32 v203, v196
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	v_mov_b32_e32 v168, v215
	scratch_load_b64 v[15:16], off, off offset:304 ; 8-byte Folded Reload
	v_mov_b32_e32 v174, v108
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[17:18], off, off offset:320
	scratch_load_b64 v[19:20], off, off offset:336
	v_dual_mov_b32 v166, v176 :: v_dual_mov_b32 v195, v159
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[21:22], off, off offset:352
	scratch_load_b64 v[23:24], off, off offset:368
	v_dual_mov_b32 v164, v181 :: v_dual_mov_b32 v181, v128
	scratch_load_b64 v[33:34], off, off offset:384 ; 8-byte Folded Reload
	v_dual_mov_b32 v182, v129 :: v_dual_mov_b32 v201, v114
	v_dual_mov_b32 v176, v130 :: v_dual_mov_b32 v165, v177
	v_dual_mov_b32 v177, v131 :: v_dual_mov_b32 v170, v160
	v_mov_b32_e32 v160, v123
	v_mov_b32_e32 v154, v126
	v_mov_b32_e32 v188, v132
	v_mov_b32_e32 v216, v172
	v_mov_b32_e32 v172, v135
	v_mov_b32_e32 v212, v194
	v_mov_b32_e32 v194, v192
	v_mov_b32_e32 v192, v152
	v_mov_b32_e32 v152, v136
	v_mov_b32_e32 v196, v148
	v_mov_b32_e32 v200, v197
	s_waitcnt vmcnt(7)
	v_or_b32_e32 v0, s6, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s33, v[25:26]
	v_cndmask_b32_e64 v26, 0x80000000, v0, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v0, 4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s6, v0
	v_mad_u64_u32 v[0:1], null, v0, s33, v[25:26]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v27, 0x80000000, v0, s2
	v_or_b32_e32 v0, 8, v2
	v_or_b32_e32 v0, s6, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s33, v[25:26]
	v_cndmask_b32_e64 v28, 0x80000000, v0, s2
	v_or_b32_e32 v0, 12, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s6, v0
	v_mad_u64_u32 v[0:1], null, v0, s33, v[25:26]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v29, 0x80000000, v0, s2
	v_or_b32_e32 v0, 16, v2
	v_or_b32_e32 v0, s6, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s33, v[25:26]
	v_cndmask_b32_e64 v30, 0x80000000, v0, s2
	v_or_b32_e32 v0, 20, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s6, v0
	v_mad_u64_u32 v[0:1], null, v0, s33, v[25:26]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v31, 0x80000000, v0, s2
	v_or_b32_e32 v0, 24, v2
	v_or_b32_e32 v0, s6, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s33, v[25:26]
	v_cndmask_b32_e64 v32, 0x80000000, v0, s2
	v_or_b32_e32 v0, 28, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s6, v0
	v_mad_u64_u32 v[0:1], null, v0, s33, v[25:26]
	v_and_b32_e32 v1, 31, v108
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v249, s6, v1
	scratch_load_b64 v[1:2], off, off offset:232 ; 8-byte Folded Reload
	v_dual_mov_b32 v159, v162 :: v_dual_mov_b32 v162, v125
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	v_mov_b32_e32 v169, v167
	v_mov_b32_e32 v167, v122
	v_mov_b32_e32 v173, v124
	v_mov_b32_e32 v153, v127
	v_mov_b32_e32 v187, v147
	v_mov_b32_e32 v147, v133
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s6, s35, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, v1, v249
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v6, v1, s[24:27], 0 offen
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[1:2], off, off offset:240
	scratch_load_b64 v[2:3], off, off offset:248
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, v1, v249
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, v2, v249
	s_clause 0x1
	buffer_load_u8 v1, v1, s[24:27], 0 offen
	buffer_load_u8 v8, v2, s[24:27], 0 offen
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[2:3], off, off offset:256
	scratch_load_b64 v[3:4], off, off offset:264
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, v2, v249
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, v3, v249
	s_clause 0x1
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v10, v3, s[24:27], 0 offen
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[3:4], off, off offset:272
	scratch_load_b64 v[4:5], off, off offset:280
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, v3, v249
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, v4, v249
	s_clause 0x1
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v12, v4, s[24:27], 0 offen
	scratch_load_b64 v[4:5], off, off offset:288 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, v13, v249
	buffer_load_u8 v14, v5, s[24:27], 0 offen
	v_add_nc_u32_e32 v5, v15, v249
	scratch_load_b64 v[15:16], off, off offset:312 ; 8-byte Folded Reload
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	v_add_nc_u32_e32 v4, v4, v249
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v7, v15, v249
	buffer_load_u8 v16, v7, s[24:27], 0 offen
	v_add_nc_u32_e32 v7, v17, v249
	scratch_load_b64 v[17:18], off, off offset:328 ; 8-byte Folded Reload
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v9, v17, v249
	buffer_load_u8 v18, v9, s[24:27], 0 offen
	v_add_nc_u32_e32 v9, v19, v249
	scratch_load_b64 v[19:20], off, off offset:344 ; 8-byte Folded Reload
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v11, v19, v249
	buffer_load_u8 v20, v11, s[24:27], 0 offen
	v_add_nc_u32_e32 v11, v21, v249
	scratch_load_b64 v[21:22], off, off offset:360 ; 8-byte Folded Reload
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, v21, v249
	buffer_load_u8 v22, v13, s[24:27], 0 offen
	v_add_nc_u32_e32 v13, v23, v249
	scratch_load_b64 v[23:24], off, off offset:376 ; 8-byte Folded Reload
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v15, v23, v249
	buffer_load_u8 v24, v15, s[24:27], 0 offen
	v_add_nc_u32_e32 v15, v33, v249
	scratch_load_b64 v[33:34], off, off offset:392 ; 8-byte Folded Reload
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v17, v33, v249
	scratch_load_b64 v[33:34], off, off offset:400 ; 8-byte Folded Reload
	buffer_load_u8 v59, v17, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v17, v33, v249
	scratch_load_b64 v[33:34], off, off offset:408 ; 8-byte Folded Reload
	buffer_load_u8 v17, v17, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v19, v33, v249
	scratch_load_b64 v[33:34], off, off offset:416 ; 8-byte Folded Reload
	buffer_load_u8 v62, v19, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v19, v33, v249
	scratch_load_b64 v[33:34], off, off offset:424 ; 8-byte Folded Reload
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, v33, v249
	scratch_load_b64 v[33:34], off, off offset:432 ; 8-byte Folded Reload
	buffer_load_u8 v66, v21, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, v33, v249
	scratch_load_b64 v[33:34], off, off offset:440 ; 8-byte Folded Reload
	buffer_load_u8 v21, v21, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, v33, v249
	scratch_load_b64 v[33:34], off, off offset:448 ; 8-byte Folded Reload
	buffer_load_u8 v70, v23, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, v33, v249
	scratch_load_b64 v[33:34], off, off offset:456 ; 8-byte Folded Reload
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v33, v33, v249
	buffer_load_u8 v81, v33, s[24:27], 0 offen
	scratch_load_b64 v[33:34], off, off offset:464 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, v33, v249
	buffer_load_u8 v51, v33, s[24:27], 0 offen
	scratch_load_b64 v[33:34], off, off offset:472 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, v33, v249
	buffer_load_u8 v88, v33, s[24:27], 0 offen
	scratch_load_b64 v[33:34], off, off offset:480 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, v33, v249
	buffer_load_u8 v60, v33, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v26, v26, s[20:23], 0 offen
	buffer_load_u8 v27, v27, s[20:23], 0 offen
	buffer_load_u8 v28, v28, s[20:23], 0 offen
	buffer_load_u8 v30, v30, s[20:23], 0 offen
	buffer_load_u8 v31, v31, s[20:23], 0 offen
	buffer_load_u8 v32, v32, s[20:23], 0 offen
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	buffer_load_u8 v29, v29, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:776
	scratch_load_b32 v25, off, off offset:588
	s_waitcnt vmcnt(0)
	ds_store_b8 v25, v29
	ds_store_b8 v33, v32 offset:1536
	scratch_load_b32 v25, off, off offset:592 ; 4-byte Folded Reload
	ds_store_b8 v33, v26
	ds_store_b8 v33, v27 offset:256
	ds_store_b8 v33, v28 offset:512
	ds_store_b8 v33, v30 offset:1024
	ds_store_b8 v33, v31 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v25, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v236 offset:320
	ds_load_u8 v26, v236 offset:256
	ds_load_u8 v64, v236 offset:336
	ds_load_u8 v65, v236 offset:272
	ds_load_u8 v32, v236 offset:352
	ds_load_u8 v33, v236 offset:288
	ds_load_u8 v250, v236 offset:368
	ds_load_u8 v251, v236 offset:304
	ds_load_u8 v215, v236 offset:1584
	ds_load_u8 v96, v236 offset:1536
	ds_load_u8 v97, v236 offset:1600
	ds_load_u8 v107, v236 offset:1616
	ds_load_u8 v104, v236 offset:1632
	ds_load_u8 v210, v236 offset:1648
	ds_load_u8 v86, v236 offset:1920
	ds_load_u8 v87, v236 offset:1984
	ds_load_u8 v103, v236 offset:2000
	ds_load_u8 v80, v236 offset:2016
	ds_load_u8 v108, v236 offset:1744
	ds_load_u8 v109, v236 offset:1760
	ds_load_u8 v237, v236 offset:1712
	ds_load_u8 v112, v236 offset:1168
	ds_load_u8 v110, v236 offset:1184
	ds_load_u8 v113, v236 offset:1040
	ds_load_u8 v248, v236 offset:1056
	ds_load_u8 v114, v236 offset:1424
	ds_load_u8 v117, v236 offset:1440
	ds_load_u8 v115, v236 offset:1296
	ds_load_u8 v119, v236 offset:1312
	ds_load_u8 v128, v236 offset:1680
	ds_load_u8 v111, v236 offset:1696
	ds_load_u8 v129, v236 offset:1552
	ds_load_u8 v116, v236 offset:1568
	ds_load_u8 v130, v236 offset:1936
	ds_load_u8 v118, v236 offset:1952
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	ds_load_u8 v26, v236 offset:448
	ds_load_u8 v27, v236 offset:384
	ds_load_u8 v67, v236 offset:464
	ds_load_u8 v68, v236 offset:400
	ds_load_u8 v34, v236 offset:480
	ds_load_u8 v35, v236 offset:416
	ds_load_u8 v218, v236 offset:496
	ds_load_u8 v253, v236 offset:432
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v96, v96, v97, 0xc0c0004
	ds_load_u8 v97, v236 offset:1664
	ds_load_u8 v105, v236 offset:1728
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v89, v86, v87, 0xc0c0004
	v_mov_b32_e32 v86, v207
	v_mov_b32_e32 v207, v179
	v_mov_b32_e32 v179, v141
	v_mov_b32_e32 v87, v193
	v_mov_b32_e32 v193, v191
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v236 offset:64
	ds_load_u8 v28, v236
	ds_load_u8 v234, v236 offset:80
	ds_load_u8 v36, v236 offset:96
	ds_load_u8 v254, v236 offset:112
	ds_load_u8 v69, v236 offset:16
	ds_load_u8 v37, v236 offset:32
	ds_load_u8 v255, v236 offset:48
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v65, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v33, v35, v34, 0xc0c0004
	v_lshl_or_b32 v91, v26, 16, v0
	ds_load_u8 v0, v236 offset:832
	ds_load_u8 v26, v236 offset:768
	ds_load_u8 v72, v236 offset:848
	ds_load_u8 v73, v236 offset:784
	ds_load_u8 v43, v236 offset:864
	ds_load_u8 v44, v236 offset:800
	ds_load_u8 v99, v236 offset:880
	ds_load_u8 v230, v236 offset:816
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v105, v97, v105, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v236 offset:192
	ds_load_u8 v29, v236 offset:128
	ds_load_u8 v239, v236 offset:208
	ds_load_u8 v240, v236 offset:144
	ds_load_u8 v38, v236 offset:224
	ds_load_u8 v39, v236 offset:160
	ds_load_u8 v98, v236 offset:240
	ds_load_u8 v228, v236 offset:176
	v_lshl_or_b32 v96, v105, 16, v96
	ds_load_u8 v131, v236 offset:1808
	ds_load_u8 v105, v236 offset:1824
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v67, v69, v234, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v34, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v240, v239, 0xc0c0004
	v_lshl_or_b32 v240, v65, 16, v64
	v_perm_b32 v64, v73, v72, 0xc0c0004
	v_lshl_or_b32 v90, v28, 16, v27
	v_perm_b32 v28, v26, v0, 0xc0c0004
	ds_load_u8 v26, v236 offset:960
	ds_load_u8 v27, v236 offset:896
	ds_load_u8 v75, v236 offset:976
	ds_load_u8 v76, v236 offset:912
	ds_load_u8 v48, v236 offset:992
	ds_load_u8 v49, v236 offset:928
	ds_load_u8 v0, v236 offset:944
	v_lshl_or_b32 v239, v68, 16, v67
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v35, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v29, v27, v26, 0xc0c0004
	ds_load_u8 v26, v236 offset:576
	ds_load_u8 v27, v236 offset:512
	ds_load_u8 v78, v236 offset:592
	ds_load_u8 v79, v236 offset:528
	ds_load_u8 v53, v236 offset:608
	ds_load_u8 v25, v236 offset:544
	ds_load_u8 v231, v236 offset:624
	ds_load_u8 v232, v236 offset:560
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v65, v76, v75, 0xc0c0004
	v_lshl_or_b32 v93, v29, 16, v28
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v133, v65, 16, v64
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v30, v27, v26, 0xc0c0004
	ds_load_u8 v31, v236 offset:704
	ds_load_u8 v40, v236 offset:640
	ds_load_u8 v82, v236 offset:720
	ds_load_u8 v83, v236 offset:656
	ds_load_u8 v56, v236 offset:736
	ds_load_u8 v57, v236 offset:672
	ds_load_u8 v26, v236 offset:752
	ds_load_u8 v27, v236 offset:688
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v67, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v31, v40, v31, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v92, v31, 16, v30
	ds_load_u8 v30, v236 offset:1344
	ds_load_u8 v31, v236 offset:1280
	ds_load_u8 v233, v236 offset:1264
	ds_load_u8 v84, v236 offset:1360
	ds_load_u8 v61, v236 offset:1376
	ds_load_u8 v28, v236 offset:1392
	ds_load_u8 v29, v236 offset:1328
	v_lshl_or_b32 v132, v68, 16, v67
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_perm_b32 v27, v230, v99, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v40, v31, v30, 0xc0c0004
	ds_load_u8 v41, v236 offset:1408
	ds_load_u8 v42, v236 offset:1472
	ds_load_u8 v85, v236 offset:1488
	ds_load_u8 v63, v236 offset:1504
	ds_load_u8 v30, v236 offset:1520
	ds_load_u8 v31, v236 offset:1456
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v64, v115, v84, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v46, v41, v42, 0xc0c0004
	ds_load_u8 v45, v236 offset:1024
	ds_load_u8 v47, v236 offset:1088
	ds_load_u8 v100, v236 offset:1104
	ds_load_u8 v71, v236 offset:1120
	ds_load_u8 v41, v236 offset:1136
	ds_load_u8 v42, v236 offset:1072
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v65, v114, v85, 0xc0c0004
	v_lshl_or_b32 v95, v46, 16, v40
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v135, v65, 16, v64
	v_perm_b32 v65, v130, v103, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v47, v45, v47, 0xc0c0004
	ds_load_u8 v50, v236 offset:1152
	ds_load_u8 v52, v236 offset:1216
	ds_load_u8 v101, v236 offset:1232
	ds_load_u8 v74, v236 offset:1248
	ds_load_u8 v45, v236 offset:1200
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v67, v113, v100, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v50, v50, v52, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v68, v112, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v94, v50, 16, v47
	ds_load_u8 v40, v236 offset:1792
	ds_load_u8 v52, v236 offset:1856
	ds_load_u8 v102, v236 offset:1872
	ds_load_u8 v77, v236 offset:1888
	ds_load_u8 v46, v236 offset:1904
	ds_load_u8 v47, v236 offset:1840
	ds_load_u8 v219, v236 offset:1776
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v40, v40, v52, 0xc0c0004
	scratch_load_b32 v52, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v64, v131, v102, 0xc0c0004
	v_lshl_or_b32 v97, v89, 16, v40
	s_waitcnt vmcnt(0)
	ds_load_u8 v58, v52
	scratch_load_b32 v52, off, off offset:600 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v52, v52
	ds_load_u8 v54, v236 offset:1968
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v40, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v0, v58, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, 0, v40
	ds_store_b8 v40, v6
	ds_store_b8 v40, v8 offset:512
	ds_store_b8 v40, v10 offset:1024
	ds_store_b8 v40, v12 offset:1536
	ds_store_b8 v40, v14 offset:2048
	ds_store_b8 v40, v16 offset:2560
	ds_store_b8 v40, v18 offset:3072
	ds_store_b8 v40, v20 offset:3584
	ds_store_b8 v40, v22 offset:4096
	ds_store_b8 v40, v24 offset:4608
	ds_store_b8 v40, v59 offset:5120
	ds_store_b8 v40, v62 offset:5632
	ds_store_b8 v40, v66 offset:6144
	ds_store_b8 v40, v70 offset:6656
	ds_store_b8 v40, v81 offset:7168
	ds_store_b8 v40, v88 offset:7680
	ds_store_b8 v243, v1
	ds_store_b8 v243, v2 offset:512
	ds_store_b8 v243, v3 offset:1024
	ds_store_b8 v243, v4 offset:1536
	ds_store_b8 v243, v5 offset:2048
	ds_store_b8 v243, v7 offset:2560
	ds_store_b8 v243, v9 offset:3072
	ds_store_b8 v243, v11 offset:3584
	ds_store_b8 v243, v13 offset:4096
	ds_store_b8 v243, v15 offset:4608
	ds_store_b8 v243, v17 offset:5120
	ds_store_b8 v243, v19 offset:5632
	ds_store_b8 v243, v21 offset:6144
	ds_store_b8 v243, v23 offset:6656
	ds_store_b8 v243, v51 offset:7168
	ds_store_b8 v243, v60 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v1, off, off offset:224
	scratch_load_b32 v59, off, off offset:604
	scratch_load_b32 v252, off, off offset:608
	scratch_load_b32 v50, off, off offset:612
	v_mov_b32_e32 v197, v149
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v149, v0, 16, v27
	v_perm_b32 v0, v29, v28, 0xc0c0004
	v_perm_b32 v27, v42, v41, 0xc0c0004
	v_perm_b32 v28, v45, v233, 0xc0c0004
	scratch_load_b64 v[41:42], off, off offset:696 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v51, 0, v1
	s_waitcnt vmcnt(3)
	ds_load_2addr_stride64_b64 v[13:16], v59 offset1:8
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[17:20], v252 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v1, s8 :: v_dual_mov_b32 v2, s9
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[9:12], v51 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v3, s10 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v5, s12 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v7, s14 :: v_dual_mov_b32 v8, s15
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[21:24], v50 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[9:10], v[90:91], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[13:14], v[92:93], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[17:18], v[94:95], v[120:127] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[21:22], v[96:97], v[120:127] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v106, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v246, v121
	v_cvt_f32_i32_e32 v245, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v244, v123
	v_cvt_f32_i32_e32 v238, v124
	v_cvt_f32_i32_e32 v235, v125
	v_cvt_f32_i32_e32 v89, v126
	v_cvt_f32_i32_e32 v88, v127
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[120:127], v[11:12], v[90:91], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[15:16], v[92:93], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[19:20], v[94:95], v[120:127] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[23:24], v[96:97], v[120:127] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v81, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v62, v125
	v_cvt_f32_i32_e32 v60, v126
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v55, v127
	v_cvt_f32_i32_e32 v70, v121
	v_cvt_f32_i32_e32 v242, v122
	v_cvt_f32_i32_e32 v241, v123
	v_cvt_f32_i32_e32 v66, v124
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[120:127], v[9:10], v[239:240], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v55, off offset:188 ; 4-byte Folded Spill
	v_dual_mov_b32 v55, v202 :: v_dual_mov_b32 v202, v163
	v_mov_b32_e32 v163, v134
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v134, v68, 16, v67
	v_perm_b32 v67, v129, v107, 0xc0c0004
	v_perm_b32 v68, v128, v108, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[120:127], v[13:14], v[132:133], v[120:127] neg_lo:[1,1,0]
	v_lshl_or_b32 v129, v65, 16, v64
	v_mov_b32_e32 v191, v140
	v_mov_b32_e32 v189, v138
	v_lshl_or_b32 v128, v68, 16, v67
	v_wmma_i32_16x16x16_iu4 v[120:127], v[17:18], v[134:135], v[120:127] neg_lo:[1,1,0]
	v_lshl_or_b32 v138, v28, 16, v27
	v_perm_b32 v27, v47, v46, 0xc0c0004
	v_perm_b32 v28, v54, v52, 0xc0c0004
	scratch_load_b64 v[45:46], off, off offset:736 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[120:127], v[21:22], v[128:129], v[120:127] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v100, v120
	v_cvt_f32_i32_e32 v85, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v84, v122
	v_cvt_f32_i32_e32 v83, v123
	v_cvt_f32_i32_e32 v82, v124
	v_cvt_f32_i32_e32 v79, v125
	v_cvt_f32_i32_e32 v78, v126
	v_cvt_f32_i32_e32 v76, v127
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[120:127], v[11:12], v[239:240], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[15:16], v[132:133], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[19:20], v[134:135], v[120:127] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[23:24], v[128:129], v[120:127] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v65, v126
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v64, v127
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v127, v33, 16, v32
	v_lshl_or_b32 v126, v35, 16, v34
	v_perm_b32 v32, v44, v43, 0xc0c0004
	v_perm_b32 v33, v49, v48, 0xc0c0004
	v_perm_b32 v34, v25, v53, 0xc0c0004
	v_perm_b32 v35, v57, v56, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v69, v120
	v_cvt_f32_i32_e32 v75, v121
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v141, v33, 16, v32
	v_perm_b32 v32, v119, v61, 0xc0c0004
	v_lshl_or_b32 v140, v35, 16, v34
	v_perm_b32 v33, v117, v63, 0xc0c0004
	v_perm_b32 v34, v248, v71, 0xc0c0004
	v_perm_b32 v35, v110, v74, 0xc0c0004
	v_mov_b32_e32 v110, v143
	v_mov_b32_e32 v74, v142
	v_lshl_or_b32 v143, v33, 16, v32
	v_perm_b32 v32, v105, v77, 0xc0c0004
	v_lshl_or_b32 v142, v35, 16, v34
	v_perm_b32 v33, v118, v80, 0xc0c0004
	v_perm_b32 v34, v116, v104, 0xc0c0004
	v_perm_b32 v35, v111, v109, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v73, v122
	v_cvt_f32_i32_e32 v72, v123
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v131, v33, 16, v32
	v_mov_b32_e32 v25, v190
	v_lshl_or_b32 v130, v35, 16, v34
	v_wmma_i32_16x16x16_iu4 v[32:39], v[9:10], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v190, v139
	v_perm_b32 v49, v228, v98, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v67, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[32:39], v[13:14], v[140:141], v[32:39] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v68, v124
	scratch_load_b64 v[57:58], off, off offset:760 ; 8-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[32:39], v[17:18], v[142:143], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[21:22], v[130:131], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v105, v35
	v_cvt_f32_i32_e32 v103, v37
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v35, v251, v250, 0xc0c0004
	v_perm_b32 v37, v253, v218, 0xc0c0004
	v_mov_b32_e32 v218, v178
	v_mov_b32_e32 v178, v137
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v101, v39
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v39, v255, v254, 0xc0c0004
	v_lshl_or_b32 v137, v37, 16, v35
	v_perm_b32 v35, v232, v231, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v109, v32
	v_cvt_f32_i32_e32 v108, v33
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v136, v49, 16, v39
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v107, v34
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v148, v26, 16, v35
	v_perm_b32 v26, v31, v30, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v104, v36
	v_cvt_f32_i32_e32 v102, v38
	v_mov_b32_e32 v185, v145
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v139, v26, 16, v0
	v_perm_b32 v0, v215, v210, 0xc0c0004
	v_mov_b32_e32 v215, v205
	v_dual_mov_b32 v205, v204 :: v_dual_mov_b32 v204, v199
	v_wmma_i32_16x16x16_iu4 v[116:123], v[11:12], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v26, v237, v219, 0xc0c0004
	v_mov_b32_e32 v219, v198
	v_mov_b32_e32 v198, v150
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[15:16], v[140:141], v[116:123] neg_lo:[1,1,0]
	v_mov_b32_e32 v199, v151
	v_lshl_or_b32 v150, v26, 16, v0
	v_lshl_or_b32 v151, v28, 16, v27
	scratch_load_b64 v[26:27], off, off offset:648 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[116:123], v[19:20], v[142:143], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[23:24], v[130:131], v[116:123] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v38, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v34, v121
	v_cvt_f32_i32_e32 v33, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v32, v123
	v_cvt_f32_i32_e32 v48, v117
	v_cvt_f32_i32_e32 v44, v118
	v_cvt_f32_i32_e32 v43, v119
	v_cvt_f32_i32_e32 v36, v120
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[116:123], v[9:10], v[136:137], v[1:8] neg_lo:[1,1,0]
	scratch_load_b64 v[9:10], off, off offset:488 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[116:123], v[13:14], v[148:149], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[17:18], v[138:139], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[21:22], v[150:151], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v228, v116
	v_cvt_f32_i32_e32 v234, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v237, v118
	v_cvt_f32_i32_e32 v223, v119
	v_cvt_f32_i32_e32 v145, v120
	v_cvt_f32_i32_e32 v229, v121
	v_cvt_f32_i32_e32 v225, v122
	v_cvt_f32_i32_e32 v210, v123
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, v9, v249
	scratch_load_b64 v[9:10], off, off offset:496 ; 8-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[116:123], v[11:12], v[136:137], v[1:8] neg_lo:[1,1,0]
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[10:11], off, off offset:504
	scratch_load_b64 v[11:12], off, off offset:512
	scratch_load_b64 v[12:13], off, off offset:520
	scratch_load_b64 v[13:14], off, off offset:528
	v_wmma_i32_16x16x16_iu4 v[116:123], v[15:16], v[148:149], v[116:123] neg_lo:[1,1,0]
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[14:15], off, off offset:536
	scratch_load_b64 v[15:16], off, off offset:544
	scratch_load_b64 v[16:17], off, off offset:552
	scratch_load_b64 v[17:18], off, off offset:560
	v_wmma_i32_16x16x16_iu4 v[116:123], v[19:20], v[138:139], v[116:123] neg_lo:[1,1,0]
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[18:19], off, off offset:568
	scratch_load_b64 v[19:20], off, off offset:580
	scratch_load_b64 v[20:21], off, off offset:616
	scratch_load_b64 v[21:22], off, off offset:624
	v_wmma_i32_16x16x16_iu4 v[116:123], v[23:24], v[150:151], v[116:123] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[22:23], off, off offset:632
	scratch_load_b64 v[23:24], off, off offset:640
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, v26, v249
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[26:27], off, off offset:656
	scratch_load_b64 v[27:28], off, off offset:664
	scratch_load_b64 v[28:29], off, off offset:672
	scratch_load_b64 v[29:30], off, off offset:680
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v99, v116
	v_cvt_f32_i32_e32 v56, v121
	v_cvt_f32_i32_e32 v54, v122
	v_cvt_f32_i32_e32 v52, v123
	v_cvt_f32_i32_e32 v116, v118
	v_cvt_f32_i32_e32 v111, v119
	v_cvt_f32_i32_e32 v98, v120
	v_cvt_f32_i32_e32 v117, v117
	scratch_load_b64 v[30:31], off, off offset:688 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, v41, v249
	scratch_load_b64 v[41:42], off, off offset:704 ; 8-byte Folded Reload
	v_add_nc_u32_e32 v9, v9, v249
	v_add_nc_u32_e32 v10, v10, v249
	v_add_nc_u32_e32 v11, v11, v249
	v_add_nc_u32_e32 v12, v12, v249
	v_add_nc_u32_e32 v13, v13, v249
	v_add_nc_u32_e32 v14, v14, v249
	v_add_nc_u32_e32 v15, v15, v249
	v_add_nc_u32_e32 v16, v16, v249
	v_add_nc_u32_e32 v17, v17, v249
	v_add_nc_u32_e32 v18, v18, v249
	v_add_nc_u32_e32 v19, v19, v249
	v_add_nc_u32_e32 v20, v20, v249
	v_add_nc_u32_e32 v21, v21, v249
	v_add_nc_u32_e32 v22, v22, v249
	v_add_nc_u32_e32 v23, v23, v249
	v_add_nc_u32_e32 v26, v26, v249
	v_add_nc_u32_e32 v27, v27, v249
	v_add_nc_u32_e32 v28, v28, v249
	v_add_nc_u32_e32 v29, v29, v249
	v_add_nc_u32_e32 v30, v30, v249
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, v41, v249
	scratch_load_b64 v[41:42], off, off offset:712 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, v41, v249
	scratch_load_b64 v[41:42], off, off offset:720 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, v41, v249
	scratch_load_b64 v[41:42], off, off offset:728 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, v45, v249
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[45:46], off, off offset:744
	scratch_load_b64 v[46:47], off, off offset:752
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, v57, v249
	scratch_load_b64 v[57:58], off, off offset:768 ; 8-byte Folded Reload
	v_add_nc_u32_e32 v41, v41, v249
	v_add_nc_u32_e32 v45, v45, v249
	v_add_nc_u32_e32 v46, v46, v249
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v49, v57, v249
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1f
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	buffer_load_u8 v18, v18, s[24:27], 0 offen
	buffer_load_u8 v20, v20, s[24:27], 0 offen
	buffer_load_u8 v22, v22, s[24:27], 0 offen
	buffer_load_u8 v24, v24, s[24:27], 0 offen
	buffer_load_u8 v27, v27, s[24:27], 0 offen
	buffer_load_u8 v29, v29, s[24:27], 0 offen
	buffer_load_u8 v31, v31, s[24:27], 0 offen
	buffer_load_u8 v37, v37, s[24:27], 0 offen
	buffer_load_u8 v41, v41, s[24:27], 0 offen
	buffer_load_u8 v45, v45, s[24:27], 0 offen
	buffer_load_u8 v47, v47, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	buffer_load_u8 v21, v21, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v17, v17, s[24:27], 0 offen
	buffer_load_u8 v35, v35, s[24:27], 0 offen
	buffer_load_u8 v30, v30, s[24:27], 0 offen
	buffer_load_u8 v28, v28, s[24:27], 0 offen
	buffer_load_u8 v26, v26, s[24:27], 0 offen
	buffer_load_u8 v49, v49, s[24:27], 0 offen
	buffer_load_u8 v46, v46, s[24:27], 0 offen
	buffer_load_u8 v42, v42, s[24:27], 0 offen
	buffer_load_u8 v39, v39, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v40, v0
	s_waitcnt vmcnt(30)
	ds_store_b8 v40, v10 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v40, v12 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v40, v14 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v40, v16 offset:2048
	s_waitcnt vmcnt(26)
	ds_store_b8 v40, v18 offset:2560
	s_waitcnt vmcnt(25)
	ds_store_b8 v40, v20 offset:3072
	s_waitcnt vmcnt(24)
	ds_store_b8 v40, v22 offset:3584
	s_waitcnt vmcnt(23)
	ds_store_b8 v40, v24 offset:4096
	s_waitcnt vmcnt(22)
	ds_store_b8 v40, v27 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v40, v29 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v40, v31 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v40, v37 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v40, v41 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v40, v45 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v40, v47 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v243, v9
	ds_store_b8 v243, v11 offset:512
	ds_store_b8 v243, v13 offset:1024
	ds_store_b8 v243, v15 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v243, v17 offset:2048
	ds_store_b8 v243, v19 offset:2560
	ds_store_b8 v243, v21 offset:3072
	ds_store_b8 v243, v23 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v243, v26 offset:4096
	ds_store_b8 v243, v28 offset:4608
	ds_store_b8 v243, v30 offset:5120
	ds_store_b8 v243, v35 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v243, v39 offset:6144
	ds_store_b8 v243, v42 offset:6656
	ds_store_b8 v243, v46 offset:7168
	ds_store_b8 v243, v49 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[230:233], v51 offset1:8
	ds_load_2addr_stride64_b64 v[248:251], v59 offset1:8
	ds_load_2addr_stride64_b64 v[252:255], v252 offset1:8
	ds_load_2addr_stride64_b64 v[112:115], v50 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[230:231], v[90:91], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[230:231], v[126:127], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[248:249], v[92:93], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[248:249], v[140:141], v[118:125] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[252:253], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[252:253], v[142:143], v[118:125] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[112:113], v[96:97], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[112:113], v[130:131], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v53, v10
	v_cvt_f32_i32_e32 v51, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v50, v12
	v_cvt_f32_i32_e32 v42, v13
	v_cvt_f32_i32_e32 v41, v14
	v_cvt_f32_i32_e32 v40, v15
	v_cvt_f32_i32_e32 v39, v16
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[10:17], v[232:233], v[90:91], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v61, v122
	v_cvt_f32_i32_e32 v58, v123
	v_cvt_f32_i32_e32 v57, v124
	v_cvt_f32_i32_e32 v0, v9
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[10:17], v[250:251], v[92:93], v[10:17] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[254:255], v[94:95], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[114:115], v[96:97], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[230:231], v[239:240], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v59, v15
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[90:97], v[248:249], v[132:133], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v35, v10
	v_cvt_f32_i32_e32 v9, v16
	v_cvt_f32_i32_e32 v10, v17
	v_cvt_f32_i32_e32 v18, v11
	v_cvt_f32_i32_e32 v17, v12
	v_cvt_f32_i32_e32 v16, v13
	v_cvt_f32_i32_e32 v11, v14
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[90:97], v[252:253], v[134:135], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[112:113], v[128:129], v[90:97] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v80, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v77, v91
	v_cvt_f32_i32_e32 v71, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v63, v93
	v_cvt_f32_i32_e32 v49, v94
	v_cvt_f32_i32_e32 v47, v95
	v_cvt_f32_i32_e32 v46, v96
	v_cvt_f32_i32_e32 v45, v97
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[90:97], v[232:233], v[239:240], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[250:251], v[132:133], v[90:97] neg_lo:[1,1,0]
	v_mov_b32_e32 v132, v188
	v_wmma_i32_16x16x16_iu4 v[90:97], v[254:255], v[134:135], v[90:97] neg_lo:[1,1,0]
	v_dual_mov_b32 v134, v163 :: v_dual_mov_b32 v163, v202
	v_mov_b32_e32 v202, v55
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v55, v125
	v_mov_b32_e32 v135, v172
	v_mov_b32_e32 v172, v216
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[90:97], v[114:115], v[128:129], v[90:97] neg_lo:[1,1,0]
	v_mov_b32_e32 v128, v181
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v27, v91
	v_cvt_f32_i32_e32 v26, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v24, v93
	v_cvt_f32_i32_e32 v15, v94
	v_cvt_f32_i32_e32 v94, v118
	v_cvt_f32_i32_e32 v93, v119
	v_cvt_f32_i32_e32 v92, v120
	v_cvt_f32_i32_e32 v91, v121
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[232:233], v[126:127], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v23, v90
	v_cvt_f32_i32_e32 v12, v95
	v_cvt_f32_i32_e32 v13, v96
	v_cvt_f32_i32_e32 v14, v97
	v_dual_mov_b32 v126, v154 :: v_dual_mov_b32 v127, v153
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[250:251], v[140:141], v[118:125] neg_lo:[1,1,0]
	v_mov_b32_e32 v141, v179
	v_mov_b32_e32 v179, v207
	v_dual_mov_b32 v207, v86 :: v_dual_mov_b32 v140, v191
	v_mov_b32_e32 v191, v193
	v_mov_b32_e32 v193, v87
	v_wmma_i32_16x16x16_iu4 v[118:125], v[254:255], v[142:143], v[118:125] neg_lo:[1,1,0]
	v_mov_b32_e32 v143, v110
	v_mov_b32_e32 v142, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[114:115], v[130:131], v[118:125] neg_lo:[1,1,0]
	v_mov_b32_e32 v130, v176
	v_mov_b32_e32 v176, v166
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v28, v118
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v19, v123
	v_cvt_f32_i32_e32 v20, v124
	v_cvt_f32_i32_e32 v21, v125
	v_cvt_f32_i32_e32 v31, v119
	v_cvt_f32_i32_e32 v30, v120
	v_cvt_f32_i32_e32 v29, v121
	v_cvt_f32_i32_e32 v22, v122
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[230:231], v[136:137], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[248:249], v[148:149], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[118:125], v[252:253], v[138:139], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[112:113], v[150:151], v[118:125] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v110, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v97, v119
	v_cvt_f32_i32_e32 v96, v120
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v95, v121
	v_cvt_f32_i32_e32 v90, v122
	v_cvt_f32_i32_e32 v87, v123
	v_cvt_f32_i32_e32 v86, v124
	v_cvt_f32_i32_e32 v74, v125
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[232:233], v[136:137], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v136, v152
	v_mov_b32_e32 v152, v192
	v_mov_b32_e32 v192, v194
	v_mov_b32_e32 v194, v212
	v_wmma_i32_16x16x16_iu4 v[118:125], v[250:251], v[148:149], v[118:125] neg_lo:[1,1,0]
	v_mov_b32_e32 v148, v196
	v_mov_b32_e32 v196, v203
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[254:255], v[138:139], v[118:125] neg_lo:[1,1,0]
	v_dual_mov_b32 v139, v190 :: v_dual_mov_b32 v190, v25
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v25, off, off offset:204 ; 4-byte Folded Reload
	v_mov_b32_e32 v138, v189
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[118:125], v[114:115], v[150:151], v[118:125] neg_lo:[1,1,0]
	v_mov_b32_e32 v150, v198
	v_mov_b32_e32 v198, v219
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v1, v123
	v_cvt_f32_i32_e32 v2, v124
	v_cvt_f32_i32_e32 v4, v122
	v_cvt_f32_i32_e32 v5, v118
	v_cvt_f32_i32_e32 v8, v119
	v_cvt_f32_i32_e32 v7, v120
	v_cvt_f32_i32_e32 v6, v121
	v_cvt_f32_i32_e32 v3, v125
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v37, s35, v25, 1
	scratch_load_b32 v25, off, off offset:208 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v112, s35, v25, 1
	scratch_load_b32 v25, off, off offset:212 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v113, s35, v25, 1
	scratch_load_b32 v25, off, off offset:216 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v114, s35, v25, 1
	scratch_load_b32 v25, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s35, s35, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s35, s34
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v114, 0x80000000, v114, s4
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v115, v25, s6, 1
	buffer_load_u16 v115, v115, s[28:31], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v37, v37, s[16:19], 0 offen
	buffer_load_u16 v122, v112, s[16:19], 0 offen
	buffer_load_u16 v123, v113, s[16:19], 0 offen
	buffer_load_u16 v124, v114, s[16:19], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v216, off, off offset:576 ; 4-byte Folded Reload
	v_mov_b32_e32 v133, v147
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v181, v164 :: v_dual_lshlrev_b32 v112, 16, v115
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v37, 16, v37
	v_mov_b32_e32 v147, v187
	v_dual_mov_b32 v129, v182 :: v_dual_mov_b32 v182, v155
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v106, v37, v106
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v216, v112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[112:115], v217
	ds_load_b128 v[118:121], v217 offset:16
	v_dual_mov_b32 v125, v162 :: v_dual_mov_b32 v162, v159
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v180, v106, v112
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v106, v37, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v181, v106, v113
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v106, v37, v245
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v221, v106, v114 :: v_dual_mul_f32 v106, v37, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v182, v106, v115
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v106, 16, v122
	v_dual_mov_b32 v122, v167 :: v_dual_mov_b32 v167, v169
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v85, v106, v85
	v_mul_f32_e32 v83, v106, v83
	v_dual_mul_f32 v100, v106, v100 :: v_dual_mul_f32 v69, v69, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v84, v106, v84 :: v_dual_fmac_f32 v163, v85, v113
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v85, 16, v123
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v167, v83, v115 :: v_dual_fmac_f32 v162, v100, v112
	v_dual_mov_b32 v123, v160 :: v_dual_mov_b32 v160, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v83, v85, v109 :: v_dual_mul_f32 v82, v106, v82
	v_mov_b32_e32 v151, v199
	v_dual_mov_b32 v199, v204 :: v_dual_mul_f32 v78, v106, v78
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v83, v112
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v85, v108
	v_dual_mov_b32 v204, v205 :: v_dual_mov_b32 v205, v215
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v150, v78, v120 :: v_dual_mov_b32 v215, v168
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v76, v106, v76
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v134, v83, v113 :: v_dual_mul_f32 v83, v85, v107
	v_fmac_f32_e32 v148, v82, v118
	v_mov_b32_e32 v108, v174
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v107, off, off offset:128
	scratch_load_b32 v154, off, off offset:124
	v_dual_fmac_f32 v136, v83, v114 :: v_dual_mul_f32 v83, v85, v105
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v105, 16, v124
	v_dual_mov_b32 v124, v173 :: v_dual_fmac_f32 v151, v76, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v76, v85, v104 :: v_dual_fmac_f32 v135, v83, v115
	v_mul_f32_e32 v83, v105, v228
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v171, v84, v114
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v104, off, off offset:92
	scratch_load_b32 v153, off, off offset:96
	v_fmac_f32_e32 v126, v76, v118
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v76, v85, v103
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v83, v112
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v112, off, off offset:184
	scratch_load_b32 v164, off, off offset:140
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v105, v234
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v127, v76, v119 :: v_dual_mul_f32 v76, v85, v102
	v_dual_mov_b32 v159, v195 :: v_dual_mul_f32 v70, v37, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v123, v83, v113
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v105, v237
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v37, v16
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v76, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v76, v85, v101 :: v_dual_fmac_f32 v125, v83, v114
	v_mul_f32_e32 v83, v105, v223
	v_mov_b32_e32 v131, v177
	v_mov_b32_e32 v114, v201
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v155, off, off offset:148
	scratch_load_b32 v201, off, off offset:132
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v129, v76, v121 :: v_dual_fmac_f32 v124, v83, v115
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v37, v238
	v_mov_b32_e32 v177, v165
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v113, off, off offset:152
	scratch_load_b32 v165, off, off offset:144
	scratch_load_b32 v115, off, off offset:164
	scratch_load_b32 v166, off, off offset:136
	v_mul_f32_e32 v76, v105, v145
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v172, v83, v118 :: v_dual_mul_f32 v83, v37, v235
	v_mov_b32_e32 v137, v178
	v_dual_mov_b32 v178, v218 :: v_dual_mul_f32 v17, v37, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v176, v83, v119 :: v_dual_mul_f32 v83, v37, v89
	scratch_load_b32 v89, off, off offset:64 ; 4-byte Folded Reload
	v_fmac_f32_e32 v177, v83, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v83, v37, v88
	v_mov_b32_e32 v149, v197
	v_mov_b32_e32 v197, v200
	scratch_load_b32 v88, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v178, v83, v121
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v112, v76, v118
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v118, off, off offset:120
	scratch_load_b32 v173, off, off offset:116
	scratch_load_b32 v195, off, off offset:112
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v76, v105, v229
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(8)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v113, v76, v119 :: v_dual_mul_f32 v76, v105, v225
	v_fmac_f32_e32 v114, v76, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v76, v105, v210 :: v_dual_mul_f32 v79, v106, v79
	v_mul_f32_e32 v38, v38, v85
	v_mul_f32_e32 v33, v33, v85
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v120, off, off offset:176
	scratch_load_b32 v210, off, off offset:168
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v115, v76, v121
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v76, v81, v37
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[81:84], v217 offset:512
	ds_load_b128 v[100:103], v217 offset:528
	scratch_load_b32 v121, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v32, v85
	v_mul_f32_e32 v36, v85, v36
	v_mul_f32_e32 v34, v34, v85
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v160, v70, v82
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v193, v33, v102
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v70, v37, v242
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v192, v32, v103
	v_fmac_f32_e32 v206, v76, v81
	v_fmac_f32_e32 v194, v34, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v161, v70, v83 :: v_dual_mul_f32 v70, v37, v241
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v105, v98
	scratch_load_b32 v98, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v2, v2, v105
	v_mul_f32_e32 v4, v105, v4
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v164, v70, v84 :: v_dual_mul_f32 v5, v5, v105
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v3, v3, v105
	v_mul_f32_e32 v1, v1, v105
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v195, v38, v81 :: v_dual_mul_f32 v38, v85, v48
	v_fmac_f32_e32 v149, v79, v119
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v119, off, off offset:104
	scratch_load_b32 v174, off, off offset:100
	v_fmac_f32_e32 v118, v38, v82
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v85, v44
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v98, v32, v100
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v56, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v190, v32, v101
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v54, v105
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v227, v32, v102
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v52, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v226, v32, v103
	v_add_nc_u32_e32 v32, s76, v25
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v32, v32, s6, 1
	buffer_load_u16 v32, v32, s[28:31], 0 offen
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v119, v38, v83
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v85, v43
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v120, v38, v84
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v99, v105
	scratch_load_b32 v99, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v191, v38, v81
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v105, v117
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v117, off, off offset:80
	scratch_load_b32 v170, off, off offset:72
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v99, v38, v82 :: v_dual_lshlrev_b32 v32, 16, v32
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v105, v116
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v116, off, off offset:88
	scratch_load_b32 v169, off, off offset:84
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v107, v38, v83
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v105, v111
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v111, off, off offset:76
	scratch_load_b32 v168, off, off offset:68
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v104, v38, v84
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v37, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v165, v38, v100
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v62, v37
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v205, v38, v101
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v60, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v204, v38, v102
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v38, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v111, v36, v100 :: v_dual_mul_f32 v36, v35, v37
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v38, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v247, v38, v103
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v38, v106, v68 :: v_dual_mov_b32 v145, v185
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v144, v38, v100
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v67, v106
	scratch_load_b32 v100, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v201, v38, v101 :: v_dual_mul_f32 v38, v65, v106
	scratch_load_b32 v101, off, off offset:48 ; 4-byte Folded Reload
	v_fmac_f32_e32 v197, v38, v102
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v38, v64, v106
	scratch_load_b32 v102, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v196, v38, v103
	v_dual_fmac_f32 v202, v69, v81 :: v_dual_mul_f32 v69, v106, v75
	scratch_load_b32 v103, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v216, v32
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v141, v69, v82
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v69, v106, v73
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v37, v0
	scratch_load_b64 v[33:34], off, off offset:192 ; 8-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v142, v69, v83 :: v_dual_mul_f32 v69, v106, v72
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v59, v37 :: v_dual_fmac_f32 v143, v69, v84
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[64:67], v217
	ds_load_b128 v[81:84], v217 offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v186, v32, v64
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v37, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v224, v32, v65
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v37, v51
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v184, v32, v66
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v37, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v183, v32, v67 :: v_dual_mul_f32 v32, v106, v80
	v_dual_fmac_f32 v159, v32, v64 :: v_dual_mul_f32 v32, v106, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v158, v32, v65
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v106, v71
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v156, v32, v66
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v106, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v157, v32, v67 :: v_dual_mul_f32 v32, v85, v94
	scratch_load_b32 v94, off, off offset:16 ; 4-byte Folded Reload
	v_fmac_f32_e32 v140, v32, v64
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v85, v93
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v139, v32, v65 :: v_dual_mul_f32 v32, v85, v92
	scratch_load_b32 v92, off, off offset:8 ; 4-byte Folded Reload
	v_fmac_f32_e32 v138, v32, v66
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v85, v91
	scratch_load_b32 v91, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v137, v32, v67 :: v_dual_mul_f32 v32, v105, v110
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v102, v32, v64
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v105, v97
	scratch_load_b32 v97, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v97, v32, v65 :: v_dual_mul_f32 v32, v105, v96
	scratch_load_b32 v96, off, off offset:24 ; 4-byte Folded Reload
	v_dual_mov_b32 v25, v33 :: v_dual_fmac_f32 v100, v32, v66
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v105, v95
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v95, off, off offset:20
	scratch_load_b32 v93, off, off offset:12
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v101, v32, v67 :: v_dual_mul_f32 v32, v37, v42
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v179, v32, v81
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v37, v41
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v175, v32, v82 :: v_dual_mul_f32 v32, v37, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v174, v32, v83
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v37, v39
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v173, v32, v84 :: v_dual_mul_f32 v32, v106, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v155, v32, v81 :: v_dual_mul_f32 v32, v106, v47
	v_fmac_f32_e32 v154, v32, v82
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v106, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v152, v32, v83
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v106, v45
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v153, v32, v84 :: v_dual_mul_f32 v32, v85, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v32, v81
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v85, v58
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v131, v32, v82 :: v_dual_mul_f32 v32, v85, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v130, v32, v83
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v85, v55
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v121, v32, v84 :: v_dual_mul_f32 v32, v105, v90
	scratch_load_b32 v90, off, off          ; 4-byte Folded Reload
	v_fmac_f32_e32 v94, v32, v81
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v105, v87
	scratch_load_b32 v87, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v96, v32, v82
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v105, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v89, v32, v83 :: v_dual_mul_f32 v32, v105, v74
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v95, v32, v84
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[32:35], v217 offset:512
	ds_load_b128 v[38:41], v217 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v166, v16, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v23, v106
	v_mul_f32_e32 v18, v37, v18
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v207, v5, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v5, v105, v8 :: v_dual_mul_f32 v8, v12, v106
	v_dual_mul_f32 v12, v19, v85 :: v_dual_fmac_f32 v169, v17, v34
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v215, v0, v39
	v_dual_fmac_f32 v91, v4, v38 :: v_dual_fmac_f32 v222, v1, v39
	v_dual_fmac_f32 v199, v2, v40 :: v_dual_fmac_f32 v198, v3, v41
	v_dual_fmac_f32 v213, v16, v32 :: v_dual_mul_f32 v16, v106, v27
	v_fmac_f32_e32 v220, v8, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v147, v16, v33 :: v_dual_mul_f32 v16, v106, v26
	v_fmac_f32_e32 v146, v16, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v106, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v145, v16, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v28, v85
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v170, v18, v33 :: v_dual_fmac_f32 v209, v16, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v85, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v117, v16, v33 :: v_dual_mul_f32 v16, v85, v30
	v_fmac_f32_e32 v116, v16, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v85, v29
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v90, v5, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v5, v105, v7
	v_mul_f32_e32 v7, v37, v11
	v_mul_f32_e32 v11, v106, v15
	v_mul_f32_e32 v15, v85, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v103, v16, v35 :: v_dual_fmac_f32 v92, v5, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v5, v105, v6 :: v_dual_mul_f32 v6, v10, v37
	v_mul_f32_e32 v10, v14, v106
	v_mul_f32_e32 v14, v21, v85
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v168, v7, v38 :: v_dual_fmac_f32 v93, v5, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v5, v9, v37
	v_mul_f32_e32 v9, v13, v106
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v106, off, off offset:60
	scratch_load_b32 v105, off, off offset:40
	v_mul_f32_e32 v13, v20, v85
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v85, off, off offset:180
	scratch_load_b32 v86, off, off offset:108
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v214, v6, v41
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v210, v10, v41 :: v_dual_fmac_f32 v87, v12, v39
	v_dual_fmac_f32 v208, v14, v41 :: v_dual_fmac_f32 v211, v9, v40
	v_fmac_f32_e32 v88, v13, v40
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v106, v11, v38
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v105, v15, v38
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v85, v5, v40
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v86, v36, v32
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v6, off, off offset:788
	scratch_load_b32 v109, off, off offset:780
	scratch_load_b32 v110, off, off offset:784
	v_mov_b32_e32 v5, v25
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v7, 7, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v14, 0xbfb8aa3b, v214 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v179
	v_dual_mul_f32 v28, 0xbfb8aa3b, v175 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v210
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v7
	v_or_b32_e32 v2, 60, v7
	v_or_b32_e32 v4, 58, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v14
	v_dual_mul_f32 v10, 0xbfb8aa3b, v224 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v186
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s0
	v_add_co_u32 v2, s0, s66, v2
	v_add_co_ci_u32_e64 v3, null, s67, 0, s0
	v_add_co_u32 v8, s1, s66, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[72:73], v[0:1]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s67, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[74:75], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[74:75], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 54, v7
	v_or_b32_e32 v4, 52, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s7, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s7
	v_add_co_u32 v2, s7, s66, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[72:73], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[74:75], v[8:9]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 50, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[74:75], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s11, s66, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s11
	v_add_co_u32 v8, s11, s66, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[72:73], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s67, 0, s11
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[74:75], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v7
	v_or_b32_e32 v3, 46, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[74:75], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v4, 44, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s15, s66, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s15
	v_add_co_u32 v2, s15, s66, v3
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[72:73], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s15
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[74:75], v[8:9]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 42, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[74:75], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s19, s66, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s19
	v_add_co_u32 v8, s19, s66, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[72:73], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s67, 0, s19
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[74:75], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 40, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[74:75], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 38, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[72:73], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s23, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s67, 0, s23
	v_add_co_u32 v1, s23, s66, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v86
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s23
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[74:75], v[8:9]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v9, 0xbfb8aa3b, v183
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v8, 0xbfb8aa3b, v184 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v85
	v_dual_mul_f32 v0, 0xbfb8aa3b, v215 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v174
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[74:75], v[3:4]
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v86 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v168
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v13
	v_cndmask_b32_e64 v18, 0, 0x42800000, s28
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v12, v12
	v_mul_f32_e32 v33, 0xbfb8aa3b, v156
	v_cndmask_b32_e64 v16, 0, 0x42800000, s27
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v214 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v157
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v215
	v_dual_mul_f32 v49, 0xbfb8aa3b, v159 :: v_dual_fmac_f32 v16, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v4, v12, v4
	v_exp_f32_e32 v16, v16
	v_dual_mul_f32 v12, 0xbfb8aa3b, v213 :: v_dual_mul_f32 v63, 0xbfb8aa3b, v147
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s27
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s28
	v_mul_f32_e32 v45, 0xbfb8aa3b, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v19
	v_ldexp_f32 v13, v14, v13
	v_mul_f32_e32 v43, 0xbfb8aa3b, v138
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v14, v16, v15
	v_ldexp_f32 v15, v18, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v32, 0xbfb8aa3b, v166
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v16, 0xbfb8aa3b, v220
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v18, 0xbfb8aa3b, v211 :: v_dual_fmac_f32 v17, 0xbfb8aa3b, v213
	v_cndmask_b32_e64 v22, 0, 0x42800000, s28
	v_mul_f32_e32 v51, 0xbfb8aa3b, v137
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_mul_f32_e32 v23, 0xbfb8aa3b, v208
	v_exp_f32_e32 v17, v17
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v210
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s28
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v23
	v_mul_f32_e32 v65, 0xbfb8aa3b, v116
	v_exp_f32_e32 v22, v22
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v48, 0xbfb8aa3b, v130 :: v_dual_add_f32 v69, 1.0, v4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v12, v17, v12
	v_mul_f32_e32 v17, 0xbfb8aa3b, v209
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0x42800000, s28
	v_mul_f32_e32 v53, 0xbfb8aa3b, v96
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v20, 0, 0x42800000, s27
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v220
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s27
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v208
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v211
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s28
	v_exp_f32_e32 v26, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v69, v69, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, s28, v85, v14, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v74, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v64, 0xbfb8aa3b, v102 :: v_dual_add_f32 v13, 1.0, v13
	v_ldexp_f32 v16, v18, v16
	v_dual_mul_f32 v56, 0xbfb8aa3b, v105 :: v_dual_add_f32 v15, 1.0, v15
	v_dual_mul_f32 v0, 0xbfb8aa3b, v173 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v170
	v_ldexp_f32 v18, v20, v19
	v_mul_f32_e32 v20, 0xbfb8aa3b, v87
	v_ldexp_f32 v19, v22, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v22, 0xbfb8aa3b, v88
	v_mul_f32_e32 v36, 0xbfb8aa3b, v152
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_dual_mul_f32 v66, 0xbfb8aa3b, v117 :: v_dual_add_f32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v22
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v209
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v38, 0xbfb8aa3b, v169 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v154
	v_cndmask_b32_e64 v24, 0, 0x42800000, s27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v87
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s27
	v_dual_mul_f32 v42, 0xbfb8aa3b, v158 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v153
	v_exp_f32_e32 v22, v22
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v88
	v_dual_mul_f32 v46, 0xbfb8aa3b, v155 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v121
	v_dual_mul_f32 v50, 0xbfb8aa3b, v146 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v103
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v17, v21, v17
	v_dual_mul_f32 v44, 0xbfb8aa3b, v106 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v132
	v_dual_mul_f32 v60, 0xbfb8aa3b, v140 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v101
	v_ldexp_f32 v20, v22, v20
	v_ldexp_f32 v22, v26, v25
	v_mul_f32_e32 v25, 0xbfb8aa3b, v199
	v_exp_f32_e32 v24, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v59, 0xbfb8aa3b, v100 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v131
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 36, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[72:73], v[1:2]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s76, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v24, v23
	v_dual_mul_f32 v23, 0xbfb8aa3b, v207 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v222
	v_mul_f32_e32 v30, 0xbfb8aa3b, v95
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s76, s65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v24
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s27
	v_cndmask_b32_e64 v58, 0, 0x42800000, s27
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, vcc_lo, v86, v69, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v199
	v_exp_f32_e32 v72, v25
	v_mul_f32_e32 v25, 0xbfb8aa3b, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v67, v72, v67
	v_mul_f32_e32 v26, 0xbfb8aa3b, v198
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v13, v13, v215
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, s27
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v198
	v_exp_f32_e32 v73, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v73, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v14, v14, v85
	v_rcp_f32_e32 v76, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v73, v76, 1.0
	v_fmac_f32_e32 v76, v80, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v222
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v15, v15, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v83, v81, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v82, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v70, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v71, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v70, v74
	v_rcp_f32_e32 v70, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v62, 0xbfb8aa3b, v97 :: v_dual_mul_f32 v77, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v71, v77, v75
	v_fma_f32 v78, -v72, v70, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v207 :: v_dual_fmac_f32 v77, v79, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v78, v70
	v_div_scale_f32 v78, s27, v215, v13, v215
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v24
	v_mul_f32_e32 v4, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v71, v77, v75
	v_mul_f32_e32 v79, v78, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v71, v74, v77
	v_fma_f32 v75, -v72, v79, v78
	v_fma_f32 v77, -v80, v82, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v24, v23
	v_mul_f32_e32 v24, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v69, v71, v69, v86
	v_fmac_f32_e32 v79, v75, v70
	v_fma_f32 v75, -v73, v83, v81
	v_fmac_f32_e32 v82, v77, v82
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v34, 0xbfb8aa3b, v89 :: v_dual_add_f32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v72, v79, v78
	v_fmac_f32_e32 v83, v75, v76
	v_div_scale_f32 v72, s29, v214, v15, v214
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v70, v71, v70, v79
	v_fma_f32 v71, -v73, v83, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v73, v72, v82
	s_mov_b32 vcc_lo, s28
	v_div_scale_f32 v84, null, v12, v12, v213
	v_div_scale_f32 v77, s27, v213, v12, v213
	v_div_fmas_f32 v71, v71, v76, v83
	v_rcp_f32_e32 v74, v84
	v_fma_f32 v78, -v80, v73, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v13, v70, v13, v215
	s_mov_b32 vcc_lo, s29
	v_div_fixup_f32 v14, v71, v14, v85
	v_fmac_f32_e32 v73, v78, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v75, -v84, v74, 1.0
	v_fma_f32 v72, -v80, v73, v72
	v_div_scale_f32 v80, null, v19, v19, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v75, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v72, v72, v82, v73
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v85, s27, v210, v19, v210
	v_mul_f32_e32 v79, v77, v74
	v_div_scale_f32 v75, null, v16, v16, v220
	v_div_fixup_f32 v15, v72, v15, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v84, v79, v77
	v_rcp_f32_e32 v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v40, 1.0, v40 :: v_dual_fmac_f32 v79, v70, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, s28, v220, v16, v220
	v_fma_f32 v73, -v84, v79, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v75, v76, 1.0
	v_div_scale_f32 v84, null, v17, v17, v209
	v_div_fmas_f32 v73, v73, v74, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v76, v78, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v58, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v80
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v12, v73, v12, v213
	v_mul_f32_e32 v77, v70, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v75, v77, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_fmac_f32 v77, v74, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v18, v18, v211
	v_div_scale_f32 v82, s29, v211, v18, v211
	v_div_scale_f32 v74, null, v20, v20, v87
	v_rcp_f32_e32 v71, v81
	v_fma_f32 v70, -v75, v77, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v75, v74
	v_div_fmas_f32 v70, v70, v76, v77
	s_mov_b32 vcc_lo, s29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v81, v71, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v16, v70, v16, v220
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v74, v75, 1.0
	v_fmac_f32_e32 v71, v83, v71
	v_fma_f32 v83, -v80, v78, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v77, v75
	v_div_scale_f32 v77, null, v21, v21, v88
	v_fmac_f32_e32 v78, v83, v78
	v_rcp_f32_e32 v83, v84
	v_mul_f32_e32 v79, v82, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v73, v85, v78
	v_fma_f32 v72, -v81, v79, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v86, -v84, v83, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_fmac_f32 v79, v72, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v80, v73, v85
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v68, 1.0, v68 :: v_dual_fmac_f32 v83, v86, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v86, s30, v209, v17, v209
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v76, -v81, v79, v82
	v_dual_fmac_f32 v73, v72, v78 :: v_dual_mul_f32 v72, v86, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v76, v71, v79
	v_fma_f32 v76, -v80, v73, v85
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v84, v72, v86
	v_div_scale_f32 v80, s28, v87, v20, v87
	v_div_fmas_f32 v73, v76, v78, v73
	v_rcp_f32_e32 v76, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v79, v83
	v_mul_f32_e32 v78, v80, v75
	v_div_fixup_f32 v70, v71, v18, v211
	v_div_fixup_f32 v71, v73, v19, v210
	v_div_scale_f32 v73, null, v22, v22, v208
	v_fma_f32 v18, -v84, v72, v86
	s_mov_b32 vcc_lo, s30
	v_fma_f32 v19, -v74, v78, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v77, v76, 1.0
	v_div_fmas_f32 v18, v18, v83, v72
	v_rcp_f32_e32 v72, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v19, v75
	v_fmac_f32_e32 v76, v79, v76
	v_div_scale_f32 v79, null, v23, v23, v207
	v_div_scale_f32 v19, s27, v88, v21, v88
	v_div_fixup_f32 v81, v18, v17, v209
	v_fma_f32 v17, -v74, v78, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v80, v79
	v_fma_f32 v74, -v73, v72, 1.0
	s_mov_b32 vcc_lo, s28
	v_mul_f32_e32 v18, v19, v76
	v_div_fmas_f32 v17, v17, v75, v78
	v_div_scale_f32 v78, s28, v208, v22, v208
	v_fmac_f32_e32 v72, v74, v72
	v_div_scale_f32 v74, null, v40, v40, v222
	v_fma_f32 v75, -v77, v18, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v79, v80, 1.0
	v_div_fixup_f32 v83, v17, v20, v87
	v_rcp_f32_e32 v17, v74
	v_mul_f32_e32 v20, v78, v72
	v_fmac_f32_e32 v18, v75, v76
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v75, s29, v207, v23, v207
	v_div_scale_f32 v82, null, v67, v67, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v77, v18, v19
	v_fma_f32 v77, -v73, v20, v78
	v_mul_f32_e32 v84, v75, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v74, v17, 1.0
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v87, null, v68, v68, v198
	v_div_fmas_f32 v18, v19, v76, v18
	v_fmac_f32_e32 v20, v77, v72
	v_fma_f32 v19, -v79, v84, v75
	v_fmac_f32_e32 v17, v85, v17
	v_div_scale_f32 v77, s27, v222, v40, v222
	v_rcp_f32_e32 v86, v82
	v_rcp_f32_e32 v76, v87
	v_div_fixup_f32 v88, v18, v21, v88
	v_fma_f32 v18, -v73, v20, v78
	v_dual_fmac_f32 v84, v19, v80 :: v_dual_mul_f32 v19, v77, v17
	s_mov_b32 vcc_lo, s28
	v_div_scale_f32 v21, s30, v199, v67, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v72, v20
	v_fma_f32 v72, -v74, v19, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v85, -v82, v86, 1.0
	v_fma_f32 v73, -v87, v76, 1.0
	v_fma_f32 v20, -v79, v84, v75
	s_mov_b32 vcc_lo, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v19, v72, v17 :: v_dual_fmac_f32 v86, v85, v86
	v_fmac_f32_e32 v76, v73, v76
	v_div_scale_f32 v73, s28, v198, v68, v198
	v_div_fixup_f32 v79, v18, v22, v208
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v18, -v74, v19, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v75, v21, v86
	v_div_fmas_f32 v20, v20, v80, v84
	s_mov_b32 vcc_lo, s27
	v_mul_f32_e32 v78, v73, v76
	v_div_fmas_f32 v11, v18, v17, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v82, v75, v21
	v_div_fixup_f32 v80, v20, v23, v207
	v_fma_f32 v20, -v87, v78, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s29
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v186
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v72, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v20, v76
	s_mov_b32 vcc_lo, s30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v82, v75, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, s27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v87, v78, v73
	v_div_fixup_f32 v40, v11, v40, v222
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v206, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v86, v75
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v224
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v10, v20, v76, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_ldexp_f32 v9, v19, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v204, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v10, v10, v68, v198
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v205, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v183
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v186
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_ldexp_f32 v8, v11, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v9, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v69
	v_div_fixup_f32 v67, v17, v67, v199
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v17, v197, v70 :: v_dual_add_f32 v70, 1.0, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, vcc_lo, v186, v68, v186
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v31
	v_ldexp_f32 v8, v9, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v69, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v184
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v13, v192, v79 :: v_dual_mul_f32 v18, v201, v16
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v76, 1.0, v8 :: v_dual_fmac_f32 v73, v9, v73
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v191, v80
	v_mul_f32_e32 v21, v247, v15
	v_mul_f32_e32 v15, v195, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v79, v77, v73
	v_div_scale_f32 v81, s27, v224, v70, v224
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v227, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s30, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v80, -v69, v79, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v72, v74, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v202, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v80, v73
	v_fma_f32 v69, -v69, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v31, v69, v73, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s29
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v73, v73
	v_ldexp_f32 v69, v73, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v196, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v70, v70, v224
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v71, v75, 1.0
	v_dual_fmac_f32 v75, v8, v75 :: v_dual_mul_f32 v8, v190, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v40, 1.0, v72 :: v_dual_mul_f32 v67, v81, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v40, v40, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v71, v67, v81
	v_fmac_f32_e32 v67, v77, v75
	v_div_fixup_f32 v68, v31, v68, v186
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v71, v67, v81
	v_div_fmas_f32 v28, v31, v75, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v75, 0, 0x42800000, s30
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s30
	v_cmp_gt_f32_e64 s30, 0xc2fc0000, v50
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v175
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v70, v28, v70, v224
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v174
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v76, v76, v183
	v_div_scale_f32 v82, s28, v183, v76, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v78, v74, 1.0
	v_fmac_f32_e32 v74, v72, v74
	v_rcp_f32_e32 v72, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v82, v74
	v_fma_f32 v71, -v78, v77, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v79, -v80, v72, 1.0
	v_fmac_f32_e32 v77, v71, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v79, v72
	v_div_scale_f32 v79, s29, v184, v40, v184
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v78, v77, v82
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v31, v79, v72
	v_div_fmas_f32 v74, v78, v74, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v80, v31, v79
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v194, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v74, v76, v183
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v27, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v69, v69, v179
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v80, v31, v79
	v_rcp_f32_e32 v0, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v78, v78
	v_ldexp_f32 v27, v27, v67
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s29
	v_div_fmas_f32 v31, v77, v72, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v73, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v193, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v75, v0, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v78, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v72, v72, v175
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v27
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v73
	v_div_scale_f32 v80, null, v77, v77, v174
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v73, v79, 1.0
	v_dual_fmac_f32 v79, v74, v79 :: v_dual_fmac_f32 v0, v71, v0
	v_div_scale_f32 v71, vcc_lo, v179, v69, v179
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v226, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v31, v40, v184
	v_rcp_f32_e32 v40, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v81, v71, v0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v221, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v75, v81, v71
	v_fma_f32 v76, -v80, v40, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v81, v31, v0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v31, v181, v70 :: v_dual_fmac_f32 v40, v76, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v75, v81, v71
	v_div_scale_f32 v75, s28, v174, v77, v174
	v_div_scale_f32 v76, null, v67, v67, v173
	v_div_fmas_f32 v0, v70, v0, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v81, v75, v40
	v_div_scale_f32 v74, s27, v175, v72, v175
	v_rcp_f32_e32 v70, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v69, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v71, v74, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v83, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v73, v71, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v70, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v28, v182, v28 :: v_dual_fmac_f32 v83, 0xbfb8aa3b, v170
	v_mul_f32_e32 v37, v180, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v71, v78, v79 :: v_dual_fmac_f32 v70, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v80, v81, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v73, v71, v74
	v_div_scale_f32 v74, s29, v173, v67, v173
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v68, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fmas_f32 v71, v73, v79, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_exp_f32_e32 v32, v69
	v_ldexp_f32 v38, v38, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v74, v70
	v_fma_f32 v75, -v80, v81, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v76, v73, v74
	v_div_fmas_f32 v40, v75, v40, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v38, v70
	v_div_fixup_f32 v38, v71, v72, v175
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v40, v77, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v76, v73, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v176, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v71, v71, v169
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v177, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v69, v69, v170
	v_div_fmas_f32 v40, v40, v70, v73
	v_div_scale_f32 v73, s27, v170, v69, v170
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v68, v80
	v_rcp_f32_e32 v70, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v40, v67, v173
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v75, -v80, v68, 1.0
	v_fma_f32 v76, -v74, v70, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v68, v75, v68
	v_fmac_f32_e32 v70, v76, v70
	v_div_scale_f32 v76, s28, v169, v71, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v73, v68
	v_fma_f32 v77, -v80, v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v77, v68
	v_mul_f32_e32 v77, v76, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v73, -v80, v75, v73
	v_fma_f32 v80, -v74, v77, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v68, v73, v68, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v80, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v68, v68, v69, v170
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v74, v77, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v159
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v69, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v70, 0, 0x42800000, s29
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v168
	v_exp_f32_e32 v75, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v71, v169
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s29
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v158
	v_exp_f32_e32 v67, v67
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v161, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v39, v75, v74
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v166
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v67, v67, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v172, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v79
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v157
	v_ldexp_f32 v69, v70, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v0, v0, v168
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v72, v72, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v72, v72, v166
	v_div_scale_f32 v49, s27, v166, v72, v166
	s_mov_b32 vcc_lo, s27
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v67, v79
	v_rcp_f32_e32 v67, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v29, v178, v29 :: v_dual_mul_f32 v76, v49, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v78, v76, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v77, -v73, v67, 1.0
	v_fmac_f32_e32 v76, v71, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v77, v67
	v_div_scale_f32 v77, s28, v168, v0, v168
	v_fma_f32 v49, -v78, v76, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v78, 1.0, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v77, v67
	v_div_fmas_f32 v33, v49, v79, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v70, null, v78, v78, v159
	v_fma_f32 v39, -v73, v71, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v71, v39, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v73, v71, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s29
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v49, v49, v67, v71
	v_div_scale_f32 v67, vcc_lo, v159, v78, v159
	v_fma_f32 v79, -v70, v75, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v39, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v49, v0, v168
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v79, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v69 :: v_dual_add_f32 v74, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v33, v72, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v33, v165, v0 :: v_dual_mul_f32 v76, v67, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v69, v69, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v79, null, v74, v74, v157
	v_fma_f32 v0, -v70, v76, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v77, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v73, v49, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v81, v79
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v160, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v0, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v70, v76, v67
	v_fma_f32 v71, -v80, v77, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v70, null, v68, v68, v156
	v_div_fmas_f32 v67, v67, v75, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v71, v77
	v_div_scale_f32 v71, s27, v158, v69, v158
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, s28, v157, v74, v157
	v_mul_f32_e32 v72, v71, v77
	v_div_fixup_f32 v67, v67, v78, v159
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v0, -v80, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v75, 0xbfb8aa3b, v155 :: v_dual_fmac_f32 v72, v0, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v79, v81, 1.0
	v_fma_f32 v71, -v80, v72, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v81, v0, v81
	v_rcp_f32_e32 v0, v70
	v_div_fmas_f32 v71, v71, v77, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_exp_f32_e32 v41, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v46, v81
	v_div_scale_f32 v77, s27, v156, v68, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v70, v0, 1.0
	v_div_fixup_f32 v69, v71, v69, v158
	v_fma_f32 v71, -v79, v72, v46
	v_fmac_f32_e32 v0, v76, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_ldexp_f32 v36, v41, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v72, v71, v81 :: v_dual_mul_f32 v39, v164, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v154
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v78, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v76
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v152
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v79, v72, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v79, null, v78, v78, v155
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v77, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v70, v41, v77
	v_fmac_f32_e32 v41, v36, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v76, v75
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_fma_f32 v70, -v70, v41, v77
	v_div_fmas_f32 v46, v46, v81, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v153
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v79, v73, 1.0
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_3)
	v_div_scale_f32 v71, null, v72, v72, v154
	v_div_fmas_f32 v0, v70, v0, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v76, 1.0, v35 :: v_dual_fmac_f32 v73, v36, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, vcc_lo, v155, v78, v155
	v_div_fixup_f32 v36, v46, v74, v157
	v_rcp_f32_e32 v70, v71
	v_div_fixup_f32 v0, v0, v68, v156
	v_div_scale_f32 v68, null, v76, v76, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v167, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v77, v73
	v_div_scale_f32 v81, s27, v154, v72, v154
	v_fma_f32 v80, -v79, v74, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v171, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v41, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v68
	v_fma_f32 v46, -v71, v70, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v163, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v80, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v46, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v162, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v79, v74, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v82, null, v0, v0, v153
	v_fma_f32 v80, -v68, v75, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v63, v67, v73, v74
	v_rcp_f32_e32 v79, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v80, v75
	v_div_scale_f32 v80, s28, v152, v76, v152
	v_mul_f32_e32 v69, v81, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v147
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v63, v78, v155
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v74, v80, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v71, v69, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v78, -v68, v74, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v77, v70
	v_fma_f32 v77, -v82, v79, 1.0
	v_fmac_f32_e32 v74, v78, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v71, v69, v81
	v_fmac_f32_e32 v79, v77, v79
	v_div_scale_f32 v77, s29, v153, v0, v153
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v73, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v71, v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v77, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v68, v74, v80
	v_div_fixup_f32 v50, v50, v72, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v82, v69, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v67, 1.0, v67 :: v_dual_mul_f32 v50, v149, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v45, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v71
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v67, v67, v147
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v68, v75, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v82, v69, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v45, v70
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s29
	v_div_fmas_f32 v44, v44, v79, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v74, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v71, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v106
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v44, v0, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v78, 1.0, v45 :: v_dual_fmac_f32 v75, v73, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, vcc_lo, v147, v67, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v151, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v78, v78, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, v73, v75
	v_div_fixup_f32 v45, v68, v76, v152
	v_rcp_f32_e32 v68, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v72, -v71, v81, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v77, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v81, v72, v75 :: v_dual_add_f32 v0, 1.0, v0
	v_fma_f32 v72, -v80, v68, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v71, v81, v73
	v_fmac_f32_e32 v68, v72, v68
	v_div_scale_f32 v72, s28, v145, v78, v145
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v71, v71, v75, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v148, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v69, v69, v146
	v_div_scale_f32 v70, s27, v146, v69, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v83, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v71, v67, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v140
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v81, v72, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v74, v79, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v80, v81, v72
	v_fmac_f32_e32 v79, v76, v79
	v_div_scale_f32 v76, null, v0, v0, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v70, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v75, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v80, v81, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v74, v73, v70
	v_fmac_f32_e32 v73, v77, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v76, v75, 1.0
	v_fma_f32 v70, -v74, v73, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v71, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v74, s29, v106, v0, v106
	v_div_fmas_f32 v70, v70, v79, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v139
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v74, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v52
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v76, v73, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_scale_f32 v80, null, v71, v71, v140
	v_div_fmas_f32 v68, v72, v68, v81
	v_fmac_f32_e32 v73, v52, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v51, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v80
	v_div_fixup_f32 v52, v70, v69, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v137
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v68, v78, v145
	v_fma_f32 v68, -v76, v73, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v79
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v69, v69, v139
	v_fma_f32 v74, -v80, v67, 1.0
	v_div_fmas_f32 v68, v68, v75, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v142, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v74, v67
	v_div_scale_f32 v74, s27, v140, v71, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v68, v0, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v70, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v74, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v72, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v138
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v43, v144, v0 :: v_dual_add_f32 v0, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v80, v76, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v77, v73
	v_div_scale_f32 v77, s28, v139, v69, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v75, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v0, v0, v137
	v_fmac_f32_e32 v76, v70, v67
	v_mul_f32_e32 v70, v77, v73
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v79, v78
	v_fma_f32 v74, -v80, v76, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v72, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v75, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v150, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v74, v67, v76
	v_fmac_f32_e32 v70, v80, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v78, v79, 1.0
	v_div_fixup_f32 v67, v67, v71, v140
	v_fma_f32 v71, -v72, v70, v77
	v_div_scale_f32 v72, null, v68, v68, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v74, v79
	v_div_scale_f32 v55, s27, v137, v0, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v74, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fmas_f32 v54, v71, v73, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v55, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v76
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v72, v74, 1.0
	v_div_fixup_f32 v54, v54, v69, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v78, v73, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v77, v74
	v_div_scale_f32 v77, s28, v138, v68, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v69, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v76, v75
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v77, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v78, v73, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v78, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v72, v69, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v130
	v_ldexp_f32 v70, v71, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v71, null, v78, v78, v132
	v_fmac_f32_e32 v69, v48, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v47, v55, v79, v73
	v_div_scale_f32 v80, null, v70, v70, v131
	v_fma_f32 v55, -v72, v69, v77
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v71, v76, 1.0
	v_div_fmas_f32 v55, v55, v74, v69
	v_div_scale_f32 v69, vcc_lo, v132, v78, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v73, 0xbfb8aa3b, v121 :: v_dual_fmac_f32 v76, v79, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v55, v68, v138
	v_div_fixup_f32 v0, v47, v0, v137
	v_fma_f32 v74, -v80, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v75, v69, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v136, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v74, v77
	v_div_scale_f32 v74, s27, v131, v70, v131
	v_fma_f32 v55, -v71, v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v73, v73, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v81, v74, v77
	v_fmac_f32_e32 v75, v55, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v135, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v82, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v68, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v80, v81, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v133, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v71, v75, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v134, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v81, v68, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v67, v76, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v79, v82, 1.0
	v_div_scale_f32 v69, null, v0, v0, v121
	v_fma_f32 v71, -v80, v81, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v82, v68, v82
	v_rcp_f32_e32 v66, v69
	v_div_scale_f32 v68, s28, v130, v73, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v117
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_mul_f32_e32 v75, v68, v82
	v_div_fmas_f32 v71, v71, v77, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v69, v66, 1.0
	v_div_scale_f32 v65, s27, v121, v0, v121
	v_div_fixup_f32 v70, v71, v70, v131
	v_fma_f32 v71, -v79, v75, v68
	v_fmac_f32_e32 v66, v76, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v71, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v71, v74, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v65, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v116
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v67, v67, v78, v132
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v79, v75, v68
	v_fma_f32 v78, -v69, v57, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v77, v77
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v71, v71, v117
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v78, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v76, v77, v76
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_fma_f32 v65, -v69, v57, v65
	v_div_fmas_f32 v68, v68, v82, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v80, 0xbfb8aa3b, v105 :: v_dual_add_f32 v75, 1.0, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v56, v56, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v79, v78, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v143, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v75, v75, v116
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v77, 1.0, v56 :: v_dual_fmac_f32 v78, v69, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s28, v117, v71, v117
	s_mov_b32 vcc_lo, s27
	v_rcp_f32_e32 v80, v76
	v_div_fmas_f32 v56, v65, v66, v57
	v_div_scale_f32 v65, null, v77, v77, v103
	v_mul_f32_e32 v66, v69, v78
	v_div_fixup_f32 v57, v68, v73, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v72, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v65
	v_div_fixup_f32 v0, v56, v0, v121
	v_fma_f32 v73, -v79, v66, v69
	v_fma_f32 v74, -v76, v80, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v141, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v129, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v73, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v74, v80
	v_div_scale_f32 v73, s27, v116, v75, v116
	v_fma_f32 v68, -v65, v72, 1.0
	v_fma_f32 v69, -v79, v66, v69
	v_div_scale_f32 v74, null, v0, v0, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v73, v80
	v_fmac_f32_e32 v72, v68, v72
	v_div_scale_f32 v81, s29, v103, v77, v103
	v_div_fmas_f32 v66, v69, v78, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v82, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v68, v127, v70 :: v_dual_mul_f32 v69, v126, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v76, v79, v73
	v_mul_f32_e32 v70, v81, v72
	v_div_fixup_f32 v66, v66, v71, v117
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v67, v80
	v_fma_f32 v67, -v65, v70, v81
	v_fma_f32 v64, -v74, v82, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v102
	v_cndmask_b32_e64 v83, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v76, v79, v73
	v_fmac_f32_e32 v70, v67, v72
	v_fmac_f32_e32 v82, v64, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v78
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v97
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v62, s28, v105, v0, v105
	v_div_fmas_f32 v73, v73, v80, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_exp_f32_e32 v61, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v62, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v65, v70, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v74, v76, v62
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v101
	v_ldexp_f32 v61, v61, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v65, v72, v70
	v_fmac_f32_e32 v76, v78, v82
	v_div_scale_f32 v70, null, v67, v67, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v74, v76, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v70
	v_div_scale_f32 v78, null, v61, v61, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v73, v73, v75, v116
	v_div_fmas_f32 v62, v62, v82, v76
	v_rcp_f32_e32 v76, v78
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v59, v71
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v100
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v70, v74, 1.0
	v_div_fixup_f32 v0, v62, v0, v105
	v_div_scale_f32 v79, vcc_lo, v102, v67, v102
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v71, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v78, v76, 1.0
	v_div_fixup_f32 v65, v65, v77, v103
	v_div_scale_f32 v71, null, v75, v75, v101
	v_dual_mul_f32 v77, v79, v74 :: v_dual_fmac_f32 v76, v64, v76
	v_div_scale_f32 v80, s27, v97, v61, v97
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v111, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v0, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v120, v65
	v_mul_f32_e32 v65, v119, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v70, v77, v79
	v_mul_f32_e32 v81, v80, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v62, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v118, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v73, v74
	v_fma_f32 v66, -v78, v81, v80
	v_fma_f32 v82, -v71, v0, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s28, v101, v75, v101
	v_fma_f32 v70, -v70, v77, v79
	v_fmac_f32_e32 v81, v66, v76
	v_fmac_f32_e32 v0, v82, v0
	v_div_scale_f32 v82, null, v62, v62, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v70, v70, v74, v77
	v_fma_f32 v74, -v78, v81, v80
	s_mov_b32 vcc_lo, s27
	v_mul_f32_e32 v58, v73, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v83, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v82
	v_div_fmas_f32 v74, v74, v76, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v71, v58, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v94
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s29
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v26
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v77, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v83
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v82, v66, 1.0
	v_div_scale_f32 v34, s27, v100, v62, v100
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v78, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v53, v66
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v76, v76, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v71, v58, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v57, v128, v57 :: v_dual_add_f32 v76, 1.0, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v34, v66
	v_div_fmas_f32 v0, v71, v0, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v80
	v_ldexp_f32 v77, v78, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v76, v76, v94
	v_fma_f32 v58, -v82, v73, v34
	v_div_fixup_f32 v0, v0, v75, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v58, v66
	v_div_fixup_f32 v58, v70, v67, v102
	v_rcp_f32_e32 v70, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v71, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v75, v75, v96
	v_fma_f32 v34, -v82, v73, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v79, v70, 1.0
	v_div_fmas_f32 v34, v34, v66, v73
	v_div_scale_f32 v73, null, v30, v30, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v67, 0xbfb8aa3b, v95 :: v_dual_fmac_f32 v70, v77, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, vcc_lo, v94, v76, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v53, v78, 1.0
	v_div_fixup_f32 v34, v34, v62, v100
	v_rcp_f32_e32 v80, v73
	v_mul_f32_e32 v81, v77, v70
	v_div_scale_f32 v82, s27, v96, v75, v96
	v_fmac_f32_e32 v78, v66, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v67, v74, v61, v97
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v66, v125, v34 :: v_dual_mul_f32 v61, v124, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v79, v81, v77
	v_mul_f32_e32 v34, v82, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v74, -v73, v80, 1.0
	v_fmac_f32_e32 v81, v0, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v0, -v53, v34, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v62, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v74, v80
	v_div_scale_f32 v74, s28, v89, v30, v89
	v_fmac_f32_e32 v34, v0, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v122, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v79, v81, v77
	v_mul_f32_e32 v0, v74, v80
	v_fma_f32 v53, -v53, v34, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v62, v62, v70, v81
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v70, -v73, v0, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v53, v78, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, s29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v58, v58, v95
	v_dual_fmac_f32 v0, v70, v80 :: v_dual_fmac_f32 v53, 0xbfb8aa3b, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s29
	v_exp_f32_e32 v53, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v25
	v_fma_f32 v73, -v73, v0, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v73, v80, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v62, v76, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v53, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v25, v24, 1.0
	v_div_fixup_f32 v0, v0, v30, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v78
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v79, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v53, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, vcc_lo, v95, v58, v95
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v53, 1.0, v53 :: v_dual_mul_f32 v78, v74, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v75, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v82, -v25, v78, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v76, v113, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v77
	v_cndmask_b32_e64 v77, 0, 0x42800000, s27
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v33|, |v22|, |v20|
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v78, v82, v24 :: v_dual_fmac_f32 v77, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v25, -v25, v78, v74
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_ldexp_f32 v4, v4, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v34, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v30, v30, v90
	v_div_fmas_f32 v24, v25, v24, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v24, v58, v95
	v_div_scale_f32 v77, null, v4, v4, v92
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v53, v53, v93
	v_rcp_f32_e32 v79, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v81, v73
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v70, v75, 1.0
	v_div_scale_f32 v83, null, v34, v34, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v75, v80, v75
	v_fma_f32 v84, -v77, v79, 1.0
	v_div_scale_f32 v80, s27, v90, v30, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v85, v83
	v_fma_f32 v82, -v73, v81, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v84, v79
	v_div_scale_f32 v84, s28, v92, v4, v92
	v_dual_mul_f32 v86, v80, v75 :: v_dual_fmac_f32 v81, v82, v81
	v_div_scale_f32 v82, s29, v93, v53, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v88, v84, v79
	v_fma_f32 v87, -v83, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v70, v86, v80
	v_mul_f32_e32 v89, v82, v81
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v25, -v77, v88, v84
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s30, v91, v34, v91
	v_fmac_f32_e32 v86, v74, v75
	v_fma_f32 v74, -v73, v89, v82
	v_fmac_f32_e32 v88, v25, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v78, v87, v85
	s_mov_b32 s27, 0x76543210
	v_fma_f32 v58, -v70, v86, v80
	v_fmac_f32_e32 v89, v74, v81
	v_fma_f32 v70, -v77, v88, v84
	v_fma_f32 v25, -v83, v78, v87
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v67, v123, v67 :: v_dual_and_b32 v84, 8, v108
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v58, v58, v75, v86
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v78, v25, v85
	v_fma_f32 v25, -v73, v89, v82
	v_div_fmas_f32 v70, v70, v79, v88
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v114, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v83, v78, v87
	v_div_fmas_f32 v25, v25, v81, v89
	s_mov_b32 vcc_lo, s30
	v_div_fixup_f32 v4, v70, v4, v92
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v112, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v75, v73, v85, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v115, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v25, v53, v93
	v_div_fixup_f32 v25, v58, v30, v90
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v107, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v75, v34, v91
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, |v28|, |v40|, |v38|
	v_max_f32_e64 v30, |v46|, |v41|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v75, v99, v25
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v49|, |v42|, |v39|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v98, v0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v37|, |v31|
	v_max3_f32 v34, |v36|, |v60|, |v50|
	v_max3_f32 v62, |v63|, |v52|, |v51|
	v_max3_f32 v78, |v43|, |v18|, |v17|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v104, v24
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, |v32|, |v29|, |v23|
	v_max3_f32 v0, v0, |v27|, v4
	v_max3_f32 v4, v25, v26, |v21|
	v_max3_f32 v25, |v45|, |v44|, |v19|
	v_max3_f32 v26, v30, |v35|, v34
	v_max3_f32 v30, v62, v78, |v16|
	v_max_f32_e64 v34, |v55|, |v54|
	v_max3_f32 v62, |v48|, |v69|, |v68|
	v_max3_f32 v78, |v72|, |v65|, |v64|
	v_max3_f32 v79, |v59|, |v14|, |v12|
	v_max3_f32 v0, v0, v24, v4
	v_max3_f32 v24, v26, v25, v30
	v_max3_f32 v4, |v57|, |v56|, |v15|
	v_max3_f32 v25, v34, |v47|, v62
	v_max3_f32 v26, v78, v79, |v13|
	v_max_f32_e64 v30, |v71|, |v67|
	v_max3_f32 v34, |v61|, |v77|, |v76|
	v_max3_f32 v62, |v75|, |v70|, |v58|
	v_max3_f32 v78, |v53|, |v8|, |v9|
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v79, v0, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v25, v4, v26
	v_max3_f32 v26, |v74|, |v73|, |v11|
	v_max3_f32 v30, v30, |v66|, v34
	v_max3_f32 v34, v62, v78, |v10|
	v_max_f32_e32 v62, v79, v79
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v78, v24, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v79, v25, s27, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v83, 1, v110
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v30, v26, v34
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v34, 3, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v80, v78, v78 :: v_dual_max_f32 v81, v79, v79
	v_max_f32_e32 v78, v0, v62
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v30, 4, v108
	v_lshl_add_u32 v62, v34, 9, 0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v24, v80 :: v_dual_max_f32 v80, v25, v81
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v24, 4, v108
	v_lshlrev_b32_e32 v81, 5, v34
	v_permlanex16_b32 v0, v26, s27, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v25, 0x60, v108
	v_lshrrev_b32_e32 v86, 3, v110
	v_lshl_add_u32 v62, v24, 2, v62
	v_and_or_b32 v82, 0x680, v30, v81
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v85, v81, v25
	v_lshl_add_u32 v87, v24, 6, 0
	v_lshl_add_u32 v62, v84, 4, v62
	v_xor_b32_e32 v82, v82, v25
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v26, v0
.Ltmp26:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v26, 34, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v3, s28, s66, v3
.Ltmp27:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v62, v83, v85
	v_add3_u32 v62, v87, v86, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s27, s66, v26
	v_add_co_ci_u32_e64 v83, null, s67, 0, s27
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v0, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v62
.Ltmp30:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 32, v7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[74:75], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 30, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, s33, s66, v0
	v_add_co_ci_u32_e64 v1, null, s67, 0, s33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_u32 v2, s33, s66, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[74:75], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[74:75], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 28, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[72:73], v[2:3]
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, v78
	v_mov_b32_e32 v0, v79
.Ltmp32:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[74:75], v[2:3]
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v78, v78 :: v_dual_max_f32 v26, v79, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v62, v81, v81
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v2, v80
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v0, v0, v0
.Ltmp38:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[72:73], v[82:83]
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v81, v81
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v4
	v_max_f32_e32 v4, v26, v0
	v_max_f32_e32 v26, v80, v80
.Ltmp42:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s37, s66, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v79, v3 :: v_dual_mov_b32 v80, v4
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp45:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s37
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[74:75], v[82:83]
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v26, v2
.Ltmp48:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[74:75], v[0:1]
.Ltmp49:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v80, v80 :: v_dual_max_f32 v26, v62, v78
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v83, 0, v110
	v_lshlrev_b32_e32 v34, 4, v34
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v4, v1 :: v_dual_mov_b32 v78, v26
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp54:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v81, 24, v7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.h, 0
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v80, v1
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v82, v80, v80
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v62, v2
.Ltmp58:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s40, s66, v81
	v_add_co_ci_u32_e64 v81, null, s67, 0, s40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v82
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v62, v62 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v79, v79
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v82, 3, v84
.Ltmp63:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v79, 26, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[72:73], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[74:75], v[80:81]
.Ltmp64:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v3, v0 :: v_dual_max_f32 v3, v62, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s39, s66, v79
	v_add_co_ci_u32_e64 v79, null, s67, 0, s39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v3
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v62, v0 :: v_dual_max_f32 v3, v26, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp68:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[72:73], v[78:79]
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v26, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v0, v0, v62
	v_max_f32_e32 v26, v26, v26
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v62, 1, v25
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v4
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v4, 5, v24
	v_add_nc_u32_e32 v24, 0, v34
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v26
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v26, v83, v62, v82
.Ltmp78:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v62, 22, v7
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v24, v4, v82
.Ltmp80:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v24, 18, v7
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v26, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v4
.Ltmp82:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 20, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v82, s40, s66, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v83, null, s67, 0, s40
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[74:75], v[78:79]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s45, s66, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v79, null, s67, 0, s45
	v_add_co_u32 v80, s45, s66, v24
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v81, null, s67, 0, s45
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[72:73], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[74:75], v[78:79]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v78, s49, s66, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v0, v0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[72:73], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[74:75], v[80:81]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v79, null, s67, 0, s49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v24, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 14, v7
	v_or_b32_e32 v4, 12, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[72:73], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[74:75], v[82:83]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v26, null, 0x40e00000, 0x40e00000, v24
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s49, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v81, null, s67, 0, s49
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v0, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s49, s66, v4
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 10, v7
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v2, v2, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s49
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[72:73], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[74:75], v[78:79]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v78, s55, s66, v4
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v62, -v26, v0, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 8, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[72:73], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[74:75], v[80:81]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v0, v62, v0
	v_div_scale_f32 v62, vcc_lo, v24, 0x40e00000, v24
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v79, null, s67, 0, s55
	v_add_co_u32 v80, s55, s66, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[72:73], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[74:75], v[82:83]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v82, null, 0x40e00000, 0x40e00000, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v81, null, s67, 0, s55
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v4, v62, v0 :: v_dual_max_f32 v1, v1, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[72:73], v[78:79]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v83, v82
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[74:75], v[78:79]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[72:73], v[80:81]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v78, -v26, v4, v62
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[74:75], v[80:81]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v80, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v79, 6, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v4, v78, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v78, 0x2b8cbccc, v3
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v80
	v_fma_f32 v1, -v82, v83, 1.0
	v_fma_f32 v26, -v26, v4, v62
	v_div_scale_f32 v62, s61, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v81, v3
	v_fmac_f32_e32 v83, v1, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v4, v26, v0, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s59, s66, v79
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v78
	v_mul_f32_e32 v26, v62, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v4, v4, 0x40e00000, v24
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s59
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v79, -v3, v81, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v82, v26, v62
	v_rcp_f32_e32 v85, v84
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s59, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[74:75], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v81, v79, v81
	v_div_scale_f32 v79, s62, v80, 0x40e00000, v80
	v_fmac_f32_e32 v26, v24, v83
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v24.l, v4.h
	v_mov_b16_e32 v24.h, v86.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v87, v79, v81
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v0, -v82, v26, v62
	v_fma_f32 v88, -v84, v85, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v24
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v24, -v3, v87, v79
	v_div_scale_f32 v62, s63, v78, 0x40e00000, v78
	v_div_fmas_f32 v0, v0, v83, v26
	v_fmac_f32_e32 v85, v88, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v87, v24, v81
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v24, v4, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v0, v0, 0x40e00000, v2
	v_mul_f32_e32 v26, v62, v85
	v_fma_f32 v2, -v3, v87, v79
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v24
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 4, v7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v0.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v3, -v84, v26, v62
	v_div_fmas_f32 v2, v2, v81, v87
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v82, v82, v37
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v26, v3, v85
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s61, s66, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v83, v81
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v1, -v84, v26, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v82, v82, v31
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.h, v86.h
	v_mov_b16_e32 v79.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v85, v26
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v26, 1, v86
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v87, vcc_lo, v37, v82, v37
	v_fma_f32 v62, -v81, v83, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v78, v1, 0x40e00000, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v85, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v0, v26, 0x7fff
	v_and_b32_e32 v0, 1, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v62, v83
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v78.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v89, null, v82, v82, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v87, v83
	v_div_scale_f32 v90, null, v82, v82, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v84, v85, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v80, 1, v86
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v81, v88, v87
	v_rcp_f32_e32 v86, v89
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v85, v79, v85 :: v_dual_fmac_f32 v88, v0, v83
	v_rcp_f32_e32 v0, v90
	v_div_scale_f32 v91, s61, v31, v82, v31
	v_div_scale_f32 v95, null, v82, v82, v40
	v_fma_f32 v93, -v89, v86, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v92, v91, v85
	v_fma_f32 v81, -v81, v88, v87
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v79, 0xffff0000, v1
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_barrier
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v90, v0, 1.0
	v_fma_f32 v87, -v84, v92, v91
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s62, v27, v82, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v0, v94, v0
	v_div_scale_f32 v94, null, v82, v82, v38
	v_div_fmas_f32 v81, v81, v83, v88
	v_dual_fmac_f32 v92, v87, v85 :: v_dual_mul_f32 v83, v93, v86
	v_rcp_f32_e32 v87, v95
	v_div_scale_f32 v88, s63, v28, v82, v28
	v_rcp_f32_e32 v96, v94
	v_div_fixup_f32 v37, v81, v82, v37
	v_fma_f32 v81, -v84, v92, v91
	v_fma_f32 v84, -v89, v83, v93
	v_mul_f32_e32 v91, v88, v0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v95, v87, 1.0
	v_div_fmas_f32 v81, v81, v85, v92
	v_fmac_f32_e32 v83, v84, v86
	v_fma_f32 v84, -v90, v91, v88
	v_fma_f32 v92, -v94, v96, 1.0
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v85, s61, v40, v82, v40
	v_div_fixup_f32 v31, v81, v82, v31
	v_fma_f32 v81, -v89, v83, v93
	v_fmac_f32_e32 v91, v84, v0
	v_fmac_f32_e32 v96, v92, v96
	v_div_scale_f32 v92, null, v82, v82, v32
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v84, v85, v87
	v_div_scale_f32 v89, s64, v38, v82, v38
	v_div_fmas_f32 v81, v81, v86, v83
	v_fma_f32 v83, -v90, v91, v88
	v_rcp_f32_e32 v88, v92
	v_div_scale_f32 v93, null, v82, v82, v29
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v86, -v95, v84, v85
	v_mul_f32_e32 v90, v89, v96
	v_div_fmas_f32 v0, v83, v0, v91
	v_rcp_f32_e32 v83, v93
	v_div_fixup_f32 v27, v81, v82, v27
	v_fmac_f32_e32 v84, v86, v87
	v_fma_f32 v86, -v94, v90, v89
	v_fma_f32 v91, -v92, v88, 1.0
	v_div_fixup_f32 v28, v0, v82, v28
	v_div_scale_f32 v81, s62, v32, v82, v32
	v_fma_f32 v0, -v95, v84, v85
	v_fmac_f32_e32 v90, v86, v96
	v_fmac_f32_e32 v88, v91, v88
	v_fma_f32 v85, -v93, v83, 1.0
	v_div_scale_f32 v86, null, v82, v82, v23
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v91, null, v82, v82, v49
	v_div_fmas_f32 v0, v0, v87, v84
	v_fma_f32 v84, -v94, v90, v89
	v_mul_f32_e32 v87, v81, v88
	v_fmac_f32_e32 v83, v85, v83
	v_rcp_f32_e32 v85, v86
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v89, s61, v29, v82, v29
	v_div_fmas_f32 v84, v84, v96, v90
	v_fma_f32 v90, -v92, v87, v81
	v_rcp_f32_e32 v96, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v94, v89, v83
	v_div_fixup_f32 v40, v0, v82, v40
	v_div_fixup_f32 v38, v84, v82, v38
	v_fma_f32 v95, -v86, v85, 1.0
	v_fmac_f32_e32 v87, v90, v88
	v_div_scale_f32 v90, null, v82, v82, v42
	v_fma_f32 v0, -v93, v94, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v84, s63, v23, v82, v23
	v_fma_f32 v95, -v91, v96, 1.0
	v_fma_f32 v81, -v92, v87, v81
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v94, v0, v83
	v_mul_f32_e32 v0, v84, v85
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s64, v49, v82, v49
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v88, v87
	v_fma_f32 v87, -v93, v94, v89
	v_fma_f32 v88, -v86, v0, v84
	v_mul_f32_e32 v89, v95, v96
	v_fma_f32 v93, -v90, v92, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v32, v81, v82, v32
	v_div_fmas_f32 v83, v87, v83, v94
	v_fmac_f32_e32 v0, v88, v85
	v_fma_f32 v88, -v91, v89, v95
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, s61, v42, v82, v42
	v_div_fixup_f32 v29, v83, v82, v29
	v_fma_f32 v81, -v86, v0, v84
	v_fmac_f32_e32 v89, v88, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v93, v92
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v81, v85, v0
	v_fma_f32 v81, -v91, v89, v95
	v_fma_f32 v85, -v90, v83, v93
	v_div_scale_f32 v91, null, v82, v82, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v23, v0, v82, v23
	s_mov_b32 vcc_lo, s64
	v_fmac_f32_e32 v83, v85, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v85, v91
	v_div_fmas_f32 v81, v81, v96, v89
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v90, v83, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v92, v83
	v_fma_f32 v93, -v91, v85, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v62, 2, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v93, v85
	v_div_scale_f32 v97, null, v82, v82, v39
	v_div_scale_f32 v86, null, v82, v82, v33
	v_div_scale_f32 v88, s62, v39, v82, v39
	v_rcp_f32_e32 v87, v97
	v_div_fixup_f32 v49, v81, v82, v49
	v_div_scale_f32 v90, s63, v33, v82, v33
	v_div_scale_f32 v93, null, v82, v82, v21
	v_div_scale_f32 v92, s61, v22, v82, v22
	v_div_fixup_f32 v42, v0, v82, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v93
	v_fma_f32 v84, -v97, v87, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v95, v92, v85
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v84, v87
	v_rcp_f32_e32 v84, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v88, v87
	v_fma_f32 v81, -v97, v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v86, v84, 1.0
	v_dual_fmac_f32 v89, v81, v87 :: v_dual_fmac_f32 v84, v94, v84
	v_div_scale_f32 v94, null, v82, v82, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v97, v89, v88
	v_mul_f32_e32 v81, v90, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v83, v94
	v_div_fmas_f32 v0, v0, v87, v89
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v88, -v86, v81, v90
	v_fma_f32 v87, -v91, v95, v92
	v_fma_f32 v89, -v93, v96, 1.0
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v39, v0, v82, v39
	v_fmac_f32_e32 v81, v88, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v94, v83, 1.0
	v_div_scale_f32 v88, s62, v20, v82, v20
	v_fmac_f32_e32 v95, v87, v85
	v_fma_f32 v0, -v86, v81, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v83, v97, v83
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v2, v78, v80, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v26
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v89, v96
	v_div_scale_f32 v87, s64, v21, v82, v21
	v_mul_f32_e32 v86, v88, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v89, null, v80, v80, v46
	v_div_fmas_f32 v0, v0, v84, v81
	v_fma_f32 v81, -v91, v95, v92
	v_fma_f32 v84, -v94, v86, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v90, v89
	v_div_scale_f32 v92, null, v80, v80, v41
	v_dual_mul_f32 v91, v87, v96 :: v_dual_fmac_f32 v86, v84, v83
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v84, v92
	v_div_fmas_f32 v81, v81, v85, v95
	v_fma_f32 v85, -v93, v91, v87
	v_div_fixup_f32 v33, v0, v82, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v89, v90, 1.0
	v_fma_f32 v0, -v94, v86, v88
	v_div_fixup_f32 v22, v81, v82, v22
	v_fmac_f32_e32 v91, v85, v96
	v_div_scale_f32 v81, s61, v46, v80, v46
	v_fmac_f32_e32 v90, v95, v90
	v_fma_f32 v85, -v92, v84, 1.0
	v_div_scale_f32 v88, null, v80, v80, v35
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v83, v86
	v_fma_f32 v83, -v93, v91, v87
	v_mul_f32_e32 v86, v81, v90
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v87, s62, v41, v80, v41
	v_div_scale_f32 v93, null, v80, v80, v36
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v94, v87, v84
	v_div_fmas_f32 v83, v83, v96, v91
	v_fma_f32 v91, -v89, v86, v81
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fixup_f32 v20, v0, v82, v20
	v_fma_f32 v0, -v92, v94, v87
	v_fmac_f32_e32 v86, v91, v90
	v_dual_fmac_f32 v85, v95, v85 :: v_dual_and_b32 v78, 0xffff0000, v2
	v_div_fixup_f32 v21, v83, v82, v21
	v_div_scale_f32 v82, s63, v35, v80, v35
	v_div_scale_f32 v83, null, v80, v80, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v93, v96, 1.0
	v_fma_f32 v81, -v89, v86, v81
	v_fmac_f32_e32 v94, v0, v84
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v0, v82, v85
	v_rcp_f32_e32 v89, v83
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v91, s64, v36, v80, v36
	v_div_fmas_f32 v81, v81, v90, v86
	v_fma_f32 v86, -v92, v94, v87
	v_div_scale_f32 v95, null, v80, v80, v50
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v87, -v88, v0, v82
	v_mul_f32_e32 v90, v91, v96
	v_div_fmas_f32 v84, v86, v84, v94
	v_rcp_f32_e32 v86, v95
	v_fma_f32 v92, -v83, v89, 1.0
	v_fmac_f32_e32 v0, v87, v85
	v_fma_f32 v87, -v93, v90, v91
	v_div_fixup_f32 v41, v84, v80, v41
	v_div_fixup_f32 v46, v81, v80, v46
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s61, v60, v80, v60
	v_fmac_f32_e32 v90, v87, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v95, v86, 1.0
	v_div_scale_f32 v87, null, v80, v80, v45
	v_fma_f32 v81, -v88, v0, v82
	v_mul_f32_e32 v82, v92, v89
	v_fmac_f32_e32 v86, v84, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v87
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v88, s62, v50, v80, v50
	v_div_fmas_f32 v0, v81, v85, v0
	v_fma_f32 v81, -v93, v90, v91
	v_fma_f32 v85, -v83, v82, v92
	v_div_scale_f32 v91, null, v80, v80, v44
	s_mov_b32 vcc_lo, s64
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v87, v84, 1.0
	v_fmac_f32_e32 v82, v85, v89
	v_rcp_f32_e32 v85, v91
	v_div_fmas_f32 v81, v81, v96, v90
	v_mul_f32_e32 v90, v88, v86
	v_div_fixup_f32 v35, v0, v80, v35
	v_fma_f32 v0, -v83, v82, v92
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v93, null, v80, v80, v19
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v36, v81, v80, v36
	v_fma_f32 v81, -v95, v90, v88
	v_div_scale_f32 v83, s63, v45, v80, v45
	v_fma_f32 v92, -v91, v85, 1.0
	v_div_fmas_f32 v0, v0, v89, v82
	v_rcp_f32_e32 v82, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v81, v86 :: v_dual_mul_f32 v81, v83, v84
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v89, s61, v44, v80, v44
	v_div_scale_f32 v92, null, v80, v80, v63
	v_div_fixup_f32 v60, v0, v80, v60
	v_fma_f32 v0, -v95, v90, v88
	v_fma_f32 v88, -v87, v81, v83
	v_mul_f32_e32 v94, v89, v85
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v81, v88, v84
	v_div_fmas_f32 v0, v0, v86, v90
	v_fma_f32 v86, -v91, v94, v89
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s62, v19, v80, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v50, v0, v80, v50
	v_fma_f32 v90, -v92, v95, 1.0
	v_fma_f32 v0, -v87, v81, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v94, v86, v85 :: v_dual_mul_f32 v83, v88, v82
	v_div_scale_f32 v87, null, v80, v80, v52
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v86, s64, v63, v80, v63
	v_div_fmas_f32 v0, v0, v84, v81
	v_fma_f32 v81, -v91, v94, v89
	v_fma_f32 v84, -v93, v83, v88
	v_rcp_f32_e32 v89, v87
	v_div_scale_f32 v91, null, v80, v80, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v86, v95 :: v_dual_fmac_f32 v83, v84, v82
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v81, v81, v85, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v92, v90, v86
	v_div_fixup_f32 v0, v0, v80, v45
	v_fma_f32 v94, -v87, v89, 1.0
	v_fma_f32 v45, -v93, v83, v88
	v_div_fixup_f32 v44, v81, v80, v44
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v81, s61, v52, v80, v52
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v85, -v91, v84, 1.0
	v_div_scale_f32 v88, null, v80, v80, v43
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v96, null, v80, v80, v16
	v_div_fmas_f32 v45, v45, v82, v83
	v_fma_f32 v82, -v92, v90, v86
	v_mul_f32_e32 v83, v81, v89
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v86, s62, v51, v80, v51
	v_div_scale_f32 v92, null, v80, v80, v18
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v93, v86, v84
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v87, v83, v81
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v85, 1.0
	v_div_fixup_f32 v19, v45, v80, v19
	v_div_fixup_f32 v45, v82, v80, v63
	v_fmac_f32_e32 v83, v90, v89
	v_fma_f32 v63, -v91, v93, v86
	v_div_scale_f32 v90, null, v80, v80, v17
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v82, s63, v43, v80, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v81, -v87, v83, v81
	v_fmac_f32_e32 v93, v63, v84
	v_rcp_f32_e32 v87, v90
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v63, v82, v85
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s64, v18, v80, v18
	v_div_fmas_f32 v81, v81, v89, v83
	v_fma_f32 v83, -v91, v93, v86
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v86, -v88, v63, v82
	v_mul_f32_e32 v89, v94, v95
	v_fma_f32 v91, -v90, v87, 1.0
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fmac_f32_e32 v63, v86, v85
	v_fma_f32 v86, -v92, v89, v94
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s61, v17, v80, v17
	v_div_fixup_f32 v52, v81, v80, v52
	v_div_fixup_f32 v51, v83, v80, v51
	v_fma_f32 v81, -v88, v63, v82
	v_fmac_f32_e32 v89, v86, v95
	v_mul_f32_e32 v82, v91, v87
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v79, v79, v55
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v88, s62, v16, v80, v16
	v_div_fmas_f32 v63, v81, v85, v63
	v_fma_f32 v81, -v92, v89, v94
	v_fma_f32 v85, -v90, v82, v91
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v92, null, v79, v79, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v85, v87
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v43, v63, v80, v43
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v81, v81, v95, v89
	v_mul_f32_e32 v89, v88, v84
	v_fma_f32 v63, -v90, v82, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v83, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v18, v81, v80, v18
	v_fma_f32 v81, -v96, v89, v88
	v_div_scale_f32 v90, s63, v55, v79, v55
	v_fmac_f32_e32 v83, v93, v83
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_scale_f32 v93, null, v79, v79, v47
	v_div_fmas_f32 v63, v63, v87, v82
	v_fmac_f32_e32 v89, v81, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v91, v85
	v_rcp_f32_e32 v82, v93
	v_div_scale_f32 v91, null, v79, v79, v48
	v_mul_f32_e32 v81, v90, v83
	v_div_scale_f32 v87, s61, v54, v79, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v91
	v_div_fixup_f32 v17, v63, v80, v17
	v_fma_f32 v63, -v96, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v85
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v63, v63, v84, v89
	v_fmac_f32_e32 v81, v88, v83
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s62, v47, v79, v47
	v_fma_f32 v89, -v91, v95, 1.0
	v_div_fixup_f32 v16, v63, v80, v16
	v_fma_f32 v63, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v80, v88, v82 :: v_dual_fmac_f32 v95, v89, v95
	v_div_scale_f32 v84, s64, v48, v79, v48
	v_div_scale_f32 v86, null, v79, v79, v69
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v89, v84, v95
	v_div_fmas_f32 v63, v63, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v80, v88
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v79, v79, v68
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v80, v83, v82
	v_div_fmas_f32 v81, v81, v85, v94
	v_rcp_f32_e32 v83, v90
	v_fma_f32 v85, -v91, v89, v84
	v_div_fixup_f32 v55, v63, v79, v55
	v_fma_f32 v63, -v93, v80, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v86, v87, 1.0
	v_div_scale_f32 v88, null, v79, v79, v57
	v_fmac_f32_e32 v89, v85, v95
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v54, v81, v79, v54
	v_fmac_f32_e32 v87, v92, v87
	v_div_scale_f32 v81, s61, v69, v79, v69
	v_fma_f32 v85, -v90, v83, 1.0
	v_div_fmas_f32 v63, v63, v82, v80
	v_fma_f32 v80, -v91, v89, v84
	v_rcp_f32_e32 v84, v88
	v_mul_f32_e32 v82, v81, v87
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, s62, v68, v79, v68
	v_div_scale_f32 v91, null, v79, v79, v56
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v92, v85, v83
	v_div_fmas_f32 v80, v80, v95, v89
	v_fma_f32 v89, -v86, v82, v81
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v88, v84, 1.0
	v_rcp_f32_e32 v94, v91
	v_div_fixup_f32 v47, v63, v79, v47
	v_div_fixup_f32 v48, v80, v79, v48
	v_fmac_f32_e32 v82, v89, v87
	v_fma_f32 v63, -v90, v92, v85
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v80, s63, v57, v79, v57
	v_div_scale_f32 v89, null, v79, v79, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v81, -v86, v82, v81
	v_fmac_f32_e32 v92, v63, v83
	v_mul_f32_e32 v86, v80, v84
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v95, v89
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s64, v56, v79, v56
	v_div_fmas_f32 v63, v81, v87, v82
	v_fma_f32 v81, -v90, v92, v85
	v_fma_f32 v82, -v88, v86, v80
	v_div_scale_f32 v90, null, v79, v79, v72
	v_mul_f32_e32 v85, v93, v94
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v82, v84
	v_rcp_f32_e32 v82, v90
	v_fma_f32 v87, -v89, v95, 1.0
	v_div_fmas_f32 v81, v81, v83, v92
	v_fma_f32 v83, -v91, v85, v93
	v_div_fixup_f32 v63, v63, v79, v69
	v_fma_f32 v69, -v88, v86, v80
	v_fmac_f32_e32 v95, v87, v95
	v_div_scale_f32 v87, s61, v15, v79, v15
	v_div_fixup_f32 v68, v81, v79, v68
	v_fmac_f32_e32 v85, v83, v94
	v_fma_f32 v81, -v90, v82, 1.0
	v_div_scale_f32 v83, null, v79, v79, v65
	v_mul_f32_e32 v80, v87, v95
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v81, v82
	v_rcp_f32_e32 v81, v83
	v_div_fmas_f32 v69, v69, v84, v86
	v_fma_f32 v84, -v91, v85, v93
	v_fma_f32 v86, -v89, v80, v87
	v_div_scale_f32 v88, s62, v72, v79, v72
	v_div_scale_f32 v91, null, v79, v79, v64
	s_mov_b32 vcc_lo, s64
	v_fmac_f32_e32 v80, v86, v95
	v_div_fmas_f32 v84, v84, v94, v85
	v_rcp_f32_e32 v85, v91
	v_mul_f32_e32 v86, v88, v82
	v_fma_f32 v92, -v83, v81, 1.0
	v_div_fixup_f32 v57, v69, v79, v57
	v_div_fixup_f32 v56, v84, v79, v56
	v_fma_f32 v69, -v89, v80, v87
	v_fma_f32 v84, -v90, v86, v88
	v_fmac_f32_e32 v81, v92, v81
	v_div_scale_f32 v87, s63, v65, v79, v65
	v_div_scale_f32 v92, null, v79, v79, v59
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v89, -v91, v85, 1.0
	v_div_fmas_f32 v69, v69, v95, v80
	v_fmac_f32_e32 v86, v84, v82
	v_mul_f32_e32 v80, v87, v81
	v_rcp_f32_e32 v84, v92
	v_div_scale_f32 v93, null, v79, v79, v14
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s61, v64, v79, v64
	v_div_fixup_f32 v15, v69, v79, v15
	v_fma_f32 v69, -v90, v86, v88
	v_fma_f32 v88, -v83, v80, v87
	v_rcp_f32_e32 v94, v93
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v90, v89, v85
	v_fma_f32 v95, -v92, v84, 1.0
	v_div_fmas_f32 v69, v69, v82, v86
	v_fmac_f32_e32 v80, v88, v81
	v_div_scale_f32 v86, s62, v59, v79, v59
	v_fma_f32 v82, -v91, v90, v89
	v_fmac_f32_e32 v84, v95, v84
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v93, v94, 1.0
	v_div_fixup_f32 v69, v69, v79, v72
	v_fma_f32 v72, -v83, v80, v87
	v_div_scale_f32 v87, null, v79, v79, v12
	v_fmac_f32_e32 v90, v82, v85
	v_mul_f32_e32 v82, v86, v84
	v_fmac_f32_e32 v94, v88, v94
	v_div_scale_f32 v83, s64, v14, v79, v14
	v_rcp_f32_e32 v88, v87
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v72, v72, v81, v80
	v_fma_f32 v80, -v91, v90, v89
	v_fma_f32 v81, -v92, v82, v86
	v_mul_f32_e32 v89, v83, v94
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v91, null, v79, v79, v13
	v_div_fmas_f32 v80, v80, v85, v90
	v_fmac_f32_e32 v82, v81, v84
	v_fma_f32 v85, -v93, v89, v83
	v_fma_f32 v90, -v87, v88, 1.0
	v_rcp_f32_e32 v81, v91
	v_div_fixup_f32 v65, v72, v79, v65
	v_div_fixup_f32 v64, v80, v79, v64
	v_fma_f32 v72, -v92, v82, v86
	v_dual_fmac_f32 v89, v85, v94 :: v_dual_fmac_f32 v88, v90, v88
	v_div_scale_f32 v80, s61, v12, v79, v12
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, null, v78, v78, v67
	v_div_fmas_f32 v72, v72, v84, v82
	v_fma_f32 v82, -v93, v89, v83
	v_mul_f32_e32 v83, v80, v88
	v_div_scale_f32 v84, null, v78, v78, v71
	s_mov_b32 vcc_lo, s64
	v_fma_f32 v85, -v91, v81, 1.0
	v_div_fmas_f32 v82, v82, v94, v89
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v89, -v87, v83, v80
	v_div_fixup_f32 v59, v72, v79, v59
	v_fmac_f32_e32 v81, v85, v81
	v_div_scale_f32 v85, s62, v13, v79, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v89, v88
	v_div_fixup_f32 v14, v82, v79, v14
	v_rcp_f32_e32 v82, v92
	v_mul_f32_e32 v90, v85, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v84, v86, 1.0
	v_fma_f32 v80, -v87, v83, v80
	v_div_scale_f32 v87, null, v78, v78, v66
	v_fma_f32 v72, -v91, v90, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v89, v86
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v89, v87
	v_div_fmas_f32 v80, v80, v88, v83
	v_fmac_f32_e32 v90, v72, v81
	v_div_scale_f32 v72, s63, v71, v78, v71
	v_fma_f32 v93, -v92, v82, 1.0
	v_div_scale_f32 v94, null, v78, v78, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v83, -v91, v90, v85
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v91, -v87, v89, 1.0
	v_mul_f32_e32 v85, v72, v86
	v_fmac_f32_e32 v82, v93, v82
	v_div_scale_f32 v88, s61, v67, v78, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s64, v66, v78, v66
	v_rcp_f32_e32 v96, v94
	v_div_fmas_f32 v81, v83, v81, v90
	v_fma_f32 v93, -v84, v85, v72
	v_dual_mul_f32 v90, v91, v89 :: v_dual_mul_f32 v95, v88, v82
	v_div_fixup_f32 v12, v80, v79, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v81, v79, v13
	v_div_scale_f32 v81, null, v78, v78, v77
	v_fma_f32 v79, -v87, v90, v91
	v_fmac_f32_e32 v85, v93, v86
	v_fma_f32 v83, -v92, v95, v88
	v_fma_f32 v80, -v94, v96, 1.0
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v90, v79, v89
	v_rcp_f32_e32 v79, v81
	v_fma_f32 v72, -v84, v85, v72
	v_dual_fmac_f32 v95, v83, v82 :: v_dual_fmac_f32 v96, v80, v96
	v_div_scale_f32 v80, s62, v61, v78, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v72, v72, v86, v85
	v_fma_f32 v83, -v92, v95, v88
	v_div_scale_f32 v85, null, v78, v78, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v80, v96
	v_fma_f32 v86, -v81, v79, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v71, v72, v78, v71
	v_div_fmas_f32 v82, v83, v82, v95
	v_fma_f32 v83, -v87, v90, v91
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v88, -v94, v84, v80
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s61, v77, v78, v77
	s_mov_b32 vcc_lo, s64
	v_fmac_f32_e32 v84, v88, v96
	v_div_fmas_f32 v83, v83, v89, v90
	v_mul_f32_e32 v72, v86, v79
	v_div_fixup_f32 v67, v82, v78, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v85, v87, 1.0
	v_fma_f32 v80, -v94, v84, v80
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v88, -v81, v72, v86
	v_div_fixup_f32 v66, v83, v78, v66
	v_div_scale_f32 v83, null, v78, v78, v74
	v_fmac_f32_e32 v87, v82, v87
	v_div_scale_f32 v82, s63, v76, v78, v76
	v_div_fmas_f32 v80, v80, v96, v84
	v_fmac_f32_e32 v72, v88, v79
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v82, v87
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v61, v80, v78, v61
	v_fma_f32 v80, -v81, v72, v86
	v_div_scale_f32 v88, null, v78, v78, v73
	v_fma_f32 v81, -v85, v84, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v72, v80, v79, v72
	v_div_scale_f32 v79, null, v78, v78, v11
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v84, v81, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v81, v79
	v_div_scale_f32 v80, s61, v74, v78, v74
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v78, v78, v75
	v_div_fixup_f32 v72, v72, v78, v77
	v_fma_f32 v82, -v85, v84, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v88, v90, 1.0
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v79, v81, 1.0
	v_mul_f32_e32 v85, v80, v89
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v90, v77, v90
	v_div_scale_f32 v77, s62, v73, v78, v73
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v78, v78, v70
	v_div_fmas_f32 v82, v82, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_mul_f32_e32 v87, v77, v90
	v_div_scale_f32 v93, s63, v11, v78, v11
	v_fma_f32 v94, -v86, v92, 1.0
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v77
	v_mul_f32_e32 v96, v93, v81
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s64, v75, v78, v75
	v_div_fixup_f32 v76, v82, v78, v76
	v_fma_f32 v80, -v83, v85, v80
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v82, -v79, v96, v93
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v84, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v77, -v88, v87, v77
	v_fmac_f32_e32 v96, v82, v81
	v_fma_f32 v82, -v86, v83, v94
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s61, v70, v78, v70
	v_div_fmas_f32 v80, v80, v89, v85
	v_fma_f32 v79, -v79, v96, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v83, v82, v92 :: v_dual_mul_f32 v82, v84, v95
	v_div_scale_f32 v85, null, v78, v78, v58
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v74, v80, v78, v74
	v_div_fmas_f32 v77, v77, v90, v87
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v79, v79, v81, v96
	v_fma_f32 v81, -v86, v83, v94
	v_fma_f32 v86, -v91, v82, v84
	v_div_fixup_f32 v73, v77, v78, v73
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v11, v79, v78, v11
	v_div_fmas_f32 v81, v81, v92, v83
	v_fmac_f32_e32 v82, v86, v95
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v80, -v85, v87, 1.0
	v_div_scale_f32 v79, null, v78, v78, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v91, v82, v84
	v_div_fixup_f32 v75, v81, v78, v75
	v_fmac_f32_e32 v87, v80, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v79
	v_div_scale_f32 v80, null, v78, v78, v8
	v_div_fmas_f32 v77, v77, v95, v82
	v_div_scale_f32 v83, vcc_lo, v58, v78, v58
	v_div_scale_f32 v82, null, v78, v78, v9
	v_div_scale_f32 v89, null, v78, v78, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v88, v83, v87
	v_rcp_f32_e32 v84, v80
	v_div_fixup_f32 v70, v77, v78, v70
	v_fma_f32 v77, -v79, v81, 1.0
	v_rcp_f32_e32 v86, v82
	v_fma_f32 v92, -v85, v88, v83
	v_rcp_f32_e32 v91, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v77, v81
	v_div_scale_f32 v77, s61, v53, v78, v53
	v_fmac_f32_e32 v88, v92, v87
	v_fma_f32 v90, -v80, v84, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v82, v86, 1.0
	v_mul_f32_e32 v94, v77, v81
	v_fma_f32 v83, -v85, v88, v83
	v_fma_f32 v95, -v89, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s63, v9, v78, v9
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s61
	s_mov_b32 s61, 0xc1000000
	v_fma_f32 v92, -v79, v94, v77
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v23, v23, s61, 0x40e00000
	v_med3_f32 v61, v61, s61, 0x40e00000
	v_med3_f32 v47, v47, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s64, v10, v78, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s62, v8, v78, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v87, v47
	v_and_b32_e32 v47, 15, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v96, v90, v84 :: v_dual_and_b32 v23, 15, v61
	v_dual_mul_f32 v97, v93, v86 :: v_dual_fmac_f32 v94, v92, v81
	v_mul_f32_e32 v98, v95, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v80, v96, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v82, v97, v93
	v_fma_f32 v77, -v79, v94, v77
	v_fma_f32 v79, -v89, v98, v95
	v_div_fixup_f32 v58, v83, v78, v58
	v_dual_fmac_f32 v96, v85, v84 :: v_dual_fmac_f32 v97, v92, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v77, v77, v81, v94
	v_fmac_f32_e32 v98, v79, v91
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v80, -v80, v96, v90
	v_fma_f32 v79, -v82, v97, v93
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v89, v98, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v67, v67
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v31, v31, s61, 0x40e00000
	v_med3_f32 v27, v27, s61, 0x40e00000
	v_med3_f32 v40, v40, s61, 0x40e00000
	v_med3_f32 v32, v32, s61, 0x40e00000
	v_med3_f32 v33, v33, s61, 0x40e00000
	v_med3_f32 v0, v0, s61, 0x40e00000
	v_med3_f32 v68, v68, s61, 0x40e00000
	v_cvt_i32_f32_e32 v83, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v84, v96
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v86, v97
	s_mov_b32 vcc_lo, s64
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v39, v39, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v91, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s61, 0x40e00000
	v_med3_f32 v12, v12, s61, 0x40e00000
	v_med3_f32 v67, v67, s61, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v90, v68
	v_and_b32_e32 v68, 15, v83
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v83, 16, v108
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v53, v77, v78, v53
	v_div_fixup_f32 v8, v80, v78, v8
	v_div_fixup_f32 v9, v79, v78, v9
	v_div_fixup_f32 v10, v81, v78, v10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v71, v71
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v58, v58, s61, 0x40e00000
	v_cvt_i32_f32_e32 v77, v39
	v_cvt_i32_f32_e32 v85, v16
	v_cvt_i32_f32_e32 v94, v12
	v_cvt_i32_f32_e32 v97, v67
	v_and_b32_e32 v12, 15, v31
	v_and_b32_e32 v16, 15, v27
	v_and_b32_e32 v27, 15, v40
	v_and_b32_e32 v39, 15, v32
	v_and_b32_e32 v67, 15, v33
	v_and_b32_e32 v40, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v108
	v_and_b32_e32 v31, 0x2f0, v30
	v_lshlrev_b32_e32 v32, 8, v83
	v_and_b32_e32 v33, 64, v108
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s61, 0x40e00000
	v_med3_f32 v46, v46, s61, 0x40e00000
	v_med3_f32 v55, v55, s61, 0x40e00000
	v_med3_f32 v71, v71, s61, 0x40e00000
	v_cvt_i32_f32_e32 v103, v58
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v58, 3, v110
	v_and_or_b32 v0, 0xe000, v0, v32
	v_xor_b32_e32 v31, v31, v33
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v53, v53
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v28, v28, s61, 0x40e00000
	v_med3_f32 v29, v29, s61, 0x40e00000
	v_med3_f32 v60, v60, s61, 0x40e00000
	v_med3_f32 v63, v63, s61, 0x40e00000
	v_med3_f32 v72, v72, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s61, 0x40e00000
	v_med3_f32 v21, v21, s61, 0x40e00000
	v_med3_f32 v41, v41, s61, 0x40e00000
	v_med3_f32 v36, v36, s61, 0x40e00000
	v_med3_f32 v50, v50, s61, 0x40e00000
	v_med3_f32 v19, v19, s61, 0x40e00000
	v_med3_f32 v54, v54, s61, 0x40e00000
	v_med3_f32 v15, v15, s61, 0x40e00000
	v_med3_f32 v11, v11, s61, 0x40e00000
	v_med3_f32 v8, v8, s61, 0x40e00000
	v_med3_f32 v9, v9, s61, 0x40e00000
	v_med3_f32 v10, v10, s61, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v86, v55
	v_cvt_i32_f32_e32 v96, v71
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v58, v31
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s61, 0x40e00000
	v_med3_f32 v20, v20, s61, 0x40e00000
	v_med3_f32 v69, v69, s61, 0x40e00000
	v_med3_f32 v59, v59, s61, 0x40e00000
	v_med3_f32 v76, v76, s61, 0x40e00000
	v_med3_f32 v70, v70, s61, 0x40e00000
	v_med3_f32 v53, v53, s61, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v89, v63
	v_cvt_i32_f32_e32 v98, v72
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v75, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s61, 0x40e00000
	v_med3_f32 v48, v48, s61, 0x40e00000
	v_med3_f32 v14, v14, s61, 0x40e00000
	v_med3_f32 v13, v13, s61, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v101, v11
	v_cvt_i32_f32_e32 v105, v8
	v_cvt_i32_f32_e32 v106, v9
	v_cvt_i32_f32_e32 v107, v10
	v_and_b32_e32 v8, 15, v37
	v_and_b32_e32 v9, 15, v46
	v_and_b32_e32 v10, 15, v86
	v_and_b32_e32 v11, 15, v96
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v31, 0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v74, v74
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s61, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v78, v20
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v99, v76
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v104, v53
	v_and_b32_e32 v20, 15, v28
	v_and_b32_e32 v43, 15, v29
	v_and_b32_e32 v28, 15, v60
	v_and_b32_e32 v29, 15, v89
	v_and_b32_e32 v30, 15, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v73, v73
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s61, 0x40e00000
	v_med3_f32 v45, v45, s61, 0x40e00000
	v_med3_f32 v52, v52, s61, 0x40e00000
	v_med3_f32 v18, v18, s61, 0x40e00000
	v_med3_f32 v57, v57, s61, 0x40e00000
	v_med3_f32 v65, v65, s61, 0x40e00000
	v_med3_f32 v66, v66, s61, 0x40e00000
	v_med3_f32 v75, v75, s61, 0x40e00000
	v_cvt_i32_f32_e32 v82, v51
	v_cvt_i32_f32_e32 v88, v48
	v_cvt_i32_f32_e32 v93, v14
	v_cvt_i32_f32_e32 v95, v13
	v_and_b32_e32 v51, 15, v49
	v_and_b32_e32 v79, 15, v21
	v_and_b32_e32 v13, 15, v41
	v_and_b32_e32 v21, 15, v36
	v_and_b32_e32 v36, 15, v50
	v_and_b32_e32 v48, 15, v19
	v_and_b32_e32 v14, 15, v54
	v_and_b32_e32 v49, 15, v15
	v_and_b32_e32 v15, 15, v97
	v_and_b32_e32 v50, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v31, v[8:11]
	ds_store_b128 v31, v[27:30] offset:256
	v_xad_u32 v8, v0, 16, 0
	v_lshlrev_b32_e32 v9, 6, v108
	v_lshlrev_b32_e32 v10, 5, v25
	v_cndmask_b32_e64 v11, 0x2010, 0, s3
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s61, 0x40e00000
	v_med3_f32 v17, v17, s61, 0x40e00000
	v_med3_f32 v74, v74, s61, 0x40e00000
	v_cvt_i32_f32_e32 v80, v35
	v_and_b32_e32 v35, 15, v38
	v_and_b32_e32 v37, 15, v90
	v_and_b32_e32 v53, 15, v69
	v_and_b32_e32 v69, 15, v59
	v_and_b32_e32 v38, 15, v99
	v_and_b32_e32 v58, 15, v70
	v_and_b32_e32 v70, 15, v104
	v_med3_f32 v64, v64, s61, 0x40e00000
	v_med3_f32 v44, v44, s61, 0x40e00000
	v_med3_f32 v56, v56, s61, 0x40e00000
	v_med3_f32 v73, v73, s61, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v81, v52
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v102, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v31, v[47:50] offset:2048
	ds_store_b128 v31, v[67:70] offset:2304
	ds_store_b128 v8, v[12:15]
	ds_store_b128 v8, v[35:38] offset:256
	v_lshlrev_b32_e32 v13, 2, v83
	v_and_or_b32 v9, 0x300, v9, v10
	v_xor_b32_e32 v10, v11, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v84, v17
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v92, v64
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v91, v56
	v_cvt_i32_f32_e32 v100, v73
	v_and_b32_e32 v55, 15, v42
	v_and_b32_e32 v17, 15, v80
	v_and_b32_e32 v52, 15, v45
	v_and_b32_e32 v56, 15, v81
	v_and_b32_e32 v72, 15, v18
	v_and_b32_e32 v18, 15, v87
	v_and_b32_e32 v41, 15, v57
	v_and_b32_e32 v57, 15, v65
	v_and_b32_e32 v19, 15, v66
	v_and_b32_e32 v54, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v12, v0, 32, 0
	v_or3_b32 v25, v10, v9, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v63, 15, v77
	v_and_b32_e32 v71, 15, v22
	v_and_b32_e32 v75, 15, v78
	v_and_b32_e32 v76, 15, v84
	v_and_b32_e32 v73, 15, v93
	v_and_b32_e32 v77, 15, v94
	v_and_b32_e32 v42, 15, v74
	v_and_b32_e32 v74, 15, v105
	v_and_b32_e32 v78, 15, v106
	v_and_b32_e32 v64, 15, v82
	v_and_b32_e32 v22, 15, v88
	v_and_b32_e32 v65, 15, v92
	v_and_b32_e32 v66, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v0, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v44, 15, v44
	v_and_b32_e32 v80, 15, v85
	v_and_b32_e32 v45, 15, v91
	v_and_b32_e32 v81, 15, v95
	v_and_b32_e32 v46, 15, v100
	v_and_b32_e32 v82, 15, v107
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v8, v[51:54] offset:2048
	ds_store_b128 v8, v[71:74] offset:2304
	ds_store_b128 v12, v[16:19]
	ds_store_b128 v12, v[39:42] offset:256
	ds_store_b128 v12, v[55:58] offset:2048
	ds_store_b128 v12, v[75:78] offset:2304
	ds_store_b128 v0, v[20:23]
	ds_store_b128 v0, v[43:46] offset:256
	v_add_nc_u32_e32 v20, 0, v25
	ds_store_b128 v0, v[63:66] offset:2048
	ds_store_b128 v0, v[79:82] offset:2304
	v_xad_u32 v0, 0x4020, v25, 0
	v_xad_u32 v55, 0x8040, v25, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v20
	ds_load_b128 v[12:15], v20 offset:128
	ds_load_b128 v[16:19], v20 offset:4096
	ds_load_b128 v[20:23], v20 offset:4224
	ds_load_b128 v[27:30], v0
	ds_load_b128 v[31:34], v0 offset:128
	ds_load_b128 v[35:38], v0 offset:4096
	ds_load_b128 v[39:42], v0 offset:4224
	v_xad_u32 v0, 0xc060, v25, 0
	ds_load_b128 v[43:46], v55
	ds_load_b128 v[47:50], v55 offset:128
	ds_load_b128 v[51:54], v55 offset:4096
	ds_load_b128 v[55:58], v55 offset:4224
	ds_load_b128 v[63:66], v0 offset:4096
	ds_load_b128 v[67:70], v0
	ds_load_b128 v[71:74], v0 offset:128
	ds_load_b128 v[75:78], v0 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v59, s3, s66, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v60, null, s67, 0, s3
	v_add_co_u32 v61, s3, s66, v7
	v_add_co_ci_u32_e64 v62, null, s67, 0, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[74:75], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v3, s66, v7
	v_lshl_or_b32 v0, s77, 7, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s63, s[72:73], v[61:62]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[74:75], v[61:62]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[72:73], v[59:60]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, 2, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v25, v16, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 4, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 6, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v44, v52, 4, v44
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v52, v64, 4, v68
	v_lshl_or_b32 v68, v18, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 8, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v53, v65, 4, v69
	v_lshl_or_b32 v69, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 10, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[74:75], v[59:60]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v60, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 12, v3
	v_mad_u64_u32 v[6:7], null, v7, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 14, v3
	v_mad_u64_u32 v[7:8], null, v8, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v22, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 16, v3
	v_mad_u64_u32 v[8:9], null, v9, s72, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s72, v[0:1]
	v_mad_u64_u32 v[10:11], null, v11, s72, v[0:1]
	v_mad_u64_u32 v[11:12], null, v12, s72, v[0:1]
	v_mad_u64_u32 v[12:13], null, v13, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v66, 4, v70
	v_lshl_or_b32 v66, v23, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v14, s72, v[0:1]
	v_add_nc_u32_e32 v15, 18, v3
	v_add_nc_u32_e32 v16, 20, v3
	v_add_nc_u32_e32 v17, 22, v3
	v_add_nc_u32_e32 v18, 24, v3
	v_add_nc_u32_e32 v20, 28, v3
	v_mad_u64_u32 v[14:15], null, v15, s72, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s72, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s72, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[0:1]
	v_add_nc_u32_e32 v19, 26, v3
	v_add_nc_u32_e32 v21, 30, v3
	v_add_nc_u32_e32 v22, 32, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v59, v35, 4, v27
	v_lshl_or_b32 v47, v55, 4, v47
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[18:19], null, v19, s72, v[0:1]
	v_mad_u64_u32 v[19:20], null, v20, s72, v[0:1]
	v_mad_u64_u32 v[20:21], null, v21, s72, v[0:1]
	v_mad_u64_u32 v[21:22], null, v22, s72, v[0:1]
	v_add_nc_u32_e32 v23, 34, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v55, v75, 4, v71
	v_lshl_or_b32 v71, v37, 4, v29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v29, 38, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[22:23], null, v23, s72, v[0:1]
	v_add_nc_u32_e32 v27, 36, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v56, v76, 4, v72
	v_lshl_or_b32 v72, v38, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v30, 40, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v43, v51, 4, v43
	v_lshl_or_b32 v51, v63, 4, v67
	v_lshl_or_b32 v63, v36, 4, v28
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[27:28], null, v27, s72, v[0:1]
	v_mad_u64_u32 v[28:29], null, v29, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[29:30], null, v30, s72, v[0:1]
	v_add_nc_u32_e32 v31, 42, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 44, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 46, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 48, v3
	v_add_nc_u32_e32 v35, 50, v3
	v_add_nc_u32_e32 v36, 52, v3
	v_mad_u64_u32 v[30:31], null, v31, s72, v[0:1]
	v_add_nc_u32_e32 v37, 54, v3
	v_mad_u64_u32 v[31:32], null, v32, s72, v[0:1]
	v_add_nc_u32_e32 v38, 56, v3
	v_mad_u64_u32 v[32:33], null, v33, s72, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[0:1]
	v_add_nc_u32_e32 v40, 60, v3
	v_add_nc_u32_e32 v70, 62, v3
	v_mad_u64_u32 v[37:38], null, v38, s72, v[0:1]
	v_add_nc_u32_e32 v39, 58, v3
	v_mad_u64_u32 v[3:4], null, v3, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s61, s61, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[38:39], null, v39, s72, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v23, 0x80000000, v3, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[3:4], null, v70, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s59, s60
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s61
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s64, s68
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x5
	buffer_store_b8 v25, v23, s[64:67], 0 offen
	buffer_store_b8 v59, v0, s[64:67], 0 offen
	buffer_store_b8 v43, v4, s[64:67], 0 offen
	buffer_store_b8 v51, v6, s[64:67], 0 offen
	buffer_store_b8 v60, v7, s[64:67], 0 offen
	buffer_store_b8 v61, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v57, v77, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v58, v78, 4, v74
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v47, v0, s[64:67], 0 offen
	buffer_store_b8 v55, v4, s[64:67], 0 offen
	buffer_store_b8 v62, v6, s[64:67], 0 offen
	buffer_store_b8 v63, v7, s[64:67], 0 offen
	buffer_store_b8 v44, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s3, s76, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s39, s40
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v26.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s37, s38
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v24.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v52, v0, s[64:67], 0 offen
	buffer_store_b8 v64, v4, s[64:67], 0 offen
	buffer_store_b8 v67, v6, s[64:67], 0 offen
	buffer_store_b8 v48, v7, s[64:67], 0 offen
	buffer_store_b8 v56, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s30, s31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s28, s29
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s26, s27
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s24, s25
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s22, s23
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v68, v0, s[64:67], 0 offen
	buffer_store_b8 v71, v4, s[64:67], 0 offen
	buffer_store_b8 v45, v6, s[64:67], 0 offen
	buffer_store_b8 v53, v7, s[64:67], 0 offen
	buffer_store_b8 v65, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s20, s21
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s18, s19
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s16, s17
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v41, v0, s[64:67], 0 offen
	buffer_store_b8 v49, v4, s[64:67], 0 offen
	buffer_store_b8 v57, v6, s[64:67], 0 offen
	buffer_store_b8 v69, v7, s[64:67], 0 offen
	buffer_store_b8 v72, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s10, s11
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b8 v46, v0, s[64:67], 0 offen
	buffer_store_b8 v54, v4, s[64:67], 0 offen
	buffer_store_b8 v66, v6, s[64:67], 0 offen
	buffer_store_b8 v42, v7, s[64:67], 0 offen
	buffer_store_b8 v50, v8, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v108
	v_lshrrev_b32_e32 v6, 2, v83
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v0, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 3, v109
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s76, s76, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v58, v0, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v3
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s76, 8
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
	v_and_b32_e32 v2, 0xc0, v108
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s77, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp83:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 796
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
		.amdhsa_next_free_sgpr 78
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 796
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 34372
; TotalNumSgprs: 80
; NumVgprs: 256
; ScratchSize: 796
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 80
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 796
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 198
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
