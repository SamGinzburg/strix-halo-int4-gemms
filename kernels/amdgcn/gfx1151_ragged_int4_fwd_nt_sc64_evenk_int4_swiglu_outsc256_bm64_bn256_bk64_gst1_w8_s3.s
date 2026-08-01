	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s78, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
	v_mov_b32_e32 v111, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_and_b32_e32 v69, 0x7f, v111
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s78, 0xff
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s35, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
	s_mul_hi_u32 s3, s8, s7
	s_xor_b32 s7, s2, s5
	s_mul_i32 s9, s3, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s12, s8, s9
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s6
	s_cmp_ge_u32 s12, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s6
	s_cselect_b32 s3, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s7
	s_sub_i32 s79, s3, s7
	s_load_b64 s[6:7], s[0:1], 0x38
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s79, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s3
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s8, s4
	s_addc_u32 s3, s9, s5
	s_mov_b32 s8, 0
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s10, s4
	s_addc_u32 s3, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s6, s4
	s_addc_u32 s7, s7, s5
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s34, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v7, 0x7f, v111
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 50 is_stmt 0                ; ragged.py:0:50
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr7
.LBB0_3:                                ; %Flow613
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b64 s[74:75], s[2:3], 0x0
	s_load_b64 s[76:77], s[6:7], 0x0
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v113, 0x80, v111
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v112, 15, v111
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v101, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s2, 0, v113
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v209, 0
	v_mov_b32_e32 v212, 0
	v_mov_b32_e32 v220, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 5, v111
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b32 s39, s[0:1], 0x58
	v_dual_mov_b32 v194, 0 :: v_dual_lshlrev_b32 v63, 1, v111
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s72, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s73, 0, s0
	v_add_co_u32 v14, s0, s72, v112
	v_add_co_u32 v2, vcc_lo, v0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	v_add_co_u32 v8, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	v_add_co_u32 v10, vcc_lo, v0, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, 0, v1, vcc_lo
	v_add_co_u32 v12, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v15, null, s73, 0, s0
	v_add_co_ci_u32_e64 v13, null, 0, v1, vcc_lo
	v_add_co_u32 v16, vcc_lo, v0, 56
	v_add_co_ci_u32_e64 v17, null, 0, v1, vcc_lo
	v_add_co_u32 v18, vcc_lo, v14, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, 0, v15, vcc_lo
	v_add_co_u32 v20, vcc_lo, v14, 32
	v_add_co_ci_u32_e64 v21, null, 0, v15, vcc_lo
	v_add_co_u32 v22, vcc_lo, v14, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v23, null, 0, v15, vcc_lo
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[0:1]
	v_dual_mov_b32 v217, 0 :: v_dual_add_nc_u32 v0, s72, v112
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[2:3]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[76:77], v[2:3]
	v_dual_mov_b32 v192, 0 :: v_dual_and_b32 v67, 24, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v218, 0 :: v_dual_add_nc_u32 v1, 16, v0
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v216, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s34
	v_lshl_or_b32 v70, v112, 5, v67
	v_cndmask_b32_e64 v68, 0x88, 0, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v25, 0xe0, v111
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_add_u32 s36, s6, s4
	s_addc_u32 s37, s7, s5
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v67, v68, v69
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:232
	scratch_store_b32 off, v111, off offset:228
	v_mul_lo_u32 v0, v1, s34
	v_lshl_or_b32 v74, v25, 4, v70
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s13
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s13, s79, 8
	v_dual_mov_b32 v151, 0 :: v_dual_and_b32 v72, 0xf0, v111
	v_dual_mov_b32 v186, 0 :: v_dual_lshlrev_b32 v73, 5, v111
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s34
	v_or_b32_e32 v75, s13, v111
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[4:5]
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_or_b32_e32 v4, s13, v24
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v24, s72, v24
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v75, off offset:260
	scratch_store_b32 off, v0, off offset:240
	v_mul_lo_u32 v0, v3, s34
	v_dual_mov_b32 v176, 0 :: v_dual_lshlrev_b32 v75, 2, v72
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v73, 32, v73
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v76, 8, v24
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v77, 16, v24
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:244
	scratch_store_b32 off, v112, off offset:836
	v_add3_u32 v73, 0, v75, v73
	v_mul_lo_u32 v75, v24, s39
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v70, off offset:248
	scratch_store_b32 off, v113, off offset:840
	v_mov_b32_e32 v128, 0
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v78, 48, v24
	v_mov_b32_e32 v173, 0
	v_mov_b32_e32 v179, 0
	scratch_store_b32 off, v75, off offset:264 ; 4-byte Folded Spill
	v_mul_lo_u32 v75, v76, s39
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v67, off offset:252
	scratch_store_b32 off, v69, off offset:844
	v_add_nc_u32_e32 v76, 32, v24
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s12
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s12, s[36:37], 0x0
	v_mov_b32_e32 v126, 0
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s33, s78, 1
	scratch_store_b32 off, v75, off offset:268 ; 4-byte Folded Spill
	v_mul_lo_u32 v75, v77, s39
	scratch_store_b32 off, v74, off offset:256 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v77, 40, v24
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s14
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s14, s39, s33
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v5, 0xe0, v4
	v_or_b32_e32 v59, 16, v4
	v_or_b32_e32 v60, 8, v4
	scratch_store_b32 off, v75, off offset:272 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v75, 24, v24
	v_add_nc_u32_e32 v24, 56, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[6:7]
	v_cmp_le_i64_e64 s4, s[74:75], v[8:9]
	v_cmp_le_i64_e64 s5, s[74:75], v[10:11]
	v_mul_lo_u32 v75, v75, s39
	v_mul_lo_u32 v24, v24, s39
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s38, s14, s12
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[16:17]
	v_cmp_le_i64_e64 s8, s[74:75], v[14:15]
	v_cmp_le_i64_e64 s9, s[74:75], v[18:19]
	v_cmp_le_i64_e64 s10, s[74:75], v[20:21]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[76:77], v[6:7]
	scratch_store_b32 off, v75, off offset:276 ; 4-byte Folded Spill
	v_mul_lo_u32 v75, v76, s39
	v_cmp_gt_i64_e64 s16, s[76:77], v[8:9]
	v_cmp_gt_i64_e64 s17, s[76:77], v[10:11]
	v_cmp_gt_i64_e64 s19, s[76:77], v[16:17]
	v_cmp_gt_i64_e64 s20, s[76:77], v[14:15]
	v_cmp_gt_i64_e64 s21, s[76:77], v[18:19]
	v_cmp_gt_i64_e64 s22, s[76:77], v[20:21]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v0, 0xf8, v4
	scratch_store_b32 off, v75, off offset:280 ; 4-byte Folded Spill
	v_mul_lo_u32 v75, v77, s39
	v_or_b32_e32 v1, 0xf0, v4
	v_or_b32_e32 v3, 0xe8, v4
	v_or_b32_e32 v7, 0xd8, v4
	v_or_b32_e32 v8, 0xd0, v4
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v10, s78, v5
	v_or_b32_e32 v11, 0xc8, v4
	scratch_store_b32 off, v75, off offset:284 ; 4-byte Folded Spill
	v_mul_lo_u32 v75, v78, s39
	v_or_b32_e32 v14, 0xc0, v4
	v_or_b32_e32 v15, 0xb8, v4
	v_or_b32_e32 v17, 0xb0, v4
	v_or_b32_e32 v18, 0xa8, v4
	v_or_b32_e32 v21, 0xa0, v4
	v_or_b32_e32 v26, 0x98, v4
	v_or_b32_e32 v27, 0x90, v4
	scratch_store_b32 off, v75, off offset:288 ; 4-byte Folded Spill
	v_mad_u64_u32 v[75:76], null, v4, s39, s[38:39]
	v_or_b32_e32 v29, 0x88, v4
	v_or_b32_e32 v30, 0x80, v4
	v_or_b32_e32 v33, 0x78, v4
	v_or_b32_e32 v36, 0x70, v4
	v_or_b32_e32 v37, 0x68, v4
	v_or_b32_e32 v39, 0x60, v4
	v_or_b32_e32 v40, 0x58, v4
	v_or_b32_e32 v43, 0x50, v4
	v_or_b32_e32 v46, 0x48, v4
	v_or_b32_e32 v47, 64, v4
	v_or_b32_e32 v49, 56, v4
	v_or_b32_e32 v50, 48, v4
	v_or_b32_e32 v53, 40, v4
	v_or_b32_e32 v56, 32, v4
	v_or_b32_e32 v57, 24, v4
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v64, s78, v59
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v65, s78, v60
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v66, s78, v4
	scratch_store_b32 off, v24, off offset:292 ; 4-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s39, v5, s[38:39]
	scratch_store_b64 off, v[75:76], off offset:296 ; 8-byte Folded Spill
	v_mad_u64_u32 v[75:76], null, v60, s39, s[38:39]
	v_mad_u64_u32 v[59:60], null, v59, s39, s[38:39]
	v_dual_mov_b32 v214, 0 :: v_dual_add_nc_u32 v9, s78, v3
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v61, s78, v56
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v62, s78, v57
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[75:76], off offset:304
	scratch_store_b64 off, v[4:5], off offset:520
	v_mad_u64_u32 v[3:4], null, s39, v3, s[38:39]
	scratch_store_b64 off, v[59:60], off offset:312 ; 8-byte Folded Spill
	v_mad_u64_u32 v[59:60], null, v57, s39, s[38:39]
	v_mad_u64_u32 v[56:57], null, v56, s39, s[38:39]
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v2, s78, v0
	scratch_store_b64 off, v[3:4], off offset:528 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s39, v1, s[38:39]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[59:60], off offset:320
	scratch_store_b64 off, v[56:57], off offset:328
	v_mad_u64_u32 v[56:57], null, v53, s39, s[38:39]
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v6, s78, v1
	v_mad_u64_u32 v[0:1], null, s39, v0, s[38:39]
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v54, s78, v49
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v55, s78, v50
	scratch_store_b64 off, v[56:57], off offset:336 ; 8-byte Folded Spill
	v_mad_u64_u32 v[56:57], null, v50, s39, s[38:39]
	v_mad_u64_u32 v[49:50], null, v49, s39, s[38:39]
	scratch_store_b64 off, v[0:1], off offset:544 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v66, s39, s[38:39]
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v51, s78, v46
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v52, s78, v47
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[56:57], off offset:344
	scratch_store_b64 off, v[49:50], off offset:352
	scratch_store_b64 off, v[0:1], off offset:552
	v_mad_u64_u32 v[49:50], null, s39, v47, s[38:39]
	v_mad_u64_u32 v[46:47], null, s39, v46, s[38:39]
	v_mad_u64_u32 v[0:1], null, v65, s39, s[38:39]
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v44, s78, v39
	scratch_store_b64 off, v[49:50], off offset:360 ; 8-byte Folded Spill
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v45, s78, v40
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[46:47], off offset:368
	scratch_store_b64 off, v[0:1], off offset:560
	v_mad_u64_u32 v[46:47], null, s39, v43, s[38:39]
	v_mad_u64_u32 v[0:1], null, v64, s39, s[38:39]
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v41, s78, v36
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v42, s78, v37
	scratch_store_b64 off, v[46:47], off offset:376 ; 8-byte Folded Spill
	v_mad_u64_u32 v[46:47], null, s39, v40, s[38:39]
	v_mad_u64_u32 v[39:40], null, s39, v39, s[38:39]
	scratch_store_b64 off, v[0:1], off offset:568 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v62, s39, s[38:39]
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v58, s78, v53
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[46:47], off offset:384
	scratch_store_b64 off, v[39:40], off offset:392
	v_mad_u64_u32 v[39:40], null, s39, v37, s[38:39]
	v_mad_u64_u32 v[36:37], null, s39, v36, s[38:39]
	scratch_store_b64 off, v[0:1], off offset:576 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v61, s39, s[38:39]
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v34, s78, v29
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[39:40], off offset:400
	scratch_store_b64 off, v[36:37], off offset:408
	v_mad_u64_u32 v[36:37], null, s39, v33, s[38:39]
	scratch_store_b64 off, v[0:1], off offset:584 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v58, s39, s[38:39]
	v_dual_mov_b32 v220, 0 :: v_dual_add_nc_u32 v35, s78, v30
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v31, s78, v26
	scratch_store_b64 off, v[36:37], off offset:416 ; 8-byte Folded Spill
	v_mad_u64_u32 v[36:37], null, s39, v30, s[38:39]
	v_mad_u64_u32 v[29:30], null, s39, v29, s[38:39]
	scratch_store_b64 off, v[0:1], off offset:592 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v55, s39, s[38:39]
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v32, s78, v27
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[36:37], off offset:424
	scratch_store_b64 off, v[29:30], off offset:432
	v_mad_u64_u32 v[29:30], null, s39, v27, s[38:39]
	v_mad_u64_u32 v[26:27], null, s39, v26, s[38:39]
	scratch_store_b64 off, v[0:1], off offset:600 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v54, s39, s[38:39]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[22:23]
	scratch_store_b64 off, v[29:30], off offset:440 ; 8-byte Folded Spill
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[76:77], v[22:23]
	scratch_store_b64 off, v[26:27], off offset:448 ; 8-byte Folded Spill
	v_mad_u64_u32 v[26:27], null, s39, v21, s[38:39]
	scratch_store_b64 off, v[0:1], off offset:608 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v52, s39, s[38:39]
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v22, s78, v17
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v23, s78, v18
	scratch_store_b64 off, v[26:27], off offset:456 ; 8-byte Folded Spill
	v_mad_u64_u32 v[26:27], null, s39, v18, s[38:39]
	v_mad_u64_u32 v[17:18], null, s39, v17, s[38:39]
	scratch_store_b64 off, v[0:1], off offset:616 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v51, s39, s[38:39]
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v48, s78, v43
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v19, s78, v14
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v20, s78, v15
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[26:27], off offset:464
	scratch_store_b64 off, v[17:18], off offset:472
	scratch_store_b64 off, v[0:1], off offset:624
	v_mad_u64_u32 v[17:18], null, s39, v15, s[38:39]
	v_mad_u64_u32 v[14:15], null, s39, v14, s[38:39]
	v_mad_u64_u32 v[0:1], null, v48, s39, s[38:39]
	v_dual_mov_b32 v106, 0 :: v_dual_and_b32 v63, 28, v63
	scratch_store_b64 off, v[17:18], off offset:480 ; 8-byte Folded Spill
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[74:75], v[12:13]
	scratch_store_b64 off, v[14:15], off offset:488 ; 8-byte Folded Spill
	v_mad_u64_u32 v[14:15], null, s39, v11, s[38:39]
	scratch_store_b64 off, v[0:1], off offset:632 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v45, s39, s[38:39]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[12:13]
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v12, s78, v7
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v13, s78, v8
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[14:15], off offset:496
	scratch_store_b64 off, v[0:1], off offset:640
	v_mad_u64_u32 v[14:15], null, s39, v8, s[38:39]
	v_mad_u64_u32 v[7:8], null, s39, v7, s[38:39]
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v0, v73, v63
	v_xor_b32_e32 v25, 0x110, v67
	v_xor_b32_e32 v67, 8, v70
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[14:15], off offset:504
	scratch_store_b32 off, v0, off offset:648
	scratch_store_b64 off, v[7:8], off offset:512
	v_mad_u64_u32 v[0:1], null, v44, s39, s[38:39]
	v_xor_b32_e32 v68, 16, v70
	scratch_store_b64 off, v[3:4], off offset:536 ; 8-byte Folded Spill
	v_xor_b32_e32 v69, 24, v70
	v_mov_b32_e32 v181, 0
	v_xor_b32_e32 v70, 8, v74
	v_mov_b32_e32 v183, 0
	scratch_store_b64 off, v[0:1], off offset:652 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v67
	v_xor_b32_e32 v71, 16, v74
	v_mov_b32_e32 v187, 0
	v_xor_b32_e32 v74, 24, v74
	v_mov_b32_e32 v169, 0
	scratch_store_b32 off, v0, off offset:660 ; 4-byte Folded Spill
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v0, 0, v68
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v38, s78, v33
	v_mov_b32_e32 v191, 0
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v69
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v28, s78, v21
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v16, s78, v11
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v70
	v_dual_mov_b32 v175, 0 :: v_dual_lshlrev_b32 v72, 1, v72
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v213, 0, v25
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v71
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v148, 0, v72
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v253, 0
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v74
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v159, 0
	scratch_store_b32 off, v0, off offset:680 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v42, s39, s[38:39]
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v145, 0
	scratch_store_b64 off, v[0:1], off offset:684 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v41, s39, s[38:39]
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v115, 0
	scratch_store_b64 off, v[0:1], off offset:692 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v38, s39, s[38:39]
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v189, 0
	scratch_store_b64 off, v[0:1], off offset:700 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v35, s39, s[38:39]
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v137, 0
	scratch_store_b64 off, v[0:1], off offset:708 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v34, s39, s[38:39]
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v91, 0
	scratch_store_b64 off, v[0:1], off offset:716 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v32, s39, s[38:39]
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v109, 0
	scratch_store_b64 off, v[0:1], off offset:724 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v31, s39, s[38:39]
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v97, 0
	scratch_store_b64 off, v[0:1], off offset:732 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v28, s39, s[38:39]
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v124, 0
	scratch_store_b64 off, v[0:1], off offset:740 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v23, s39, s[38:39]
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v116, 0
	scratch_store_b64 off, v[0:1], off offset:748 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v22, s39, s[38:39]
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v88, 0
	scratch_store_b64 off, v[0:1], off offset:756 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v20, s39, s[38:39]
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_mul_i32 s35, s34, s12
	s_mov_b32 s12, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s15
	s_and_b32 s4, s4, s16
	s_and_b32 s5, s5, s17
	s_and_b32 s6, s6, s18
	scratch_store_b64 off, v[0:1], off offset:764 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v19, s39, s[38:39]
	s_and_b32 s7, s7, s19
	s_and_b32 s8, s8, s20
	s_and_b32 s9, s9, s21
	s_and_b32 s10, s10, s22
	s_and_b32 s11, s11, s23
	s_and_b32 s21, s25, 0xffff
	scratch_store_b64 off, v[0:1], off offset:772 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v16, s39, s[38:39]
	s_mov_b32 s20, s24
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s25, s27, 0xffff
	s_mov_b32 s24, s26
	s_and_b32 s29, s29, 0xffff
	scratch_store_b64 off, v[0:1], off offset:780 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v13, s39, s[38:39]
	s_and_b32 s37, s31, 0xffff
	s_mov_b32 s36, s30
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	scratch_store_b64 off, v[0:1], off offset:788 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v12, s39, s[38:39]
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_mov_b32 s40, s12
	scratch_store_b64 off, v[0:1], off offset:796 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v10, s39, s[38:39]
	scratch_store_b64 off, v[0:1], off offset:804 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v9, s39, s[38:39]
	scratch_store_b64 off, v[0:1], off offset:812 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v6, s39, s[38:39]
	scratch_store_b64 off, v[0:1], off offset:820 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v2, s39, s[38:39]
	scratch_store_b64 off, v[0:1], off offset:828 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	s_clause 0x1f                           ; 236-byte Folded Reload
	scratch_load_b64 v[9:10], off, off offset:296
	scratch_load_b64 v[10:11], off, off offset:304
	scratch_load_b64 v[11:12], off, off offset:312
	scratch_load_b64 v[12:13], off, off offset:320
	scratch_load_b64 v[13:14], off, off offset:328
	scratch_load_b64 v[14:15], off, off offset:336
	scratch_load_b64 v[15:16], off, off offset:344
	scratch_load_b64 v[16:17], off, off offset:352
	scratch_load_b64 v[17:18], off, off offset:360
	scratch_load_b64 v[18:19], off, off offset:368
	scratch_load_b64 v[19:20], off, off offset:376
	scratch_load_b64 v[20:21], off, off offset:384
	scratch_load_b64 v[21:22], off, off offset:392
	scratch_load_b64 v[22:23], off, off offset:400
	scratch_load_b64 v[23:24], off, off offset:408
	scratch_load_b64 v[24:25], off, off offset:416
	scratch_load_b64 v[25:26], off, off offset:424
	scratch_load_b64 v[26:27], off, off offset:432
	scratch_load_b64 v[27:28], off, off offset:440
	scratch_load_b64 v[28:29], off, off offset:448
	scratch_load_b64 v[29:30], off, off offset:456
	scratch_load_b64 v[30:31], off, off offset:464
	scratch_load_b64 v[31:32], off, off offset:472
	scratch_load_b64 v[32:33], off, off offset:480
	scratch_load_b64 v[33:34], off, off offset:488
	scratch_load_b64 v[34:35], off, off offset:496
	scratch_load_b64 v[35:36], off, off offset:504
	scratch_load_b32 v1, off, off offset:264
	scratch_load_b32 v2, off, off offset:268
	scratch_load_b32 v3, off, off offset:272
	scratch_load_b32 v4, off, off offset:276
	scratch_load_b32 v5, off, off offset:280
	s_clause 0x7                            ; 52-byte Folded Reload
	scratch_load_b32 v6, off, off offset:284
	scratch_load_b32 v7, off, off offset:288
	scratch_load_b32 v8, off, off offset:292
	scratch_load_b64 v[36:37], off, off offset:512
	scratch_load_b64 v[37:38], off, off offset:520
	scratch_load_b64 v[38:39], off, off offset:528
	scratch_load_b64 v[39:40], off, off offset:536
	scratch_load_b64 v[40:41], off, off offset:544
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_and_b32_e32 v0, 31, v111
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v217, off offset:224
	scratch_store_b32 off, v216, off offset:220
	scratch_store_b32 off, v147, off offset:216
	scratch_store_b32 off, v215, off offset:212
	scratch_store_b32 off, v214, off offset:208
	scratch_store_b32 off, v210, off offset:204
	scratch_store_b32 off, v207, off offset:200
	scratch_store_b32 off, v152, off offset:196
	scratch_store_b32 off, v101, off offset:192
	scratch_store_b32 off, v205, off offset:188
	scratch_store_b32 off, v204, off offset:184
	scratch_store_b32 off, v177, off offset:180
	scratch_store_b32 off, v209, off offset:176
	scratch_store_b32 off, v208, off offset:172
	scratch_store_b32 off, v172, off offset:168
	scratch_store_b32 off, v206, off offset:164
	scratch_store_b32 off, v201, off offset:160
	scratch_store_b32 off, v199, off offset:156
	scratch_store_b32 off, v144, off offset:152
	scratch_store_b32 off, v120, off offset:148
	scratch_store_b32 off, v102, off offset:144
	scratch_store_b32 off, v115, off offset:140
	scratch_store_b32 off, v185, off offset:136
	scratch_store_b32 off, v192, off offset:132
	scratch_store_b32 off, v190, off offset:128
	scratch_store_b32 off, v186, off offset:124
	scratch_store_b32 off, v163, off offset:120
	scratch_store_b32 off, v164, off offset:116
	scratch_store_b32 off, v121, off offset:112
	scratch_store_b32 off, v165, off offset:108
	scratch_store_b32 off, v122, off offset:104
	scratch_store_b32 off, v127, off offset:100
	s_clause 0x18                           ; 100-byte Folded Spill
	scratch_store_b32 off, v128, off offset:96
	scratch_store_b32 off, v129, off offset:92
	scratch_store_b32 off, v130, off offset:88
	scratch_store_b32 off, v103, off offset:84
	scratch_store_b32 off, v156, off offset:80
	scratch_store_b32 off, v155, off offset:76
	scratch_store_b32 off, v143, off offset:72
	scratch_store_b32 off, v116, off offset:68
	scratch_store_b32 off, v117, off offset:64
	scratch_store_b32 off, v118, off offset:60
	scratch_store_b32 off, v107, off offset:56
	scratch_store_b32 off, v153, off offset:52
	scratch_store_b32 off, v145, off offset:48
	scratch_store_b32 off, v158, off offset:44
	scratch_store_b32 off, v151, off offset:40
	scratch_store_b32 off, v108, off offset:36
	scratch_store_b32 off, v109, off offset:32
	scratch_store_b32 off, v110, off offset:28
	scratch_store_b32 off, v161, off offset:24
	scratch_store_b32 off, v176, off offset:20
	scratch_store_b32 off, v114, off offset:16
	scratch_store_b32 off, v123, off offset:12
	scratch_store_b32 off, v124, off offset:8
	scratch_store_b32 off, v125, off offset:4
	scratch_store_b32 off, v126, off
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	v_mov_b32_e32 v192, v191
	v_lshl_or_b32 v0, s40, 5, v0
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	v_mov_b32_e32 v152, v100
	v_mov_b32_e32 v156, v189
	v_mov_b32_e32 v172, v138
	v_mov_b32_e32 v155, v146
	v_dual_mov_b32 v165, v174 :: v_dual_mov_b32 v174, v169
	v_mov_b32_e32 v169, v119
	v_dual_mov_b32 v151, v131 :: v_dual_mov_b32 v158, v132
	v_dual_mov_b32 v163, v133 :: v_dual_mov_b32 v164, v134
	v_dual_mov_b32 v185, v173 :: v_dual_mov_b32 v186, v167
	v_dual_mov_b32 v173, v139 :: v_dual_mov_b32 v190, v184
	v_dual_mov_b32 v184, v182 :: v_dual_mov_b32 v167, v140
	v_mov_b32_e32 v182, v178
	v_dual_mov_b32 v177, v142 :: v_dual_mov_b32 v178, v175
	v_dual_mov_b32 v175, v141 :: v_dual_mov_b32 v138, v200
	v_dual_mov_b32 v153, v202 :: v_dual_mov_b32 v144, v203
	v_dual_mov_b32 v161, v220 :: v_dual_mov_b32 v210, v89
	v_dual_mov_b32 v220, v187 :: v_dual_mov_b32 v187, v149
	v_dual_mov_b32 v149, v105 :: v_dual_mov_b32 v176, v84
	v_mov_b32_e32 v105, v90
	v_dual_mov_b32 v191, v154 :: v_dual_mov_b32 v154, v91
	v_dual_mov_b32 v146, v86 :: v_dual_mov_b32 v143, v87
	v_mov_b32_e32 v147, v85
	v_mov_b32_e32 v197, v98
	v_mov_b32_e32 v145, v92
	v_dual_mov_b32 v196, v136 :: v_dual_mov_b32 v189, v93
	v_mov_b32_e32 v64, v95
	v_mov_b32_e32 v136, v97
	v_dual_mov_b32 v162, v135 :: v_dual_mov_b32 v135, v96
	s_waitcnt vmcnt(39)
	v_add_nc_u32_e32 v9, v9, v0
	s_waitcnt vmcnt(38)
	v_add_nc_u32_e32 v10, v10, v0
	s_waitcnt vmcnt(37)
	v_add_nc_u32_e32 v11, v11, v0
	s_waitcnt vmcnt(36)
	v_add_nc_u32_e32 v12, v12, v0
	s_waitcnt vmcnt(35)
	v_add_nc_u32_e32 v13, v13, v0
	s_waitcnt vmcnt(34)
	v_add_nc_u32_e32 v14, v14, v0
	s_waitcnt vmcnt(33)
	v_add_nc_u32_e32 v15, v15, v0
	s_waitcnt vmcnt(32)
	v_add_nc_u32_e32 v16, v16, v0
	s_waitcnt vmcnt(31)
	v_add_nc_u32_e32 v17, v17, v0
	s_waitcnt vmcnt(30)
	v_add_nc_u32_e32 v18, v18, v0
	s_waitcnt vmcnt(29)
	v_add_nc_u32_e32 v19, v19, v0
	s_waitcnt vmcnt(28)
	v_add_nc_u32_e32 v20, v20, v0
	s_waitcnt vmcnt(27)
	v_add_nc_u32_e32 v21, v21, v0
	s_waitcnt vmcnt(26)
	v_add_nc_u32_e32 v22, v22, v0
	s_waitcnt vmcnt(25)
	v_add_nc_u32_e32 v23, v23, v0
	s_waitcnt vmcnt(24)
	v_add_nc_u32_e32 v24, v24, v0
	s_waitcnt vmcnt(23)
	v_add_nc_u32_e32 v25, v25, v0
	s_waitcnt vmcnt(22)
	v_add_nc_u32_e32 v26, v26, v0
	s_waitcnt vmcnt(21)
	v_add_nc_u32_e32 v27, v27, v0
	s_waitcnt vmcnt(20)
	v_add_nc_u32_e32 v28, v28, v0
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v29, v29, v0
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v30, v30, v0
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v31, v31, v0
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v32, v32, v0
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v33, v33, v0
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v34, v34, v0
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v35, v35, v0
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v1, v1, v0
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v2, v2, v0
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v3, v3, v0
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v4, v4, v0
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v5, v5, v0
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v6, v6, v0
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v7, v7, v0
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v8, v8, v0
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v36, v36, v0
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v37, v37, v0
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, v38, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, v39, v0
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_add_nc_u32 v40, v40, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	v_cndmask_b32_e64 v6, 0x80000000, v6, s5
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	v_cndmask_b32_e64 v8, 0x80000000, v8, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	buffer_load_u8 v17, v17, s[24:27], 0 offen
	buffer_load_u8 v18, v18, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v20, v20, s[24:27], 0 offen
	buffer_load_u8 v21, v21, s[24:27], 0 offen
	buffer_load_u8 v22, v22, s[24:27], 0 offen
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	buffer_load_u8 v24, v24, s[24:27], 0 offen
	buffer_load_u8 v25, v25, s[24:27], 0 offen
	buffer_load_u8 v26, v26, s[24:27], 0 offen
	buffer_load_u8 v27, v27, s[24:27], 0 offen
	buffer_load_u8 v28, v28, s[24:27], 0 offen
	buffer_load_u8 v29, v29, s[24:27], 0 offen
	buffer_load_u8 v30, v30, s[24:27], 0 offen
	buffer_load_u8 v31, v31, s[24:27], 0 offen
	buffer_load_u8 v32, v32, s[24:27], 0 offen
	buffer_load_u8 v33, v33, s[24:27], 0 offen
	buffer_load_u8 v34, v34, s[24:27], 0 offen
	buffer_load_u8 v35, v35, s[24:27], 0 offen
	buffer_load_u8 v36, v36, s[24:27], 0 offen
	buffer_load_u8 v37, v37, s[24:27], 0 offen
	buffer_load_u8 v38, v38, s[24:27], 0 offen
	buffer_load_u8 v39, v39, s[24:27], 0 offen
	buffer_load_u8 v40, v40, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v1, v1, s[20:23], 0 offen
	buffer_load_u8 v3, v3, s[20:23], 0 offen
	buffer_load_u8 v5, v5, s[20:23], 0 offen
	buffer_load_u8 v7, v7, s[20:23], 0 offen
	buffer_load_u8 v8, v8, s[20:23], 0 offen
	buffer_load_u8 v6, v6, s[20:23], 0 offen
	buffer_load_u8 v4, v4, s[20:23], 0 offen
	buffer_load_u8 v2, v2, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v41, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, 0, v41
	ds_store_b8 v42, v1
	ds_store_b8 v42, v3 offset:512
	ds_store_b8 v42, v5 offset:1024
	ds_store_b8 v42, v7 offset:1536
	ds_store_b8 v213, v2
	ds_store_b8 v213, v4 offset:512
	ds_store_b8 v213, v6 offset:1024
	ds_store_b8 v213, v8 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_2addr_stride64_b64 v[66:69], v1 offset1:1
	ds_load_2addr_stride64_b64 v[206:209], v1 offset0:2 offset1:3
	scratch_load_b32 v1, off, off offset:660 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[214:217], v1 offset1:1
	ds_load_2addr_stride64_b64 v[107:110], v1 offset0:2 offset1:3
	scratch_load_b32 v1, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[100:103], v1 offset1:1
	ds_load_2addr_stride64_b64 v[115:118], v1 offset0:2 offset1:3
	scratch_load_b32 v1, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[123:126], v1 offset1:1
	ds_load_2addr_stride64_b64 v[111:114], v1 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x6                            ; 56-byte Folded Reload
	scratch_load_b64 v[1:2], off, off offset:552
	scratch_load_b64 v[2:3], off, off offset:560
	scratch_load_b64 v[3:4], off, off offset:568
	scratch_load_b64 v[4:5], off, off offset:576
	scratch_load_b64 v[5:6], off, off offset:584
	scratch_load_b64 v[6:7], off, off offset:592
	scratch_load_b64 v[7:8], off, off offset:600
	ds_store_b8 v42, v9
	ds_store_b8 v42, v11 offset:512
	ds_store_b8 v42, v13 offset:1024
	ds_store_b8 v42, v15 offset:1536
	ds_store_b8 v42, v17 offset:2048
	ds_store_b8 v42, v19 offset:2560
	ds_store_b8 v42, v21 offset:3072
	ds_store_b8 v42, v23 offset:3584
	ds_store_b8 v42, v25 offset:4096
	ds_store_b8 v42, v27 offset:4608
	ds_store_b8 v42, v29 offset:5120
	ds_store_b8 v42, v31 offset:5632
	ds_store_b8 v42, v33 offset:6144
	ds_store_b8 v42, v35 offset:6656
	ds_store_b8 v42, v37 offset:7168
	ds_store_b8 v42, v39 offset:7680
	ds_store_b8 v213, v10
	ds_store_b8 v213, v12 offset:512
	ds_store_b8 v213, v14 offset:1024
	ds_store_b8 v213, v16 offset:1536
	ds_store_b8 v213, v18 offset:2048
	ds_store_b8 v213, v20 offset:2560
	ds_store_b8 v213, v22 offset:3072
	ds_store_b8 v213, v24 offset:3584
	ds_store_b8 v213, v26 offset:4096
	ds_store_b8 v213, v28 offset:4608
	ds_store_b8 v213, v30 offset:5120
	ds_store_b8 v213, v32 offset:5632
	ds_store_b8 v213, v34 offset:6144
	ds_store_b8 v213, v36 offset:6656
	ds_store_b8 v213, v38 offset:7168
	ds_store_b8 v213, v40 offset:7680
	s_clause 0x18                           ; 200-byte Folded Reload
	scratch_load_b64 v[8:9], off, off offset:608
	scratch_load_b64 v[9:10], off, off offset:616
	scratch_load_b64 v[10:11], off, off offset:624
	scratch_load_b64 v[11:12], off, off offset:632
	scratch_load_b64 v[12:13], off, off offset:640
	scratch_load_b64 v[13:14], off, off offset:652
	scratch_load_b64 v[14:15], off, off offset:684
	scratch_load_b64 v[15:16], off, off offset:692
	scratch_load_b64 v[16:17], off, off offset:700
	scratch_load_b64 v[17:18], off, off offset:708
	scratch_load_b64 v[18:19], off, off offset:716
	scratch_load_b64 v[19:20], off, off offset:724
	scratch_load_b64 v[20:21], off, off offset:732
	scratch_load_b64 v[21:22], off, off offset:740
	scratch_load_b64 v[22:23], off, off offset:748
	scratch_load_b64 v[23:24], off, off offset:756
	scratch_load_b64 v[24:25], off, off offset:764
	scratch_load_b64 v[25:26], off, off offset:772
	scratch_load_b64 v[26:27], off, off offset:780
	scratch_load_b64 v[27:28], off, off offset:788
	scratch_load_b64 v[28:29], off, off offset:796
	scratch_load_b64 v[29:30], off, off offset:804
	scratch_load_b64 v[30:31], off, off offset:812
	scratch_load_b64 v[31:32], off, off offset:820
	scratch_load_b64 v[32:33], off, off offset:828
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v65, off, off offset:672
	scratch_load_b32 v195, off, off offset:676
	scratch_load_b32 v219, off, off offset:680
	s_waitcnt vmcnt(34)
	v_add_nc_u32_e32 v1, v1, v0
	s_waitcnt vmcnt(33)
	v_add_nc_u32_e32 v2, v2, v0
	s_waitcnt vmcnt(32)
	v_add_nc_u32_e32 v3, v3, v0
	s_waitcnt vmcnt(31)
	v_add_nc_u32_e32 v4, v4, v0
	s_waitcnt vmcnt(30)
	v_add_nc_u32_e32 v5, v5, v0
	s_waitcnt vmcnt(29)
	v_add_nc_u32_e32 v6, v6, v0
	s_waitcnt vmcnt(28)
	v_add_nc_u32_e32 v7, v7, v0
	s_waitcnt vmcnt(27)
	v_add_nc_u32_e32 v8, v8, v0
	s_waitcnt vmcnt(26)
	v_add_nc_u32_e32 v9, v9, v0
	s_waitcnt vmcnt(25)
	v_add_nc_u32_e32 v10, v10, v0
	s_waitcnt vmcnt(24)
	v_add_nc_u32_e32 v11, v11, v0
	s_waitcnt vmcnt(23)
	v_add_nc_u32_e32 v12, v12, v0
	s_waitcnt vmcnt(22)
	v_add_nc_u32_e32 v13, v13, v0
	s_waitcnt vmcnt(21)
	v_add_nc_u32_e32 v14, v14, v0
	s_waitcnt vmcnt(20)
	v_add_nc_u32_e32 v15, v15, v0
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v16, v16, v0
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v17, v17, v0
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v18, v18, v0
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v19, v19, v0
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v20, v20, v0
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v21, v21, v0
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v22, v22, v0
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v23, v23, v0
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v24, v24, v0
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v25, v25, v0
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v26, v26, v0
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v27, v27, v0
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v28, v28, v0
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v29, v29, v0
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v30, v30, v0
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v31, v31, v0
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, v32, v0
	scratch_load_b32 v32, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1f
	buffer_load_u8 v1, v1, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v17, v17, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v21, v21, s[24:27], 0 offen
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	buffer_load_u8 v25, v25, s[24:27], 0 offen
	buffer_load_u8 v27, v27, s[24:27], 0 offen
	buffer_load_u8 v29, v29, s[24:27], 0 offen
	buffer_load_u8 v31, v31, s[24:27], 0 offen
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v24, v24, s[24:27], 0 offen
	buffer_load_u8 v22, v22, s[24:27], 0 offen
	buffer_load_u8 v20, v20, s[24:27], 0 offen
	buffer_load_u8 v18, v18, s[24:27], 0 offen
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v30, v30, s[24:27], 0 offen
	buffer_load_u8 v28, v28, s[24:27], 0 offen
	buffer_load_u8 v26, v26, s[24:27], 0 offen
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s26, s40, s35
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(35)
	ds_load_2addr_stride64_b64 v[119:122], v65 offset1:8
	s_waitcnt vmcnt(34)
	ds_load_2addr_stride64_b64 v[131:134], v195 offset1:8
	s_waitcnt vmcnt(33)
	ds_load_2addr_stride64_b64 v[127:130], v219 offset1:8
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s26, s26, s33
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(32)
	v_add_nc_u32_e32 v32, 0, v32
	ds_load_2addr_stride64_b64 v[38:41], v32 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v42, v1
	s_waitcnt vmcnt(30)
	ds_store_b8 v42, v3 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v42, v5 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v42, v7 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v42, v9 offset:2048
	s_waitcnt vmcnt(26)
	ds_store_b8 v42, v11 offset:2560
	s_waitcnt vmcnt(25)
	ds_store_b8 v42, v13 offset:3072
	s_waitcnt vmcnt(24)
	ds_store_b8 v42, v15 offset:3584
	s_waitcnt vmcnt(23)
	ds_store_b8 v42, v17 offset:4096
	s_waitcnt vmcnt(22)
	ds_store_b8 v42, v19 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v42, v21 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v42, v23 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v42, v25 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v42, v27 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v42, v29 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v42, v31 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v213, v2
	ds_store_b8 v213, v4 offset:512
	ds_store_b8 v213, v6 offset:1024
	ds_store_b8 v213, v8 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v213, v10 offset:2048
	ds_store_b8 v213, v12 offset:2560
	ds_store_b8 v213, v14 offset:3072
	ds_store_b8 v213, v16 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v213, v18 offset:4096
	ds_store_b8 v213, v20 offset:4608
	ds_store_b8 v213, v22 offset:5120
	ds_store_b8 v213, v24 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v213, v26 offset:6144
	ds_store_b8 v213, v28 offset:6656
	ds_store_b8 v213, v30 offset:7168
	ds_store_b8 v213, v0 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[139:142], v32 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v0, s12 :: v_dual_mov_b32 v1, s13
	v_dual_mov_b32 v2, s14 :: v_dual_mov_b32 v3, s15
	v_dual_mov_b32 v4, s16 :: v_dual_mov_b32 v5, s17
	v_dual_mov_b32 v6, s18 :: v_dual_mov_b32 v7, s19
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[38:39], v[66:67], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[221:228], v[40:41], v[66:67], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[229:236], v[38:39], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[237:244], v[40:41], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[38:39], v[206:207], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[40:41], v[206:207], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[38:39], v[208:209], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[40:41], v[208:209], v[0:7] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[139:140], v[66:67], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[141:142], v[66:67], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[139:140], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[198:205], v[141:142], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[139:140], v[206:207], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[141:142], v[206:207], v[0:7] neg_lo:[1,1,0]
	v_mov_b32_e32 v207, v88
	v_wmma_i32_16x16x16_iu4 v[84:91], v[139:140], v[208:209], v[0:7] neg_lo:[1,1,0]
	v_mov_b32_e32 v66, v188
	v_mov_b32_e32 v188, v150
	v_mov_b32_e32 v150, v106
	v_dual_mov_b32 v106, v94 :: v_dual_mov_b32 v67, v99
	v_wmma_i32_16x16x16_iu4 v[92:99], v[141:142], v[208:209], v[0:7] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[0:3], v65 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[16:23], v[121:122], v[107:108], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[221:228], v[121:122], v[214:215], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[119:120], v[107:108], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[119:120], v[109:110], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[121:122], v[109:110], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[133:134], v[115:116], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[221:228], v[133:134], v[100:101], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[131:132], v[115:116], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[131:132], v[117:118], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[133:134], v[117:118], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[129:130], v[111:112], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[221:228], v[129:130], v[123:124], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[119:120], v[214:215], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[127:128], v[111:112], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[127:128], v[113:114], v[24:31] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v65, v17
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v17, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[32:39], v[129:130], v[113:114], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[237:244], v[121:122], v[216:217], v[237:244] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[0:1], v[214:215], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[2:3], v[214:215], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[0:1], v[216:217], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[198:205], v[2:3], v[216:217], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[0:1], v[107:108], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[2:3], v[107:108], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[0:1], v[109:110], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[2:3], v[109:110], v[92:99] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[0:3], v195 offset1:8
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v214, v16
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v16, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[229:236], v[119:120], v[216:217], v[229:236] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[237:244], v[133:134], v[102:103], v[237:244] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[131:132], v[100:101], v[8:15] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v142, v252
	v_cvt_f32_i32_e32 v215, v21
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[229:236], v[131:132], v[102:103], v[229:236] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[237:244], v[129:130], v[125:126], v[237:244] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[127:128], v[123:124], v[8:15] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v216, v22
	v_cvt_f32_i32_e32 v217, v23
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[229:236], v[127:128], v[125:126], v[229:236] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v250
	v_cvt_f32_i32_e32 v130, v241
	v_cvt_f32_i32_e32 v109, v14
	v_cvt_f32_i32_e32 v129, v240
	v_cvt_f32_i32_e32 v119, v233
	v_cvt_f32_i32_e32 v141, v251
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[0:1], v[100:101], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[2:3], v[100:101], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[0:1], v[102:103], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[198:205], v[2:3], v[102:103], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[0:1], v[115:116], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[2:3], v[115:116], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[0:1], v[117:118], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[2:3], v[117:118], v[92:99] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[0:3], v219 offset1:8
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v219, v18
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v18, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v100, v8
	v_cvt_f32_i32_e32 v101, v9
	v_cvt_f32_i32_e32 v102, v10
	v_cvt_f32_i32_e32 v103, v11
	v_cvt_f32_i32_e32 v115, v229
	v_cvt_f32_i32_e32 v116, v230
	v_cvt_f32_i32_e32 v117, v231
	v_cvt_f32_i32_e32 v118, v232
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v108, v13
	v_cvt_f32_i32_e32 v110, v15
	v_cvt_f32_i32_e32 v131, v245
	v_cvt_f32_i32_e32 v122, v236
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v132, v246
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v133, v247
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[2:3], v[123:124], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[0:1], v[111:112], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[2:3], v[111:112], v[76:83] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v112, v222
	v_cvt_f32_i32_e32 v222, v19
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v19, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[84:91], v[0:1], v[113:114], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[2:3], v[113:114], v[92:99] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v114, v224
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v224, v52
	scratch_load_b32 v52, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[0:1], v[123:124], v[40:47] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v113, v223
	v_cvt_f32_i32_e32 v223, v20
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[56:63], v[0:1], v[125:126], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[198:205], v[2:3], v[125:126], v[198:205] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v2, v42
	v_cvt_f32_i32_e32 v1, v43
	v_cvt_f32_i32_e32 v195, v44
	v_cvt_f32_i32_e32 v7, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v123, v237
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v237, v98
	v_cvt_f32_i32_e32 v233, v51
	v_cvt_f32_i32_e32 v51, v89
	v_mov_b32_e32 v89, v210
	v_cvt_f32_i32_e32 v210, v90
	v_mov_b32_e32 v90, v105
	v_mov_b32_e32 v105, v149
	v_mov_b32_e32 v149, v187
	v_mov_b32_e32 v187, v220
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v111, v221
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v221, v45
	v_cvt_f32_i32_e32 v250, v94
	v_cvt_f32_i32_e32 v241, v96
	v_cvt_f32_i32_e32 v240, v201
	v_cvt_f32_i32_e32 v14, v86
	v_mov_b32_e32 v86, v146
	v_cvt_f32_i32_e32 v201, v88
	v_mov_b32_e32 v88, v207
	v_cvt_f32_i32_e32 v207, v91
	v_dual_mov_b32 v91, v154 :: v_dual_mov_b32 v154, v191
	v_cvt_f32_i32_e32 v251, v93
	v_mov_b32_e32 v93, v189
	v_cvt_f32_i32_e32 v13, v87
	v_mov_b32_e32 v87, v143
	v_cvt_f32_i32_e32 v15, v85
	v_mov_b32_e32 v85, v147
	v_cvt_f32_i32_e32 v236, v97
	v_mov_b32_e32 v97, v136
	v_mov_b32_e32 v136, v196
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v107, v12
	v_cvt_f32_i32_e32 v134, v248
	v_cvt_f32_i32_e32 v120, v234
	v_cvt_f32_i32_e32 v8, v225
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v225, v203
	v_mov_b32_e32 v203, v144
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v124, v242
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v242, v200
	v_mov_b32_e32 v200, v138
	v_mov_b32_e32 v138, v172
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v121, v235
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v0, v61
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v139, v249
	v_cvt_f32_i32_e32 v127, v238
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v238, v99
	v_mov_b32_e32 v99, v67
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v5, v58
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v248, v92
	v_mov_b32_e32 v92, v145
	v_cvt_f32_i32_e32 v249, v95
	v_mov_b32_e32 v95, v64
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v6, v57
	v_cvt_f32_i32_e32 v4, v59
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v12, v68
	v_cvt_f32_i32_e32 v11, v69
	v_mov_b32_e32 v220, v161
	v_cvt_f32_i32_e32 v10, v70
	v_cvt_f32_i32_e32 v9, v71
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v209, v226
	v_cvt_f32_i32_e32 v208, v227
	v_cvt_f32_i32_e32 v128, v239
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v3, v41
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v206, v228
	v_mov_b32_e32 v191, v192
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v41, v84
	v_mov_b32_e32 v84, v176
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v125, v243
	v_cvt_f32_i32_e32 v126, v244
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v228, v202
	v_mov_b32_e32 v202, v153
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v255, v46
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v234, v50
	v_cvt_f32_i32_e32 v50, v60
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v226, v204
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v230, v82
	v_cvt_f32_i32_e32 v232, v80
	v_cvt_f32_i32_e32 v235, v49
	v_cvt_f32_i32_e32 v49, v62
	v_cvt_f32_i32_e32 v46, v48
	v_cvt_f32_i32_e32 v48, v63
	v_cvt_f32_i32_e32 v227, v205
	v_cvt_f32_i32_e32 v205, v72
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v204, v73
	v_cvt_f32_i32_e32 v243, v199
	v_cvt_f32_i32_e32 v199, v74
	v_cvt_f32_i32_e32 v239, v198
	v_cvt_f32_i32_e32 v198, v75
	v_cvt_f32_i32_e32 v244, v76
	v_cvt_f32_i32_e32 v247, v77
	v_cvt_f32_i32_e32 v246, v78
	v_cvt_f32_i32_e32 v245, v79
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v229, v81
	v_cvt_f32_i32_e32 v231, v83
	v_dual_mov_b32 v189, v156 :: v_dual_mov_b32 v146, v155
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v17, s40, v17, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v17, 0x80000000, v17, s9
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v16, s40, v16, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s8
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v18, s40, v18, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v18, 0x80000000, v18, s10
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v19, s40, v19, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s40, s40, 1
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s40, s34
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, v52, s26, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s11
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v20, v20, s[36:39], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v16, v16, s[28:31], 0 offen
	buffer_load_u16 v42, v17, s[28:31], 0 offen
	buffer_load_u16 v43, v18, s[28:31], 0 offen
	buffer_load_u16 v44, v19, s[28:31], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v56, off, off offset:648 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v98, v197 :: v_dual_lshlrev_b32 v17, 16, v20
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v252, 16, v16
	v_mov_b32_e32 v94, v106
	v_dual_mov_b32 v96, v135 :: v_dual_mov_b32 v135, v162
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v252, v100
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v56, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v148
	ds_load_b128 v[20:23], v148 offset:16
	v_mov_b32_e32 v106, v150
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v42, 16, v42
	v_mov_b32_e32 v100, v152
	scratch_load_b32 v172, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v24, v44, v24 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v181, v45, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v252, v101
	v_mov_b32_e32 v150, v188
	v_mov_b32_e32 v188, v66
	scratch_load_b32 v101, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v183, v45, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v252, v102
	scratch_load_b32 v102, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v188, v45, v18 :: v_dual_mul_f32 v45, v252, v103
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v103, off, off offset:84
	scratch_load_b32 v147, off, off offset:216
	scratch_load_b32 v152, off, off offset:196
	v_fmac_f32_e32 v187, v45, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v42, v115
	scratch_load_b32 v115, off, off offset:140 ; 4-byte Folded Reload
	v_mul_f32_e32 v8, v252, v8
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v2, v252, v2
	v_mul_f32_e32 v3, v252, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v159, v45, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v42, v116
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v116, off, off offset:68
	scratch_load_b32 v155, off, off offset:76
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v1, v252, v1 :: v_dual_mul_f32 v0, v42, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v116, v24, v16 :: v_dual_fmac_f32 v155, v45, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v42, v117
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v117, off, off offset:64
	scratch_load_b32 v143, off, off offset:72
	v_mul_f32_e32 v24, v111, v252
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v111, off, off offset:228
	scratch_load_b32 v176, off, off offset:20
	scratch_load_b32 v161, off, off offset:24
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v160, v45, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v42, v118
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v118, off, off offset:60
	scratch_load_b32 v156, off, off offset:80
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v156, v45, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v43, v131
	v_mov_b32_e32 v131, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v135, v45, v16 :: v_dual_mul_f32 v16, v44, v25
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v45, v43, v132 :: v_dual_mov_b32 v132, v158
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v16, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v44, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v45, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v43, v133
	v_mov_b32_e32 v133, v163
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v131, v16, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v16, v44, v27 :: v_dual_fmac_f32 v137, v45, v18
	v_dual_mul_f32 v45, v43, v134 :: v_dual_mov_b32 v134, v164
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v16, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v252, v107
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v107, off, off offset:56
	scratch_load_b32 v153, off, off offset:52
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v170, v16, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v252, v108
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v134, v45, v19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v108, off, off offset:36
	scratch_load_b32 v145, off, off offset:48
	v_fmac_f32_e32 v171, v16, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v252, v109
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v109, off, off offset:32
	scratch_load_b32 v158, off, off offset:44
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v179, v16, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v252, v110
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v110, off, off offset:28
	scratch_load_b32 v151, off, off offset:40
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v180, v16, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v16, v42, v119 :: v_dual_mov_b32 v119, v169
	v_dual_mov_b32 v169, v174 :: v_dual_mov_b32 v174, v165
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v146, v16, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v42, v120
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v120, off, off offset:148
	scratch_load_b32 v144, off, off offset:152
	scratch_load_b32 v163, off, off offset:120
	scratch_load_b32 v164, off, off offset:116
	scratch_load_b32 v165, off, off offset:108
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v152, v16, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v42, v121
	scratch_load_b32 v121, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v149, v16, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v42, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v150, v16, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v16, v43, v139 :: v_dual_mov_b32 v139, v173
	v_mov_b32_e32 v173, v185
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v99, v16, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v43, v140
	v_dual_mov_b32 v140, v167 :: v_dual_mov_b32 v167, v186
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v186, off, off offset:124
	scratch_load_b32 v122, off, off offset:104
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v100, v16, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v43, v141
	v_mov_b32_e32 v141, v175
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v175, v178 :: v_dual_fmac_f32 v132, v16, v22
	v_mul_f32_e32 v16, v43, v142
	v_mov_b32_e32 v178, v182
	v_mov_b32_e32 v182, v184
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v16, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v44, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v184, v190 :: v_dual_fmac_f32 v95, v16, v20
	v_mul_f32_e32 v16, v44, v29
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v102, v16, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v44, v30
	v_mov_b32_e32 v142, v177
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v177, off, off offset:180
	scratch_load_b32 v185, off, off offset:136
	scratch_load_b32 v192, off, off offset:132
	scratch_load_b32 v190, off, off offset:128
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v103, v16, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v44, v31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v105, v16, v23
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[16:19], v148 offset:512
	ds_load_b128 v[20:23], v148 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v220, v24, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v252, v112
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v254, v8, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v209, v252
	scratch_load_b32 v209, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v212, v8, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v208, v252
	scratch_load_b32 v208, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(11)
	v_fmac_f32_e32 v163, v24, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v252, v113
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(10)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v164, v24, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v252, v114
	scratch_load_b32 v114, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v165, v24, v19 :: v_dual_mul_f32 v24, v123, v42
	v_dual_fmac_f32 v211, v24, v16 :: v_dual_mul_f32 v24, v42, v127
	scratch_load_b32 v127, off, off offset:100 ; 4-byte Folded Reload
	v_dual_fmac_f32 v115, v24, v17 :: v_dual_mul_f32 v24, v42, v128
	scratch_load_b32 v128, off, off offset:96 ; 4-byte Folded Reload
	v_fmac_f32_e32 v140, v24, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v42, v129
	scratch_load_b32 v129, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v141, v24, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v214, v43
	scratch_load_b32 v214, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v209, v8, v22 :: v_dual_mul_f32 v8, v206, v252
	scratch_load_b32 v206, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v208, v8, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v42, v130
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v130, off, off offset:88
	scratch_load_b32 v123, off, off offset:12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v142, v8, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v124, v42
	scratch_load_b32 v124, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v206, v8, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v125, v42
	scratch_load_b32 v125, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v203, v8, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v126, v42
	scratch_load_b32 v126, off, off         ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v202, v8, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v43, v223
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v120, v8, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v215, v43
	scratch_load_b32 v215, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v194, v8, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v216, v43
	scratch_load_b32 v216, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v193, v8, v22 :: v_dual_mul_f32 v8, v217, v43
	v_fmac_f32_e32 v200, v24, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v43, v65
	scratch_load_b32 v217, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v191, v8, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v44, v36
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v91, v24, v17 :: v_dual_mul_f32 v24, v43, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v8, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v37, v44
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v24, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v192, v8, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v38, v44
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v186, v8, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v39, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v24, v43, v222 :: v_dual_fmac_f32 v185, v8, v23
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v93, v24, v19 :: v_dual_add_nc_u32 v8, s78, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v32, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v8, v8, s26, 1
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v190, v24, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v44, v33
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v8, v8, s[36:39], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v16, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v44, v34
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v16, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v44, v35
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v89, v16, v19 :: v_dual_lshlrev_b32 v8, 16, v8
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v56, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v148
	ds_load_b128 v[20:23], v148 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v8, v252, v40 :: v_dual_fmac_f32 v177, v1, v19
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v1, v42, v7 :: v_dual_fmac_f32 v184, v8, v16
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v178, v2, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v46, v252
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v138, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v42, v49 :: v_dual_fmac_f32 v253, v1, v16
	v_mul_f32_e32 v1, v42, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v151, v0, v22 :: v_dual_mul_f32 v0, v42, v48
	v_fmac_f32_e32 v144, v1, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v42, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v147, v0, v23 :: v_dual_mul_f32 v0, v43, v205
	scratch_load_b32 v205, off, off offset:188 ; 4-byte Folded Reload
	v_fmac_f32_e32 v157, v1, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v42, v4
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v128, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v43, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v158, v1, v19 :: v_dual_mul_f32 v1, v43, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v12, v229, v43 :: v_dual_fmac_f32 v127, v0, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v139, v1, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v43, v11
	v_mul_f32_e32 v11, v42, v228
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v189, v1, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v43, v10
	v_mul_f32_e32 v10, v227, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v130, v1, v18 :: v_dual_mul_f32 v1, v43, v9
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v226, v42
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v129, v1, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v44, v41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v119, v1, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v236, v44
	v_mul_f32_e32 v0, v43, v199
	scratch_load_b32 v199, off, off offset:156 ; 4-byte Folded Reload
	v_mul_f32_e32 v1, v44, v15
	v_dual_mul_f32 v15, v43, v232 :: v_dual_fmac_f32 v126, v0, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v0, v43, v198 :: v_dual_fmac_f32 v109, v1, v17
	v_dual_mul_f32 v1, v44, v14 :: v_dual_mul_f32 v14, v231, v43
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v125, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v201
	scratch_load_b32 v201, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v176, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v51
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v108, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v210
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v182, v3, v17
	scratch_load_b32 v210, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v237, v44
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v107, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v207
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v207, off, off offset:200
	scratch_load_b32 v204, off, off offset:184
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v110, v1, v18 :: v_dual_mul_f32 v1, v44, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v13, v230, v43
	v_mul_f32_e32 v18, v238, v44
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v106, v0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v114, v1, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v252, v195
	v_mul_f32_e32 v19, v44, v241
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v175, v1, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v252, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v174, v1, v21 :: v_dual_mul_f32 v1, v252, v255
	v_fmac_f32_e32 v173, v1, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v252, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v172, v1, v23 :: v_dual_mul_f32 v1, v42, v50
	v_fmac_f32_e32 v154, v1, v20
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[0:3], v148 offset:512
	ds_load_b128 v[4:7], v148 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v84, v8, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v8, v252, v235 :: v_dual_fmac_f32 v161, v11, v4
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v214, v9, v6
	v_fmac_f32_e32 v122, v15, v4
	v_dual_fmac_f32 v86, v12, v5 :: v_dual_fmac_f32 v87, v13, v6
	v_dual_fmac_f32 v101, v19, v4 :: v_dual_fmac_f32 v104, v18, v7
	v_fmac_f32_e32 v169, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v252, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v168, v8, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v252, v233
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v166, v8, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v239, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v85, v8, v0 :: v_dual_mul_f32 v8, v42, v243
	v_dual_fmac_f32 v143, v8, v1 :: v_dual_mul_f32 v8, v42, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v145, v8, v2 :: v_dual_mul_f32 v8, v42, v240
	v_fmac_f32_e32 v153, v8, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v244, v43
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v205, v14, v7
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v199, v17, v6
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v201, v16, v5 :: v_dual_fmac_f32 v210, v10, v7
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v207, v8, v0 :: v_dual_mul_f32 v8, v43, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v124, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v43, v246
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v123, v8, v2 :: v_dual_mul_f32 v8, v43, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v121, v8, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v248, v44
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v204, v8, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v251
	v_mul_f32_e32 v8, v225, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v96, v0, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v44, v250 :: v_dual_mul_f32 v1, v54, v252
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v215, v8, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v97, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v249
	v_dual_mul_f32 v2, v55, v252 :: v_dual_fmac_f32 v217, v1, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v98, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v252
	v_dual_mul_f32 v3, v252, v224 :: v_dual_fmac_f32 v216, v2, v7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v218, v0, v5 :: v_dual_fmac_f32 v167, v3, v4
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v7, off, off offset:844
	scratch_load_b32 v112, off, off offset:836
	scratch_load_b32 v113, off, off offset:840
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v9, 7, v113
	v_and_b32_e32 v8, 63, v111
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v44, 0xbfb8aa3b, v144
	v_dual_mul_f32 v20, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v9
	v_or_b32_e32 v5, 60, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v12, 0xbfb8aa3b, v182 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v172
	v_dual_mul_f32 v42, 0xbfb8aa3b, v175 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v169
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s0, s72, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 58, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s1, s72, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v6, null, s73, 0, s1
	v_add_co_ci_u32_e64 v4, null, s73, 0, s0
	v_add_co_u32 v10, s1, s72, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s72, v8
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[5:6]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 54, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s73, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, s73, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[76:77], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s72, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s6
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 52, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s6, s72, v5
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[10:11]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[10:11]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 50, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s10, s72, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s10
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v10, s10, s72, v10
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[5:6]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, s73, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[5:6]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 46, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s14, s72, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s14
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 44, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s14, s72, v5
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[74:75], v[10:11]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[10:11]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 42, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s18, s72, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 40, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s18
	v_add_co_u32 v10, s18, s72, v10
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[5:6]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, s73, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[5:6]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s22, s72, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v84 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v217
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v33, 0xbfb8aa3b, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[5:6]
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_mul_f32_e32 v30, 0xbfb8aa3b, v173
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, s26
	v_mul_f32_e32 v6, 0xbfb8aa3b, v218
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v41, 0xbfb8aa3b, v158
	v_mul_f32_e32 v51, 0xbfb8aa3b, v253
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v217
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v84
	v_mul_f32_e32 v46, 0xbfb8aa3b, v161
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[74:75], v[3:4]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v16, 0xbfb8aa3b, v216
	v_exp_f32_e32 v14, v14
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v38, 0xbfb8aa3b, v151 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v218
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s26
	v_mul_f32_e32 v45, 0xbfb8aa3b, v130
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[3:4]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v19, 0, 0x42800000, s27
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s27
	v_ldexp_f32 v14, v14, v0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v85
	v_ldexp_f32 v16, v17, v16
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v216
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v20
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 38, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_ldexp_f32 v15, v15, v6
	v_exp_f32_e32 v19, v19
	v_mul_f32_e32 v6, 0xbfb8aa3b, v215
	v_cndmask_b32_e64 v23, 0, 0x42800000, s27
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s27
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s22, s72, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v210
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[10:11]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v19, v18
	v_mul_f32_e32 v19, 0xbfb8aa3b, v214
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_exp_f32_e32 v23, v23
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_add_f32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v63, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v21, 0, 0x42800000, s26
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v215
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s26
	v_exp_f32_e32 v18, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v14, v14, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v214
	v_exp_f32_e32 v19, v19
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v69
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_exp_f32_e32 v21, v21
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[10:11]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v18, v18, v0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v207
	v_dual_mul_f32 v10, 0xbfb8aa3b, v178 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v184
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v19, v19, v6
	v_mul_f32_e32 v6, 0xbfb8aa3b, v86
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v11, 0xbfb8aa3b, v177
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v20, v21, v20
	v_ldexp_f32 v21, v23, v22
	v_mul_f32_e32 v23, 0xbfb8aa3b, v87
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v168
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v35, 0xbfb8aa3b, v157
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v25, 0, 0x42800000, s26
	v_mul_f32_e32 v24, 0xbfb8aa3b, v205
	v_mul_f32_e32 v54, 0xbfb8aa3b, v189
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v86
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v87
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v27, 0, 0x42800000, s27
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v207
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s27
	v_dual_mul_f32 v31, 0xbfb8aa3b, v167 :: v_dual_mul_f32 v34, 0xbfb8aa3b, v166
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v205
	v_exp_f32_e32 v22, v22
	v_dual_mul_f32 v48, 0xbfb8aa3b, v154 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v153
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v23, v23, v6
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v24, v25, v24
	v_dual_mul_f32 v6, 0xbfb8aa3b, v204 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_mul_f32 v52, 0xbfb8aa3b, v145 :: v_dual_add_f32 v23, 1.0, v23
	v_ldexp_f32 v22, v22, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_dual_mul_f32 v198, 0xbfb8aa3b, v143 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v129
	v_ldexp_f32 v25, v27, v26
	v_dual_mul_f32 v26, 0xbfb8aa3b, v201 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v199
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v62, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v125
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v57, 0xbfb8aa3b, v128
	v_cndmask_b32_e64 v60, 0, 0x42800000, s26
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v28, 0xbfb8aa3b, v104
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s26
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v60, 0xbfb8aa3b, v201 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v199
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v28
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, vcc_lo, v84, v14, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v60
	v_cndmask_b32_e64 v28, 0, 0x42800000, s26
	v_exp_f32_e32 v70, v27
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s26
	v_exp_f32_e32 v26, v26
	v_mul_f32_e32 v60, 0xbfb8aa3b, v176
	v_dual_mul_f32 v56, 0xbfb8aa3b, v127 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v121
	v_dual_mul_f32 v58, 0xbfb8aa3b, v122 :: v_dual_mul_f32 v197, 0xbfb8aa3b, v124
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v65, v68, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v69, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v104
	v_ldexp_f32 v66, v70, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v15, v15, v218
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v73, v68, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v28
	v_ldexp_f32 v72, v26, v6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v6, 0xbfb8aa3b, v101
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v74, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v98
	v_dual_mul_f32 v28, 0xbfb8aa3b, v96 :: v_dual_add_f32 v65, 1.0, v65
	v_dual_mul_f32 v196, 0xbfb8aa3b, v123 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v110
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v67, v71, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v16, v16, v217
	v_fma_f32 v77, -v70, v68, 1.0
	v_fma_f32 v78, -v69, v76, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_add_f32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v77, v68
	v_div_scale_f32 v77, s26, v218, v15, v218
	v_fmac_f32_e32 v76, v78, v73
	v_div_scale_f32 v83, null, v18, v18, v85
	v_mul_f32_e32 v78, v77, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v109 :: v_dual_mul_f32 v195, 0xbfb8aa3b, v119
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v71, v75, 1.0
	v_fma_f32 v69, -v69, v76, v74
	v_fma_f32 v74, -v70, v78, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v32, 0xbfb8aa3b, v106 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v79, v75
	v_div_scale_f32 v79, null, v17, v17, v216
	v_div_scale_f32 v80, s27, v217, v16, v217
	v_div_fmas_f32 v69, v69, v73, v76
	v_rcp_f32_e32 v81, v79
	v_rcp_f32_e32 v73, v83
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v82, v80, v75
	v_fmac_f32_e32 v78, v74, v68
	v_div_fixup_f32 v14, v69, v14, v84
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v36, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v71, v82, v80
	v_fma_f32 v69, -v70, v78, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v79, v81, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, s28, v216, v17, v216
	v_dual_fmac_f32 v82, v74, v75 :: v_dual_fmac_f32 v81, v76, v81
	v_fma_f32 v74, -v83, v73, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v69, v68, v78
	v_fma_f32 v69, -v71, v82, v80
	v_mul_f32_e32 v71, v70, v81
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, null, v19, v19, v215
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v76, s26, v85, v18, v85
	v_div_fmas_f32 v69, v69, v75, v82
	v_rcp_f32_e32 v75, v74
	v_fma_f32 v77, -v79, v71, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v78, v76, v73
	v_div_scale_f32 v80, null, v20, v20, v214
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v71, v77, v81
	v_div_fixup_f32 v15, v68, v15, v218
	v_div_fixup_f32 v16, v69, v16, v217
	v_fma_f32 v68, -v83, v78, v76
	v_rcp_f32_e32 v69, v80
	v_fma_f32 v77, -v74, v75, 1.0
	v_fma_f32 v70, -v79, v71, v70
	v_div_scale_f32 v79, null, v21, v21, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v78, v68, v73 :: v_dual_fmac_f32 v75, v77, v75
	v_div_scale_f32 v68, s27, v215, v19, v215
	v_rcp_f32_e32 v77, v79
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v82, -v80, v69, 1.0
	v_div_fmas_f32 v70, v70, v81, v71
	v_fma_f32 v71, -v83, v78, v76
	v_mul_f32_e32 v76, v68, v75
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v69, v82, v69
	v_div_scale_f32 v81, s28, v214, v20, v214
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v79, v77, 1.0
	v_div_fmas_f32 v71, v71, v73, v78
	v_fma_f32 v73, -v74, v76, v68
	v_mul_f32_e32 v78, v81, v69
	v_div_scale_f32 v84, s26, v210, v21, v210
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v77, v82, v77 :: v_dual_fmac_f32 v76, v73, v75
	v_div_scale_f32 v73, null, v23, v23, v86
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v83, null, v22, v22, v207
	v_div_fixup_f32 v17, v70, v17, v216
	v_div_fixup_f32 v18, v71, v18, v85
	v_fma_f32 v70, -v80, v78, v81
	v_mul_f32_e32 v71, v84, v77
	v_fma_f32 v68, -v74, v76, v68
	v_rcp_f32_e32 v74, v73
	v_rcp_f32_e32 v82, v83
	v_fmac_f32_e32 v78, v70, v69
	v_fma_f32 v70, -v79, v71, v84
	s_mov_b32 vcc_lo, s27
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v68, v75, v76
	v_fma_f32 v75, -v80, v78, v81
	v_fmac_f32_e32 v71, v70, v77
	s_mov_b32 vcc_lo, s28
	v_fma_f32 v76, -v73, v74, 1.0
	v_fma_f32 v85, -v83, v82, 1.0
	v_div_fmas_f32 v69, v75, v69, v78
	v_fma_f32 v75, -v79, v71, v84
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v74, v76, v74
	v_div_scale_f32 v76, null, v24, v24, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v71, v75, v77, v71
	v_div_scale_f32 v79, s27, v86, v23, v86
	v_rcp_f32_e32 v75, v76
	v_fmac_f32_e32 v82, v85, v82
	v_div_scale_f32 v85, s29, v207, v22, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v77, v79, v74
	v_div_fixup_f32 v19, v68, v19, v215
	v_div_fixup_f32 v68, v69, v20, v214
	v_mul_f32_e32 v70, v85, v82
	v_div_fixup_f32 v69, v71, v21, v210
	v_div_scale_f32 v71, null, v25, v25, v205
	v_fma_f32 v21, -v73, v77, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v78, -v83, v70, v85
	s_mov_b32 vcc_lo, s29
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp6:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 36, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v21, v74
	v_fmac_f32_e32 v70, v78, v82
	v_fma_f32 v78, -v76, v75, 1.0
	v_div_scale_f32 v21, s26, v87, v24, v87
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v83, v70, v85
	v_fmac_f32_e32 v75, v78, v75
	v_div_scale_f32 v78, null, v72, v72, v204
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s78, 31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v20, v82, v70
	v_rcp_f32_e32 v70, v71
	s_mov_b32 vcc_lo, s27
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s78, s68
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v80, v20, v22, v207
	v_fma_f32 v20, -v73, v77, v79
	v_rcp_f32_e32 v79, v78
	v_mul_f32_e32 v22, v21, v75
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	v_fma_f32 v73, -v71, v70, 1.0
	v_div_fmas_f32 v20, v20, v74, v77
	v_fma_f32 v74, -v76, v22, v21
	v_div_scale_f32 v77, s27, v205, v25, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v73, v70
	v_div_scale_f32 v73, null, v65, v65, v201
	v_fma_f32 v81, -v78, v79, 1.0
	v_div_fixup_f32 v82, v20, v23, v86
	v_fmac_f32_e32 v22, v74, v75
	v_rcp_f32_e32 v20, v73
	v_mul_f32_e32 v23, v77, v70
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, null, v66, v66, v199
	v_div_scale_f32 v74, s28, v204, v72, v204
	v_fma_f32 v21, -v76, v22, v21
	v_div_scale_f32 v86, null, v67, v67, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v81
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v76, -v71, v23, v77
	v_mul_f32_e32 v83, v74, v79
	v_fma_f32 v84, -v73, v20, 1.0
	v_div_fmas_f32 v21, v21, v75, v22
	v_rcp_f32_e32 v75, v86
	v_fmac_f32_e32 v23, v76, v70
	v_fma_f32 v22, -v78, v83, v74
	v_fmac_f32_e32 v20, v84, v20
	v_div_scale_f32 v76, s26, v201, v65, v201
	v_fma_f32 v84, -v81, v85, 1.0
	v_div_fixup_f32 v87, v21, v24, v87
	v_fma_f32 v21, -v71, v23, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v83, v22, v79 :: v_dual_mul_f32 v22, v76, v20
	v_fma_f32 v71, -v86, v75, 1.0
	v_fmac_f32_e32 v85, v84, v85
	v_div_scale_f32 v24, s29, v199, v66, v199
	s_mov_b32 vcc_lo, s27
	v_fmac_f32_e32 v75, v71, v75
	v_div_fmas_f32 v21, v21, v70, v23
	v_fma_f32 v23, -v78, v83, v74
	v_fma_f32 v70, -v73, v22, v76
	v_div_scale_f32 v71, s27, v104, v67, v104
	v_mul_f32_e32 v74, v24, v85
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v22, v70, v20
	v_div_fmas_f32 v23, v23, v79, v83
	v_mul_f32_e32 v77, v71, v75
	v_fma_f32 v70, -v81, v74, v24
	v_div_fixup_f32 v78, v21, v25, v205
	v_fma_f32 v21, -v73, v22, v76
	v_div_fixup_f32 v72, v23, v72, v204
	v_fma_f32 v23, -v86, v77, v71
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v70, v85
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v13, v21, v20, v22
	v_fmac_f32_e32 v77, v23, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v81, v74, v24
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v86, v77, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v20, v85, v74
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v12, v23, v75, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v13, v65, v201
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v182
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v12, v12, v67, v104
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v212, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s26
	v_exp_f32_e32 v13, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v25, v220, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v11, v23, v21
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v177
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v66, v20, v66, v199
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v211, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v15
	v_ldexp_f32 v10, v13, v70
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v67, v67, v184
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, vcc_lo, v184, v67, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v178 :: v_dual_mul_f32 v20, v206, v19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v19, v203, v68 :: v_dual_add_f32 v68, 1.0, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v11, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v74, v13
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v190, v72
	v_mul_f32_e32 v15, v191, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v71, v73, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v208, v17
	v_mul_f32_e32 v17, v200, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, s26, v182, v68, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v73, v11, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v74, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v202, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v79, v77, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v14, v193, v87 :: v_dual_mul_f32 v11, v186, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v71, v79, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v76, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v79, v74, v73 :: v_dual_add_nc_u32 v8, s72, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v78, null, v76, v76, v177
	v_fma_f32 v10, -v69, v75, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v209, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v71, v79, v77
	v_rcp_f32_e32 v72, v78
	v_div_scale_f32 v81, s27, v177, v76, v177
	v_fmac_f32_e32 v75, v10, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v42, v71, v73, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v10, v192, v65 :: v_dual_add_f32 v65, 1.0, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v67, v184
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v70, -v78, v72, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v175
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v65, v65, v178
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v72, v70, v72
	v_mul_f32_e32 v66, v80, v75
	v_rcp_f32_e32 v70, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v194, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v69, v66, v80
	v_fmac_f32_e32 v66, v77, v75
	v_mul_f32_e32 v77, v81, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v74, v70, 1.0
	v_fma_f32 v67, -v69, v66, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v69, -v78, v77, v81
	v_fmac_f32_e32 v70, v79, v70
	v_div_scale_f32 v79, s28, v178, v65, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v67, v75, v66
	v_fmac_f32_e32 v77, v69, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v79, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, s29
	v_ldexp_f32 v69, v73, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v78, v77, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v74, v66, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v12, v185, v12 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v174
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v72, v78, v72, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v68, v182
	v_fmac_f32_e32 v66, v30, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v69, v69, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v183, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v74, v66, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s29
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v173
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v52
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v172
	v_ldexp_f32 v30, v30, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v73, v73
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v74, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fmas_f32 v29, v29, v70, v66
	v_fma_f32 v70, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v29, v29, v65, v178
	v_fmac_f32_e32 v77, v70, v77
	v_div_scale_f32 v70, vcc_lo, v175, v69, v175
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v74, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v73, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v80, v70, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v188, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v66, v66, v174
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v80, v70
	v_div_fixup_f32 v30, v72, v76, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v78, v71
	v_div_scale_f32 v79, null, v73, v73, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v68, v77
	v_div_scale_f32 v68, s26, v174, v66, v174
	v_rcp_f32_e32 v65, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v70, -v75, v80, v70
	v_fma_f32 v72, -v71, v78, 1.0
	v_div_scale_f32 v75, null, v67, v67, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v70, v70, v77, v80
	v_fmac_f32_e32 v78, v72, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v72, -v79, v65, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v187, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v68, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v72, v65
	v_div_scale_f32 v72, s27, v173, v73, v173
	v_fma_f32 v77, -v71, v74, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v181, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v70, v69, v175
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v75, v76, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v80, v72, v65
	v_fmac_f32_e32 v74, v77, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v70, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v79, v80, v72
	v_fma_f32 v68, -v71, v74, v68
	v_div_scale_f32 v71, s28, v172, v67, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v168
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v69, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v40, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v68, v78, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_exp_f32_e32 v34, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v71, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v79, v80, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v75, v74, v71
	v_div_scale_f32 v79, null, v70, v70, v169
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v72, v65, v80
	v_rcp_f32_e32 v69, v79
	v_fmac_f32_e32 v74, v40, v76
	v_div_fixup_f32 v40, v68, v66, v174
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v65, v73, v173
	v_fma_f32 v65, -v75, v74, v71
	s_mov_b32 vcc_lo, s28
	v_div_scale_f32 v71, null, v66, v66, v168
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v79, v69, 1.0
	v_div_fmas_f32 v65, v65, v76, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v72, v69
	v_div_scale_f32 v72, s26, v169, v70, v169
	v_div_fixup_f32 v31, v65, v67, v172
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v68, v68, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v72, v69
	v_fma_f32 v75, -v71, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v67, 0xbfb8aa3b, v167 :: v_dual_add_f32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v79, v74, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v73, v75, v73
	v_div_scale_f32 v75, s27, v168, v66, v168
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v68, v68, v166
	v_fmac_f32_e32 v74, v76, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v76, v75, v73
	s_mov_b32 vcc_lo, s26
	v_rcp_f32_e32 v78, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v180, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v79, v74, v72
	v_fma_f32 v79, -v71, v76, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v67, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v72, v69, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v79, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v77, v78, 1.0
	v_div_fixup_f32 v67, v67, v70, v169
	v_fma_f32 v70, -v71, v76, v75
	v_div_scale_f32 v71, null, v65, v65, v167
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v69, v78
	v_div_scale_f32 v51, s26, v166, v68, v166
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v253
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_mul_f32_e32 v75, v51, v78
	v_div_fmas_f32 v44, v70, v73, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s28
	v_exp_f32_e32 v74, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v71, v69, 1.0
	v_div_fixup_f32 v44, v44, v66, v168
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v144
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v77, v75, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v76, v69
	v_div_scale_f32 v76, s27, v167, v65, v167
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v66, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v74, v72
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v76, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v77, v75, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v71, v66, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v158
	v_ldexp_f32 v70, v73, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v73, null, v77, v77, v253
	v_fmac_f32_e32 v66, v41, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v73
	v_div_fmas_f32 v35, v51, v78, v75
	v_fma_f32 v51, -v71, v66, v76
	v_div_scale_f32 v79, null, v70, v70, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v79
	v_div_fmas_f32 v51, v51, v69, v66
	v_fma_f32 v78, -v73, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, vcc_lo, v253, v77, v253
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v41, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v78, v74
	v_div_fixup_f32 v51, v51, v65, v167
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v79, v76, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v72, 1.0, v41 :: v_dual_mul_f32 v75, v66, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v35, v68, v166
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v35, v254, v51 :: v_dual_fmac_f32 v76, v69, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s26, v144, v70, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v51, -v73, v75, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v179, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v69, v76
	v_div_scale_f32 v78, null, v72, v72, v158
	v_fmac_f32_e32 v75, v51, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v79, v64, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v68, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v163, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v73, v75, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v198
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v71, v76
	v_div_scale_f32 v71, null, v65, v65, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v66, v66, v74, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v79, v64, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v48, v71
	v_fma_f32 v67, -v78, v68, 1.0
	v_div_fixup_f32 v66, v66, v77, v253
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v68, v67, v68
	v_div_scale_f32 v67, s27, v158, v72, v158
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v154
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v69, v76, v64
	v_fma_f32 v75, -v71, v48, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v64, v70, v144
	v_fmac_f32_e32 v48, v75, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v78, v69, v67
	v_div_scale_f32 v76, s26, v157, v65, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v138
	v_ldexp_f32 v38, v43, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v171, v40
	v_dual_mul_f32 v42, v170, v42 :: v_dual_mul_f32 v43, v76, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v75, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v151
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v71, v43, v76
	v_fma_f32 v67, -v78, v69, v67
	v_div_scale_f32 v78, null, v77, v77, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_exp_f32_e32 v37, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v38, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v75, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v165, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v67, v68, v69
	v_fma_f32 v68, -v71, v43, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v37, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v147
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v78, v73, 1.0
	v_div_scale_f32 v70, null, v69, v69, v138
	v_div_fmas_f32 v43, v68, v48, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v75
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v70
	v_fmac_f32_e32 v73, v38, v73
	v_div_scale_f32 v75, vcc_lo, v154, v77, v154
	v_div_fixup_f32 v37, v43, v65, v157
	v_div_scale_f32 v65, null, v71, v71, v151
	v_div_fixup_f32 v38, v67, v72, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v67, v75, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v65
	v_fma_f32 v43, -v70, v68, 1.0
	v_div_scale_f32 v76, s26, v138, v69, v138
	v_fma_f32 v74, -v78, v67, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v164, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v43, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v155, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v64, 1.0, v48 :: v_dual_fmac_f32 v67, v74, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v65, v72, 1.0
	v_mul_f32_e32 v74, v76, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v160, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v64, v64, v147
	v_fmac_f32_e32 v72, v79, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v159, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v78, v67, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v78, v80
	v_fma_f32 v75, -v70, v74, v76
	v_div_scale_f32 v79, s27, v151, v71, v151
	v_div_fmas_f32 v66, v66, v73, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v75, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v75, v79, v72
	v_div_fixup_f32 v66, v66, v77, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v143
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v81, -v80, v78, 1.0
	v_fma_f32 v70, -v70, v74, v76
	v_div_scale_f32 v77, s28, v147, v64, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v81, v78
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v76, -v65, v75, v79
	v_div_fmas_f32 v52, v70, v68, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v77, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v76, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s29
	v_ldexp_f32 v67, v73, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v80, v68, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v145
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v65, v75, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v67, 1.0, v67 :: v_dual_fmac_f32 v68, v47, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v153
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v67, v67, v143
	s_mov_b32 vcc_lo, s27
	v_div_fixup_f32 v52, v52, v69, v138
	v_div_fmas_f32 v65, v65, v72, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v76
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v74
	v_fma_f32 v46, -v80, v68, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v70
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fmas_f32 v46, v46, v78, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v72, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v74, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v161
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v68, v68, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v72, v75
	v_div_scale_f32 v72, vcc_lo, v143, v67, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v65, v71, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v80, v72, v75
	v_rcp_f32_e32 v78, v73
	v_div_scale_f32 v79, null, v77, v77, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v65, -v74, v80, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v149, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v76, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v65, v75
	v_fma_f32 v69, -v73, v78, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, s26, v145, v68, v145
	v_fma_f32 v71, -v74, v80, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v69, v78
	v_div_scale_f32 v74, null, v70, v70, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v71, v71, v75, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v146, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v65, v78
	v_div_fixup_f32 v66, v71, v67, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v73, v72, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v115, v115, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v74, v75, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v156, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v72, v76, v78 :: v_dual_fmac_f32 v75, v71, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v54, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v73, v72, v65
	v_div_scale_f32 v73, s28, v161, v70, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v189
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v46, v64, v147
	v_rcp_f32_e32 v64, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v54, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v79, v64, 1.0
	v_fmac_f32_e32 v64, v69, v64
	v_div_scale_f32 v69, s27, v153, v77, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v69, v64
	v_fma_f32 v67, -v79, v80, v69
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v80, v67, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_fmas_f32 v65, v65, v78, v72
	v_mul_f32_e32 v72, v73, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	v_exp_f32_e32 v53, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v79, v80, v69
	v_fma_f32 v54, -v74, v72, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v71, v71, v139
	s_mov_b32 vcc_lo, s27
	v_fmac_f32_e32 v72, v54, v75
	v_div_fmas_f32 v64, v69, v64, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v53, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v54, v65, v68, v145
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v53, v64, v77, v153
	v_fma_f32 v64, -v74, v72, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v78
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v65, v65, v189
	v_fma_f32 v73, -v79, v67, 1.0
	v_div_fmas_f32 v64, v64, v75, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v141, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v73, v67
	v_div_scale_f32 v73, s26, v139, v71, v139
	v_div_fixup_f32 v45, v64, v70, v161
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v68, v68, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v73, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v69, v72, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v130
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v79, v74, v73
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v72, v75, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, s27, v189, v65, v189
	v_div_scale_f32 v77, null, v68, v68, v129
	v_fmac_f32_e32 v74, v76, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v76, v75, v72 :: v_dual_mul_f32 v45, v142, v45
	v_rcp_f32_e32 v78, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v73, -v79, v74, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v70, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v69, v76, v75
	v_div_fmas_f32 v67, v73, v67, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v79, v72
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v66, -v77, v78, 1.0
	v_div_fixup_f32 v67, v67, v71, v139
	v_div_scale_f32 v70, null, v64, v64, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v69, v76, v75
	v_fmac_f32_e32 v78, v66, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v66, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v128
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v57, s26, v129, v68, v129
	v_div_fmas_f32 v56, v69, v72, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s28
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v57, v78
	v_fma_f32 v75, -v70, v66, 1.0
	v_div_fixup_f32 v56, v56, v65, v189
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v127
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v77, v74, v57
	v_fmac_f32_e32 v66, v75, v66
	v_div_scale_f32 v75, s27, v130, v64, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	v_ldexp_f32 v50, v73, v71
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v65, v78
	v_mul_f32_e32 v65, v75, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v76, 1.0, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v77, v74, v57
	v_fma_f32 v50, -v70, v65, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v72, v69
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v76, v76, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v50, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v77, null, v69, v69, v127
	v_div_fmas_f32 v49, v57, v78, v74
	v_fma_f32 v57, -v70, v65, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_rcp_f32_e32 v75, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v72, v73, 1.0
	v_div_fmas_f32 v57, v57, v66, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, vcc_lo, v128, v76, v128
	v_fmac_f32_e32 v73, v78, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v57, v57, v64, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v150, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v65, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v52, v152, v52 :: v_dual_add_f32 v71, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v77, v75, 1.0
	v_div_fixup_f32 v50, v49, v68, v129
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v137, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v72, v74, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v66, v75
	v_div_scale_f32 v66, s26, v127, v69, v127
	v_div_scale_f32 v78, null, v71, v71, v126
	v_fmac_f32_e32 v74, v57, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v68, v66, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v64, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v135, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v72, v74, v65
	v_fma_f32 v70, -v77, v68, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s27, v126, v71, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v65, v65, v73, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v197
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v70, v75
	v_fma_f32 v67, -v78, v79, 1.0
	v_div_scale_f32 v70, null, v64, v64, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v77, v68, v66
	v_fmac_f32_e32 v79, v67, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v67, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_fixup_f32 v65, v65, v76, v128
	v_div_fmas_f32 v66, v66, v75, v68
	v_mul_f32_e32 v68, v72, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v196
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v99, v99, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v70, v67, 1.0
	v_div_fixup_f32 v66, v66, v69, v127
	v_fma_f32 v69, -v78, v68, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v75, v67
	v_div_scale_f32 v75, s26, v125, v64, v125
	v_fmac_f32_e32 v68, v69, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	v_ldexp_f32 v69, v74, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v59, v75, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v123
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v78, v68, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v70, v59, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v77, v77
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v121
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v69, v69, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v78, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v80
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v100, v100, v66
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v76, v77, v76
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v70, -v70, v59, v75
	v_div_fmas_f32 v68, v72, v79, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v58, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v80, v78, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v122
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v76, null, v72, v72, v123
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v73, v78
	v_div_scale_f32 v73, s27, v124, v69, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v75, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v76
	v_div_fmas_f32 v58, v70, v67, v59
	v_div_scale_f32 v67, null, v77, v77, v121
	v_mul_f32_e32 v70, v73, v78
	v_div_fixup_f32 v59, v68, v71, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v58, v58, v64, v125
	v_rcp_f32_e32 v68, v67
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v71, -v80, v70, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v75, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v76, v79, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v59, v132, v59 :: v_dual_fmac_f32 v70, v71, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v64, 1.0, v64 :: v_dual_fmac_f32 v79, v74, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, s26, v123, v72, v123
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v67, v68, 1.0
	v_fma_f32 v73, -v80, v70, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v75, null, v64, v64, v122
	v_mul_f32_e32 v80, v71, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v68, v74, v68
	v_div_scale_f32 v74, s28, v121, v77, v121
	v_div_fmas_f32 v70, v73, v78, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v195
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v81, v75
	v_fma_f32 v65, -v76, v80, v71
	v_mul_f32_e32 v66, v74, v68
	v_div_fixup_f32 v69, v70, v69, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v65, v79
	v_fma_f32 v65, -v67, v66, v74
	v_div_scale_f32 v0, s27, v122, v64, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v119
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v75, v81, 1.0
	v_fma_f32 v71, -v76, v80, v71
	v_fmac_f32_e32 v66, v65, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v78
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v109
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v70, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v67, -v67, v66, v74
	v_div_fmas_f32 v71, v71, v79, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	v_exp_f32_e32 v63, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v0, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v71, v71, v72, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v75, v76, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v114
	v_ldexp_f32 v63, v63, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v67, v68, v66
	v_fmac_f32_e32 v76, v74, v81
	v_div_scale_f32 v67, null, v65, v65, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v75, v76, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v67
	v_div_scale_f32 v75, null, v63, v63, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fixup_f32 v66, v66, v77, v121
	v_div_fmas_f32 v0, v0, v81, v76
	v_rcp_f32_e32 v76, v75
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v61, v73
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v110
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v67, v68, 1.0
	v_div_fixup_f32 v0, v0, v64, v122
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v93, v93, v66 :: v_dual_add_f32 v72, 1.0, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v73, v68
	v_div_scale_f32 v74, vcc_lo, v119, v65, v119
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v75, v76, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v140, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v72, v72, v114
	v_mul_f32_e32 v77, v74, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, s26, v109, v63, v109
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v120, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v0, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v64, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v67, v77, v74
	v_mul_f32_e32 v70, v78, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v92, v92, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v66, v68
	v_fma_f32 v66, -v75, v70, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v91, v91, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v73, v0, 1.0
	v_div_scale_f32 v69, s27, v114, v72, v114
	v_fma_f32 v67, -v67, v77, v74
	v_fmac_f32_e32 v70, v66, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v0, v71, v0
	v_div_scale_f32 v71, null, v64, v64, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v67, v68, v77
	v_fma_f32 v68, -v75, v70, v78
	s_mov_b32 vcc_lo, s26
	v_mul_f32_e32 v60, v69, v0
	v_rcp_f32_e32 v66, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v68, v76, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v73, v60, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s28
	v_exp_f32_e32 v70, v79
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v28
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v75, v0
	v_fma_f32 v55, -v71, v66, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v108
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, s26, v110, v64, v110
	v_fmac_f32_e32 v66, v55, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v70, v70, v74
	v_exp_f32_e32 v74, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v73, v60, v69
	v_mul_f32_e32 v73, v36, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v107
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v69, v0, v60
	v_fma_f32 v60, -v71, v73, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v77
	v_ldexp_f32 v74, v74, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v70, v70, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v73, v60, v66
	v_div_fixup_f32 v60, v67, v65, v119
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v72, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v69, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v67, v67, v108
	v_fma_f32 v36, -v71, v73, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v55
	v_fma_f32 v72, -v76, v65, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v106
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v36, v36, v66, v73
	v_fmac_f32_e32 v65, v72, v65
	v_div_scale_f32 v73, vcc_lo, v176, v70, v176
	v_div_scale_f32 v72, null, v32, v32, v107
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v55, v74, 1.0
	v_div_fixup_f32 v36, v36, v64, v110
	v_mul_f32_e32 v75, v73, v65
	v_div_scale_f32 v77, s26, v108, v67, v108
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v74, v66, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v72
	v_div_fixup_f32 v66, v68, v63, v109
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v131, v36
	v_mul_f32_e32 v63, v118, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v76, v75, v73
	v_mul_f32_e32 v36, v77, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v50, v134, v50 :: v_dual_mul_f32 v83, v116, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v66, v117, v66 :: v_dual_fmac_f32 v75, v0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v55, v36, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v68, -v72, v71, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v64, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v0, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v68, v71
	v_div_scale_f32 v68, s27, v107, v32, v107
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v60, 1.0, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v76, v75, v73
	v_fma_f32 v55, -v55, v36, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v0, v68, v71
	v_div_fmas_f32 v64, v64, v65, v75
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v65, -v72, v0, v68
	v_div_fmas_f32 v28, v55, v74, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, s28
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v65, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s28
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v96
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v136, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v55
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v72, v0, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, s26
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v60, v60, v106
	v_div_fmas_f32 v0, v68, v71, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v55, v36
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v101
	v_exp_f32_e32 v55, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v27
	v_div_fixup_f32 v0, v0, v32, v107
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v69
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s26
	v_ldexp_f32 v6, v6, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v28, v67, v108
	v_div_scale_f32 v65, null, v32, v32, v96
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v55, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v27, v26, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, vcc_lo, v106, v60, v106
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v36, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v55, 1.0, v55 :: v_dual_fmac_f32 v26, v71, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v6, v6, v97
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v68, null, v55, v55, v98
	v_rcp_f32_e32 v73, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v77, null, v36, v36, v101
	v_mul_f32_e32 v72, v67, v26
	v_rcp_f32_e32 v75, v68
	v_div_fixup_f32 v64, v64, v70, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v79, v77
	v_fma_f32 v74, -v65, v69, 1.0
	v_fma_f32 v76, -v27, v72, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v133, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v71, v73, 1.0
.Ltmp7:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v70, 1, v113
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v74, v69
	v_div_scale_f32 v74, s26, v96, v32, v96
	v_fmac_f32_e32 v72, v76, v26
	v_fma_f32 v76, -v68, v75, 1.0
	v_fmac_f32_e32 v73, v78, v73
	v_div_scale_f32 v78, s27, v97, v6, v97
	v_fma_f32 v81, -v77, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v80, v74, v69 :: v_dual_fmac_f32 v75, v76, v75
	v_div_scale_f32 v76, s28, v98, v55, v98
	v_fma_f32 v27, -v27, v72, v67
	v_dual_mul_f32 v82, v78, v73 :: v_dual_fmac_f32 v79, v81, v79
	v_div_scale_f32 v81, s29, v101, v36, v101
	v_fma_f32 v67, -v65, v80, v74
	v_mul_f32_e32 v84, v76, v75
	v_div_fmas_f32 v26, v27, v26, v72
	v_fma_f32 v27, -v71, v82, v78
	v_mul_f32_e32 v72, v81, v79
	v_fmac_f32_e32 v80, v67, v69
	v_fma_f32 v67, -v68, v84, v76
	v_div_fixup_f32 v26, v26, v60, v106
	v_fmac_f32_e32 v82, v27, v73
	v_fma_f32 v27, -v77, v72, v81
	v_fma_f32 v60, -v65, v80, v74
	v_fmac_f32_e32 v84, v67, v75
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v65, -v71, v82, v78
	v_fmac_f32_e32 v72, v27, v79
	v_div_fmas_f32 v60, v60, v69, v80
	v_fma_f32 v27, -v68, v84, v76
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v78, v105, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v77, v72, v81
	v_div_fmas_f32 v65, v65, v73, v82
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v103, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v75, v84
	s_mov_b32 vcc_lo, s29
	v_div_fixup_f32 v6, v65, v6, v97
	v_div_fmas_f32 v67, v67, v79, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v76, v102, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v27, v55, v98
	v_div_fixup_f32 v27, v60, v32, v96
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v94, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v67, v36, v101
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v30|, |v42|, |v40|
	v_max3_f32 v28, |v35|, |v24|, |v22|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v90, v27
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v51|, |v44|, |v41|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v88, v0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v39|, |v33|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v71, v95, v64 :: v_dual_mul_f32 v60, v89, v26
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v34|, |v31|, |v25|
	v_max_f32_e64 v32, |v48|, |v43|
	v_max3_f32 v36, |v38|, |v62|, |v52|
	v_max3_f32 v64, |v115|, |v54|, |v53|
	v_max3_f32 v67, |v45|, |v20|, |v19|
	v_max3_f32 v0, v0, |v29|, v6
	v_max3_f32 v6, v27, v28, |v23|
	v_max3_f32 v27, |v47|, |v46|, |v21|
	v_max3_f32 v28, v32, |v37|, v36
	v_max3_f32 v32, v64, v67, |v18|
	v_max_f32_e64 v36, |v57|, |v56|
	v_max3_f32 v64, |v50|, |v99|, |v100|
	v_max3_f32 v67, |v91|, |v92|, |v93|
	v_max3_f32 v69, |v61|, |v16|, |v14|
	v_max3_f32 v0, v0, v26, v6
	s_mov_b32 s26, 0x76543210
	v_max3_f32 v26, v28, v27, v32
	v_max3_f32 v6, |v59|, |v58|, |v17|
	v_max3_f32 v27, v36, |v49|, v64
	v_max3_f32 v28, v67, v69, |v15|
	v_max_f32_e64 v32, |v83|, |v66|
	v_max3_f32 v36, |v63|, |v71|, |v76|
	v_max3_f32 v64, |v68|, |v65|, |v60|
	v_max3_f32 v67, |v55|, |v10|, |v11|
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v69, v0, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, v27, v6, v28
	v_max3_f32 v32, v32, |v86|, v36
	v_max3_f32 v28, |v77|, |v78|, |v13|
	v_max3_f32 v36, v64, v67, |v12|
	v_max_f32_e32 v64, v69, v69
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v67, v26, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v27, s26, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v79, 8, v111
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v28, v32, v28, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v72, v0, v64 :: v_dual_max_f32 v67, v67, v67
	v_dual_max_f32 v69, v69, v69 :: v_dual_and_b32 v0, 3, v111
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v64, 4, v111
	v_lshlrev_b32_e32 v32, 4, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v26, v67
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v36, v0, 9, 0
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v27, v69 :: v_dual_lshlrev_b32 v67, 5, v0
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v26, v28, s26, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v27, 0x60, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v36, v64, 2, v36
	v_and_or_b32 v69, 0x680, v32, v67
	v_lshrrev_b32_e32 v80, 3, v113
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v26, v26
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v67, v67, v27
	v_lshl_add_u32 v36, v79, 4, v36
	v_xor_b32_e32 v69, v69, v27
	v_lshl_add_u32 v81, v64, 6, 0
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v28, v26
.Ltmp28:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v28, 34, v9
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v26, v36, v70, v67
.Ltmp30:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s27, s72, v5
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v36, v81, v80, v69
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp32:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v69, s26, s72, v28
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v26, v[72:75]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[72:75], v36
.Ltmp34:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s27
	v_add_co_ci_u32_e64 v70, null, s73, 0, s26
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 32, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[5:6]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 30, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[69:70]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s31, s72, v3
	v_add_co_ci_u32_e64 v4, null, s73, 0, s31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v5, s31, s72, v5
	v_add_co_ci_u32_e64 v6, null, s73, 0, s31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[3:4]
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v26, v72
.Ltmp36:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[3:4]
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v3, v73
.Ltmp38:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[5:6]
.Ltmp39:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v74
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v72, v72
	v_max_f32_e32 v28, v73, v73
	v_max_f32_e32 v26, v26, v26
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v36, v75, v75
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v6, v26 :: v_dual_max_f32 v5, v5, v5
	v_max_f32_e32 v26, v28, v3
	v_max_f32_e32 v28, v74, v74
.Ltmp45:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 28, v9
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[69:70]
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v67, v75, v75
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v69, v6
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v28, v5
.Ltmp49:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s36, s72, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s36
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v70, v26
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v36, v67
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v36, v5
.Ltmp53:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[3:4]
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v67, v28
.Ltmp55:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[3:4]
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v69, v69
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v70, v70
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v6, v3 :: v_dual_add_nc_u32 v74, 0, v113
	v_max_f32_e32 v6, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v4, v26, v4
	v_max_f32_e32 v26, v67, v67
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v36, v3 :: v_dual_max_f32 v5, v5, v6
	v_mov_b32_e32 v67, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v28, v26
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v26, v5
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v28, v6
.Ltmp64:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v69, 26, v9
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v67, v67, v67
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v28, v28 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v72, 24, v9
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v36 :: v_dual_max_f32 v26, v26, v26
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v36, 4, v0
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v67
	v_max_f32_e32 v28, v28, v28
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v67, 1, v27
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v26 :: v_dual_lshlrev_b32 v0, 3, v79
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v26, 5, v64
	v_add_nc_u32_e32 v64, 0, v36
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v28, v74, v67, v0
.Ltmp78:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v69, s38, s72, v69
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v64, v26, v0
.Ltmp80:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v67, 22, v9
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v28, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v0
.Ltmp82:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v70, null, s73, 0, s38
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 20, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v72, s39, s72, v72
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v73, null, s73, 0, s39
	v_add_co_u32 v74, s39, s72, v67
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[69:70]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v75, null, s73, 0, s39
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[69:70]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v69, s44, s72, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v26, 18, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v70, null, s73, 0, s44
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[74:75], v[72:73]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v0, v3, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 16, v9
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[72:73]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v72, s44, s72, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v73, null, s73, 0, s44
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[69:70]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[69:70]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v69, s48, s72, v3
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v3, 14, v9
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[72:73]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[72:73]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v70, null, s73, 0, s48
	v_add_co_u32 v72, s48, s72, v3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v3, v28
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v26, 12, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[74:75]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[74:75]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v73, null, s73, 0, s48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add_co_u32 v74, s48, s72, v26
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v26, 10, v9
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v5, v5, v5
	v_fma_f32 v64, -v28, v3, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v75, null, s73, 0, s48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[69:70]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[69:70]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v69, s54, s72, v26
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v26, 8, v9
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	v_fmac_f32_e32 v3, v64, v3
	v_div_scale_f32 v64, vcc_lo, v0, 0x40e00000, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[72:73]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[72:73]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v70, null, s73, 0, s54
	v_add_co_u32 v72, s54, s72, v26
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v67, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v73, null, s73, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v26, v64, v3
	v_max_f32_e32 v4, v4, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[74:75]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[74:75]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[69:70]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v74, v67
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[69:70]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[72:73]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v69, -v28, v26, v64
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[72:73]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v72, 0x2b8cbccc, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v70, 6, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v26, v69, v3
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v80.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v69, 0x2b8cbccc, v6
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v72
	v_fma_f32 v4, -v67, v74, 1.0
	v_fma_f32 v28, -v28, v26, v64
	v_div_scale_f32 v64, s60, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v73, v6
	v_fmac_f32_e32 v74, v4, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v26, v28, v3, v26
	v_div_scale_f32 v75, null, 0x40e00000, 0x40e00000, v69
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s72, v70
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v28, v64, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v0, v26, 0x40e00000, v0
	v_rcp_f32_e32 v79, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v6, v73, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v26, -v67, v28, v64
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v73, v70, v73
	v_div_scale_f32 v70, s61, v72, 0x40e00000, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v26, v74
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v26.l, v0.h
	v_mov_b16_e32 v26.h, v80.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v81, v70, v73
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v82, -v75, v79, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v26
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v26, -v6, v81, v70
	v_fma_f32 v3, -v67, v28, v64
	v_fmac_f32_e32 v79, v82, v79
	v_div_scale_f32 v64, s62, v69, 0x40e00000, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v26, v73
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v0, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v3, v3, v74, v28
	v_mul_f32_e32 v28, v64, v79
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 4, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v4, -v6, v81, v70
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v67, 0xffff0000, v26
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v3, v3, 0x40e00000, v5
	v_fma_f32 v5, -v75, v28, v64
	s_mov_b32 vcc_lo, s61
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v74, null, v67, v67, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v28, v5, v79
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s72, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v0, v74
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v73, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v75, v28, v64
	s_mov_b32 vcc_lo, s62
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v80.l, v3.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v82, null, v67, v67, v29
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v28, v64, v79, v28
	v_div_fixup_f32 v4, v4, 0x40e00000, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v72, null, v67, v67, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v74, v0, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v69, v28, 0x40e00000, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v79, vcc_lo, v39, v67, v39
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v70, 1, v80
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v0, v64, v0
	v_rcp_f32_e32 v75, v72
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v80.l, v69.h
	v_mov_b16_e32 v28.h, v80.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v67, v67, v30
	v_mul_f32_e32 v81, v79, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v73, 1, v80
	v_add3_u32 v3, v3, v70, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v74, v81, v79
	v_fma_f32 v70, -v72, v75, 1.0
	v_div_scale_f32 v87, s60, v33, v67, v33
	v_div_scale_f32 v94, null, v67, v67, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v81, v80, v0
	v_rcp_f32_e32 v80, v85
	v_fmac_f32_e32 v75, v70, v75
	v_fma_f32 v89, -v82, v84, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v28.l, v4.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v74, v81, v79
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v70, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v87, v75
	v_fmac_f32_e32 v84, v89, v84
	v_div_scale_f32 v89, s61, v29, v67, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v85, v80, 1.0
	v_fma_f32 v79, -v72, v88, v87
	v_div_fmas_f32 v0, v74, v0, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v74, v89, v84
	v_div_scale_f32 v81, s62, v30, v67, v30
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v90, null, v67, v67, v40
	v_fmac_f32_e32 v88, v79, v75
	v_rcp_f32_e32 v79, v94
	v_div_fixup_f32 v39, v0, v67, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v95, v90
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v0, -v72, v88, v87
	v_fma_f32 v72, -v82, v74, v89
	v_mul_f32_e32 v87, v81, v80
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_and_b32_e32 v28, 1, v28
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v75, v88
	v_fma_f32 v96, -v94, v79, 1.0
	v_fmac_f32_e32 v74, v72, v84
	v_fma_f32 v72, -v85, v87, v81
	v_fma_f32 v88, -v90, v95, 1.0
	v_div_scale_f32 v75, s60, v42, v67, v42
	v_fmac_f32_e32 v79, v96, v79
	v_div_fixup_f32 v33, v0, v67, v33
	v_fma_f32 v0, -v82, v74, v89
	v_fmac_f32_e32 v87, v72, v80
	v_fmac_f32_e32 v95, v88, v95
	v_div_scale_f32 v88, null, v67, v67, v34
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v72, v75, v79
	v_div_scale_f32 v82, s63, v40, v67, v40
	v_div_fmas_f32 v0, v0, v84, v74
	v_fma_f32 v74, -v85, v87, v81
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v89, null, v67, v67, v31
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v81, -v94, v72, v75
	v_mul_f32_e32 v85, v82, v95
	v_div_fmas_f32 v74, v74, v80, v87
	v_rcp_f32_e32 v80, v89
	v_div_fixup_f32 v29, v0, v67, v29
	v_fmac_f32_e32 v72, v81, v79
	v_fma_f32 v81, -v90, v85, v82
	v_fma_f32 v87, -v88, v84, 1.0
	v_div_fixup_f32 v30, v74, v67, v30
	v_div_scale_f32 v74, s61, v34, v67, v34
	v_fma_f32 v0, -v94, v72, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v85, v81, v95 :: v_dual_fmac_f32 v84, v87, v84
	v_fma_f32 v75, -v89, v80, 1.0
	v_div_scale_f32 v81, null, v67, v67, v25
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v87, null, v67, v67, v51
	v_div_fmas_f32 v0, v0, v79, v72
	v_fma_f32 v72, -v90, v85, v82
	v_mul_f32_e32 v79, v74, v84
	v_fmac_f32_e32 v80, v75, v80
	v_rcp_f32_e32 v75, v81
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v82, s60, v31, v67, v31
	v_div_fmas_f32 v72, v72, v95, v85
	v_fma_f32 v85, -v88, v79, v74
	v_rcp_f32_e32 v95, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v82, v80
	v_div_fixup_f32 v42, v0, v67, v42
	v_div_fixup_f32 v40, v72, v67, v40
	v_fma_f32 v94, -v81, v75, 1.0
	v_fmac_f32_e32 v79, v85, v84
	v_div_scale_f32 v85, null, v67, v67, v44
	v_fma_f32 v0, -v89, v90, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v75, v94, v75
	v_div_scale_f32 v72, s62, v25, v67, v25
	v_fma_f32 v94, -v87, v95, 1.0
	v_fma_f32 v74, -v88, v79, v74
	v_rcp_f32_e32 v88, v85
	v_fmac_f32_e32 v90, v0, v80
	v_mul_f32_e32 v0, v72, v75
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s63, v51, v67, v51
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v96, null, v67, v67, v41
	v_div_fmas_f32 v74, v74, v84, v79
	v_fma_f32 v79, -v89, v90, v82
	v_fma_f32 v82, -v81, v0, v72
	v_mul_f32_e32 v84, v94, v95
	v_fma_f32 v89, -v85, v88, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v34, v74, v67, v34
	v_div_fmas_f32 v79, v79, v80, v90
	v_fmac_f32_e32 v0, v82, v75
	v_rcp_f32_e32 v80, v96
	v_fma_f32 v82, -v87, v84, v94
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, s60, v44, v67, v44
	v_fma_f32 v72, -v81, v0, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v82, v95
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v74, v89, v88
	v_div_fixup_f32 v31, v79, v67, v31
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v96, v80, 1.0
	v_div_scale_f32 v81, null, v67, v67, v35
	v_div_fmas_f32 v0, v72, v75, v0
	v_fma_f32 v72, -v87, v84, v94
	v_fma_f32 v75, -v85, v74, v89
	v_div_scale_f32 v87, null, v67, v67, v24
	v_fmac_f32_e32 v80, v79, v80
	v_rcp_f32_e32 v79, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v75, v88
	v_rcp_f32_e32 v75, v87
	v_div_scale_f32 v82, s61, v41, v67, v41
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v25, v0, v67, v25
	v_div_fmas_f32 v72, v72, v95, v84
	v_mul_f32_e32 v84, v82, v80
	v_fma_f32 v0, -v85, v74, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v81, v79, 1.0
	v_div_scale_f32 v85, s62, v35, v67, v35
	v_fma_f32 v89, -v87, v75, 1.0
	v_div_fixup_f32 v51, v72, v67, v51
	v_fma_f32 v72, -v96, v84, v82
	v_fmac_f32_e32 v79, v90, v79
	v_div_scale_f32 v90, null, v67, v67, v22
	v_fmac_f32_e32 v75, v89, v75
	v_div_scale_f32 v89, null, v67, v67, v23
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v84, v72, v80
	v_div_fmas_f32 v0, v0, v88, v74
	v_mul_f32_e32 v72, v85, v79
	v_rcp_f32_e32 v74, v90
	v_div_scale_f32 v88, s60, v24, v67, v24
	v_rcp_f32_e32 v95, v89
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v28, v4, v28, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v44, v0, v67, v44
	v_fma_f32 v0, -v96, v84, v82
	v_fma_f32 v82, -v81, v72, v85
	v_mul_f32_e32 v94, v88, v75
	s_mov_b32 vcc_lo, s61
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v69, v73, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v73, 0xffff0000, v28
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v96, -v90, v74, 1.0
	v_div_fmas_f32 v0, v0, v80, v84
	v_fmac_f32_e32 v72, v82, v79
	v_fma_f32 v80, -v87, v94, v88
	v_fma_f32 v84, -v89, v95, 1.0
	v_fmac_f32_e32 v74, v96, v74
	v_div_scale_f32 v82, s61, v22, v67, v22
	v_div_fixup_f32 v41, v0, v67, v41
	v_fma_f32 v0, -v81, v72, v85
	v_fmac_f32_e32 v94, v80, v75
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, null, v73, v73, v48
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v80, v82, v74
	v_div_scale_f32 v81, s63, v23, v67, v23
	v_div_fmas_f32 v0, v0, v79, v72
	v_fma_f32 v72, -v87, v94, v88
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v88, null, v73, v73, v43
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v79, -v90, v80, v82
	v_mul_f32_e32 v87, v81, v95
	v_div_fmas_f32 v72, v72, v75, v94
	v_rcp_f32_e32 v75, v88
	v_div_fixup_f32 v35, v0, v67, v35
	v_fmac_f32_e32 v80, v79, v74
	v_fma_f32 v79, -v89, v87, v81
	v_fma_f32 v94, -v84, v85, 1.0
	v_div_fixup_f32 v24, v72, v67, v24
	v_div_scale_f32 v72, s60, v48, v73, v48
	v_fma_f32 v0, -v90, v80, v82
	v_fmac_f32_e32 v87, v79, v95
	v_fmac_f32_e32 v85, v94, v85
	v_fma_f32 v79, -v88, v75, 1.0
	v_div_scale_f32 v82, null, v73, v73, v37
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v96, null, v73, v73, v18
	v_div_fmas_f32 v0, v0, v74, v80
	v_fma_f32 v74, -v89, v87, v81
	v_dual_mul_f32 v80, v72, v85 :: v_dual_fmac_f32 v75, v79, v75
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v81, s61, v43, v73, v43
	v_div_scale_f32 v89, null, v73, v73, v38
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v90, v81, v75
	v_div_fmas_f32 v74, v74, v95, v87
	v_fma_f32 v87, -v84, v80, v72
	v_rcp_f32_e32 v95, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v82, v79, 1.0
	v_div_fixup_f32 v22, v0, v67, v22
	v_fma_f32 v0, -v88, v90, v81
	v_fmac_f32_e32 v80, v87, v85
	v_div_fixup_f32 v23, v74, v67, v23
	v_fmac_f32_e32 v79, v94, v79
	v_div_scale_f32 v67, s62, v37, v73, v37
	v_div_scale_f32 v74, null, v73, v73, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v89, v95, 1.0
	v_fma_f32 v72, -v84, v80, v72
	v_fmac_f32_e32 v90, v0, v75
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v0, v67, v79
	v_rcp_f32_e32 v84, v74
	v_fmac_f32_e32 v95, v87, v95
	v_div_scale_f32 v87, s63, v38, v73, v38
	v_div_fmas_f32 v72, v72, v85, v80
	v_fma_f32 v80, -v88, v90, v81
	v_div_scale_f32 v94, null, v73, v73, v52
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v81, -v82, v0, v67
	v_mul_f32_e32 v85, v87, v95
	v_div_fmas_f32 v75, v80, v75, v90
	v_rcp_f32_e32 v80, v94
	v_fma_f32 v88, -v74, v84, 1.0
	v_fmac_f32_e32 v0, v81, v79
	v_fma_f32 v81, -v89, v85, v87
	v_div_fixup_f32 v43, v75, v73, v43
	v_div_fixup_f32 v48, v72, v73, v48
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s60, v62, v73, v62
	v_fmac_f32_e32 v85, v81, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v94, v80, 1.0
	v_div_scale_f32 v81, null, v73, v73, v47
	v_fma_f32 v67, -v82, v0, v67
	v_mul_f32_e32 v72, v88, v84
	v_fmac_f32_e32 v80, v75, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v75, v81
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v82, s61, v52, v73, v52
	v_div_fmas_f32 v0, v67, v79, v0
	v_fma_f32 v67, -v89, v85, v87
	v_fma_f32 v79, -v74, v72, v88
	v_div_scale_f32 v87, null, v73, v73, v46
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v81, v75, 1.0
	v_fmac_f32_e32 v72, v79, v84
	v_rcp_f32_e32 v79, v87
	v_div_fmas_f32 v67, v67, v95, v85
	v_mul_f32_e32 v85, v82, v80
	v_div_fixup_f32 v37, v0, v73, v37
	v_fma_f32 v0, -v74, v72, v88
	v_fmac_f32_e32 v75, v89, v75
	v_div_scale_f32 v89, null, v73, v73, v21
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v38, v67, v73, v38
	v_fma_f32 v67, -v94, v85, v82
	v_div_scale_f32 v74, s62, v47, v73, v47
	v_fma_f32 v88, -v87, v79, 1.0
	v_div_fmas_f32 v0, v0, v84, v72
	v_rcp_f32_e32 v72, v89
	v_fmac_f32_e32 v85, v67, v80
	v_mul_f32_e32 v67, v74, v75
	v_fmac_f32_e32 v79, v88, v79
	v_div_scale_f32 v84, s60, v46, v73, v46
	v_div_scale_f32 v88, null, v73, v73, v115
	v_div_fixup_f32 v62, v0, v73, v62
	v_fma_f32 v0, -v94, v85, v82
	v_fma_f32 v82, -v81, v67, v74
	v_mul_f32_e32 v90, v84, v79
	v_rcp_f32_e32 v94, v88
	v_fma_f32 v95, -v89, v72, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v67, v82, v75
	v_div_fmas_f32 v0, v0, v80, v85
	v_fma_f32 v80, -v87, v90, v84
	v_fmac_f32_e32 v72, v95, v72
	v_div_scale_f32 v82, s61, v21, v73, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v52, v0, v73, v52
	v_fma_f32 v85, -v88, v94, 1.0
	v_fma_f32 v0, -v81, v67, v74
	v_fmac_f32_e32 v90, v80, v79
	v_mul_f32_e32 v74, v82, v72
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v94, v85, v94
	v_div_scale_f32 v80, s63, v115, v73, v115
	v_div_scale_f32 v81, null, v73, v73, v54
	v_div_fmas_f32 v0, v0, v75, v67
	v_fma_f32 v67, -v87, v90, v84
	v_fma_f32 v75, -v89, v74, v82
	v_div_scale_f32 v87, null, v73, v73, v53
	v_rcp_f32_e32 v84, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v85, v80, v94 :: v_dual_fmac_f32 v74, v75, v72
	v_rcp_f32_e32 v75, v87
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v47, v0, v73, v47
	v_div_fmas_f32 v67, v67, v79, v90
	v_fma_f32 v79, -v88, v85, v80
	v_fma_f32 v0, -v89, v74, v82
	v_div_scale_f32 v82, null, v73, v73, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v81, v84, 1.0
	v_fmac_f32_e32 v85, v79, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v87, v75, 1.0
	v_div_fixup_f32 v46, v67, v73, v46
	v_div_scale_f32 v67, s60, v54, v73, v54
	v_dual_fmac_f32 v84, v90, v84 :: v_dual_fmac_f32 v75, v79, v75
	v_rcp_f32_e32 v79, v82
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v69, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v72, v74
	v_fma_f32 v72, -v88, v85, v80
	v_mul_f32_e32 v74, v67, v84
	v_div_scale_f32 v80, s61, v53, v73, v53
	v_div_scale_f32 v88, null, v73, v73, v20
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v89, v80, v75
	v_div_fmas_f32 v72, v72, v94, v85
	v_fma_f32 v85, -v81, v74, v67
	v_fma_f32 v90, -v82, v79, 1.0
	v_rcp_f32_e32 v94, v88
	v_div_fixup_f32 v21, v0, v73, v21
	v_fma_f32 v0, -v87, v89, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v74, v85, v84 :: v_dual_fmac_f32 v79, v90, v79
	v_div_scale_f32 v90, null, v73, v73, v19
	v_div_scale_f32 v85, s62, v45, v73, v45
	v_fma_f32 v67, -v81, v74, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v88, v94, 1.0
	v_fmac_f32_e32 v89, v0, v75
	v_rcp_f32_e32 v81, v90
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v0, v85, v79
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, s63, v20, v73, v20
	v_div_fmas_f32 v67, v67, v84, v74
	v_fma_f32 v74, -v87, v89, v80
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v80, -v82, v0, v85
	v_mul_f32_e32 v84, v95, v94
	v_fma_f32 v87, -v90, v81, 1.0
	v_div_fmas_f32 v74, v74, v75, v89
	v_rcp_f32_e32 v75, v96
	v_div_fixup_f32 v54, v67, v73, v54
	s_mov_b32 vcc_lo, s62
	v_dual_fmac_f32 v81, v87, v81 :: v_dual_fmac_f32 v0, v80, v79
	v_fma_f32 v80, -v88, v84, v95
	v_div_scale_f32 v87, s60, v19, v73, v19
	v_div_fixup_f32 v53, v74, v73, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v82, v0, v85
	v_fmac_f32_e32 v84, v80, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v74, v87, v81
	v_fma_f32 v80, -v96, v75, 1.0
	v_div_scale_f32 v82, null, v70, v70, v57
	v_div_fmas_f32 v0, v67, v79, v0
	v_fma_f32 v67, -v88, v84, v95
	v_fma_f32 v79, -v90, v74, v87
	v_fmac_f32_e32 v75, v80, v75
	v_rcp_f32_e32 v80, v82
	v_div_scale_f32 v88, null, v70, v70, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v79, v81
	v_div_scale_f32 v85, s61, v18, v73, v18
	v_rcp_f32_e32 v79, v88
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v45, v0, v73, v45
	v_div_fmas_f32 v67, v67, v94, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v82, v80, 1.0
	v_mul_f32_e32 v84, v85, v75
	v_fma_f32 v0, -v90, v74, v87
	v_div_scale_f32 v90, null, v70, v70, v49
	v_fmac_f32_e32 v80, v89, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v88, v79, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v20, v67, v73, v20
	v_fma_f32 v67, -v96, v84, v85
	v_div_scale_f32 v87, s62, v57, v70, v57
	v_div_fmas_f32 v0, v0, v81, v74
	v_fmac_f32_e32 v79, v89, v79
	v_rcp_f32_e32 v74, v90
	v_div_scale_f32 v89, null, v70, v70, v50
	v_fmac_f32_e32 v84, v67, v75
	v_mul_f32_e32 v67, v87, v80
	v_div_scale_f32 v81, s60, v56, v70, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v95, v89
	v_div_fixup_f32 v19, v0, v73, v19
	v_fma_f32 v0, -v96, v84, v85
	v_fma_f32 v85, -v82, v67, v87
	v_mul_f32_e32 v94, v81, v79
	v_fma_f32 v96, -v90, v74, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v72, v72, v73, v115
	v_div_fmas_f32 v0, v0, v75, v84
	v_fmac_f32_e32 v67, v85, v80
	v_fma_f32 v75, -v88, v94, v81
	v_fmac_f32_e32 v74, v96, v74
	v_div_scale_f32 v84, s61, v49, v70, v49
	v_fma_f32 v85, -v89, v95, 1.0
	v_div_fixup_f32 v18, v0, v73, v18
	v_fma_f32 v0, -v82, v67, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v94, v75, v79 :: v_dual_mul_f32 v73, v84, v74
	v_fmac_f32_e32 v95, v85, v95
	v_div_scale_f32 v75, s63, v50, v70, v50
	v_div_scale_f32 v82, null, v70, v70, v99
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v85, v75, v95
	v_div_fmas_f32 v0, v0, v80, v67
	v_fma_f32 v67, -v88, v94, v81
	v_fma_f32 v80, -v90, v73, v84
	v_rcp_f32_e32 v81, v82
	v_div_scale_f32 v87, null, v70, v70, v100
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v73, v80, v74
	v_fma_f32 v80, -v89, v85, v75
	v_div_fmas_f32 v67, v67, v79, v94
	v_rcp_f32_e32 v79, v87
	v_div_fixup_f32 v57, v0, v70, v57
	v_fma_f32 v0, -v90, v73, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v82, v81, 1.0
	v_fmac_f32_e32 v85, v80, v95
	v_div_scale_f32 v84, null, v70, v70, v59
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v56, v67, v70, v56
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v67, s60, v99, v70, v99
	v_div_fmas_f32 v0, v0, v74, v73
	v_fma_f32 v73, -v89, v85, v75
	v_rcp_f32_e32 v75, v84
	v_fma_f32 v80, -v87, v79, 1.0
	v_mul_f32_e32 v74, v67, v81
	v_div_scale_f32 v88, null, v70, v70, v58
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, s61, v100, v70, v100
	v_div_fmas_f32 v73, v73, v95, v85
	v_fma_f32 v85, -v82, v74, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v84, v75, 1.0
	v_rcp_f32_e32 v94, v88
	v_mul_f32_e32 v89, v80, v79
	v_div_fixup_f32 v49, v0, v70, v49
	v_dual_fmac_f32 v74, v85, v81 :: v_dual_fmac_f32 v75, v90, v75
	v_div_scale_f32 v90, null, v70, v70, v17
	v_div_fixup_f32 v50, v73, v70, v50
	v_fma_f32 v0, -v87, v89, v80
	v_div_scale_f32 v85, s62, v59, v70, v59
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v73, -v88, v94, 1.0
	v_fma_f32 v67, -v82, v74, v67
	v_rcp_f32_e32 v82, v90
	v_fmac_f32_e32 v89, v0, v79
	v_mul_f32_e32 v0, v85, v75
	v_fmac_f32_e32 v94, v73, v94
	v_div_scale_f32 v95, s63, v58, v70, v58
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v73, -v87, v89, v80
	v_div_fmas_f32 v67, v67, v81, v74
	v_fma_f32 v74, -v84, v0, v85
	v_mul_f32_e32 v80, v95, v94
	v_fma_f32 v81, -v90, v82, 1.0
	v_div_scale_f32 v87, null, v70, v70, v91
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v0, v74, v75
	v_div_fmas_f32 v79, v73, v79, v89
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v96, -v88, v80, v95
	v_fmac_f32_e32 v82, v81, v82
	v_div_scale_f32 v81, s60, v17, v70, v17
	v_div_fixup_f32 v73, v67, v70, v99
	v_div_fixup_f32 v74, v79, v70, v100
	v_fma_f32 v67, -v84, v0, v85
	v_fmac_f32_e32 v80, v96, v94
	v_mul_f32_e32 v79, v81, v82
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v84, -v87, v89, 1.0
	v_div_scale_f32 v85, null, v70, v70, v92
	v_div_fmas_f32 v0, v67, v75, v0
	v_fma_f32 v67, -v88, v80, v95
	v_fma_f32 v75, -v90, v79, v81
	v_div_scale_f32 v95, null, v70, v70, v93
	v_fmac_f32_e32 v89, v84, v89
	v_rcp_f32_e32 v84, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v75, v82
	v_rcp_f32_e32 v75, v95
	v_div_scale_f32 v88, s61, v91, v70, v91
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v0, v0, v70, v59
	v_div_fmas_f32 v67, v67, v94, v80
	v_mul_f32_e32 v80, v88, v89
	v_fma_f32 v59, -v90, v79, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v85, v84, 1.0
	v_div_scale_f32 v81, s62, v92, v70, v92
	v_fma_f32 v90, -v95, v75, 1.0
	v_div_fixup_f32 v58, v67, v70, v58
	v_fma_f32 v67, -v87, v80, v88
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v70, v70, v61
	v_fmac_f32_e32 v75, v90, v75
	v_div_scale_f32 v90, null, v70, v70, v16
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v80, v67, v89
	v_div_fmas_f32 v59, v59, v82, v79
	v_mul_f32_e32 v67, v81, v84
	v_rcp_f32_e32 v79, v94
	v_rcp_f32_e32 v96, v90
	v_div_scale_f32 v82, s60, v93, v70, v93
	v_div_fixup_f32 v17, v59, v70, v17
	v_fma_f32 v59, -v87, v80, v88
	v_fma_f32 v87, -v85, v67, v81
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v88, v82, v75
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v94, v79, 1.0
	v_div_fmas_f32 v59, v59, v89, v80
	v_fmac_f32_e32 v67, v87, v84
	v_fma_f32 v89, -v90, v96, 1.0
	v_fma_f32 v80, -v95, v88, v82
	v_fmac_f32_e32 v79, v97, v79
	v_div_scale_f32 v87, s61, v61, v70, v61
	v_fma_f32 v81, -v85, v67, v81
	v_fmac_f32_e32 v96, v89, v96
	v_div_scale_f32 v89, null, v70, v70, v14
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v88, v80, v75
	v_mul_f32_e32 v80, v87, v79
	v_div_scale_f32 v85, s63, v16, v70, v16
	v_div_fmas_f32 v67, v81, v84, v67
	v_rcp_f32_e32 v84, v89
	v_div_fixup_f32 v59, v59, v70, v91
	v_fma_f32 v81, -v95, v88, v82
	v_fma_f32 v82, -v94, v80, v87
	v_mul_f32_e32 v91, v85, v96
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v95, null, v70, v70, v15
	v_div_fmas_f32 v75, v81, v75, v88
	v_fmac_f32_e32 v80, v82, v79
	v_fma_f32 v82, -v90, v91, v85
	v_fma_f32 v88, -v89, v84, 1.0
	v_rcp_f32_e32 v81, v95
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v87, -v94, v80, v87
	v_fmac_f32_e32 v91, v82, v96
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v82, s60, v14, v70, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v79, v87, v79, v80
	v_fma_f32 v80, -v90, v91, v85
	v_div_scale_f32 v87, null, v69, v69, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v85, v82, v84
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v88, -v95, v81, 1.0
	v_div_fmas_f32 v80, v80, v96, v91
	v_rcp_f32_e32 v90, v87
	v_fma_f32 v91, -v89, v85, v82
	v_div_fixup_f32 v75, v75, v70, v93
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, s61, v15, v70, v15
	v_div_scale_f32 v93, null, v69, v69, v66
	v_fmac_f32_e32 v85, v91, v84
	v_div_fixup_f32 v67, v67, v70, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v92, v88, v81
	v_div_fixup_f32 v16, v80, v70, v16
	v_rcp_f32_e32 v80, v93
	v_fma_f32 v91, -v87, v90, 1.0
	v_fma_f32 v82, -v89, v85, v82
	v_div_scale_f32 v89, null, v69, v69, v86
	v_div_fixup_f32 v61, v79, v70, v61
	v_fma_f32 v79, -v95, v92, v88
	v_fmac_f32_e32 v90, v91, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v91, v89
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v94, -v93, v80, 1.0
	v_fmac_f32_e32 v92, v79, v81
	v_div_scale_f32 v79, s62, v83, v69, v83
	v_div_fmas_f32 v82, v82, v84, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v94, v80
	v_fma_f32 v84, -v95, v92, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v85, v79, v90
	v_fma_f32 v94, -v89, v91, 1.0
	v_div_scale_f32 v96, null, v69, v69, v63
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v95, -v87, v85, v79
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s63, v86, v69, v86
	v_div_scale_f32 v88, s60, v66, v69, v66
	v_rcp_f32_e32 v98, v96
	v_div_fmas_f32 v81, v84, v81, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v95, v90 :: v_dual_mul_f32 v92, v94, v91
	v_mul_f32_e32 v97, v88, v80
	v_div_fixup_f32 v14, v82, v70, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v15, v81, v70, v15
	v_fma_f32 v70, -v87, v85, v79
	v_fma_f32 v79, -v89, v92, v94
	v_div_scale_f32 v82, null, v69, v69, v71
	v_fma_f32 v84, -v93, v97, v88
	v_fma_f32 v81, -v96, v98, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v92, v79, v91
	v_rcp_f32_e32 v79, v82
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v97, v84, v80 :: v_dual_fmac_f32 v98, v81, v98
	v_div_scale_f32 v81, s61, v63, v69, v63
	v_div_fmas_f32 v70, v70, v90, v85
	v_fma_f32 v84, -v93, v97, v88
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v85, v81, v98
	v_fma_f32 v88, -v82, v79, 1.0
	v_div_scale_f32 v87, null, v69, v69, v76
	v_div_fmas_f32 v80, v84, v80, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v96, v85, v81
	v_fmac_f32_e32 v79, v88, v79
	v_div_scale_f32 v88, s60, v71, v69, v71
	v_fma_f32 v84, -v89, v92, v94
	v_div_fixup_f32 v70, v70, v69, v83
	v_fmac_f32_e32 v85, v90, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v88, v79
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v89, v87
	v_div_fmas_f32 v84, v84, v91, v92
	v_fma_f32 v81, -v96, v85, v81
	v_fma_f32 v90, -v82, v83, v88
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v66, v80, v69, v66
	v_div_fixup_f32 v80, v84, v69, v86
	v_div_scale_f32 v86, null, v69, v69, v77
	v_div_fmas_f32 v81, v81, v98, v85
	v_fmac_f32_e32 v83, v90, v79
	v_fma_f32 v84, -v87, v89, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v91, v86
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v63, v81, v69, v63
	v_fma_f32 v81, -v82, v83, v88
	v_fmac_f32_e32 v89, v84, v89
	v_div_scale_f32 v84, s62, v76, v69, v76
	v_div_scale_f32 v90, null, v69, v69, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v79, v81, v79, v83
	v_div_scale_f32 v81, null, v69, v69, v13
	v_mul_f32_e32 v85, v84, v89
	v_fma_f32 v88, -v86, v91, 1.0
	v_rcp_f32_e32 v92, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v83, v81
	v_div_fixup_f32 v71, v79, v69, v71
	v_fma_f32 v82, -v87, v85, v84
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, null, v69, v69, v68
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v85, v82, v89
	v_div_scale_f32 v82, s60, v77, v69, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v79, -v90, v92, 1.0
	v_fma_f32 v93, -v81, v83, 1.0
	v_rcp_f32_e32 v94, v88
	v_fma_f32 v84, -v87, v85, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v87, v82, v91 :: v_dual_fmac_f32 v92, v79, v92
	v_div_scale_f32 v79, s61, v78, v69, v78
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v69, v69, v65
	v_div_fmas_f32 v84, v84, v89, v85
	v_fma_f32 v85, -v86, v87, v82
	v_mul_f32_e32 v89, v79, v92
	v_div_scale_f32 v95, s62, v13, v69, v13
	v_fma_f32 v96, -v88, v94, 1.0
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v87, v85, v91
	v_fma_f32 v85, -v90, v89, v79
	v_mul_f32_e32 v98, v95, v83
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s63, v68, v69, v68
	v_div_fixup_f32 v76, v84, v69, v76
	v_fma_f32 v82, -v86, v87, v82
	v_fmac_f32_e32 v89, v85, v92
	v_fma_f32 v84, -v81, v98, v95
	v_mul_f32_e32 v85, v96, v94
	v_fma_f32 v86, -v93, v97, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v79, -v90, v89, v79
	v_fmac_f32_e32 v98, v84, v83
	v_fma_f32 v84, -v88, v85, v96
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s60, v65, v69, v65
	v_div_fmas_f32 v82, v82, v91, v87
	v_div_scale_f32 v87, null, v69, v69, v60
	v_fma_f32 v81, -v81, v98, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v85, v84, v94 :: v_dual_mul_f32 v84, v86, v97
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v77, v82, v69, v77
	v_div_fmas_f32 v79, v79, v92, v89
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v89, v87
	v_div_fmas_f32 v81, v81, v83, v98
	v_fma_f32 v83, -v88, v85, v96
	v_fma_f32 v88, -v93, v84, v86
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v78, v79, v69, v78
	v_div_fixup_f32 v13, v81, v69, v13
	v_div_fmas_f32 v83, v83, v94, v85
	v_fmac_f32_e32 v84, v88, v97
	v_div_scale_f32 v81, null, v69, v69, v55
	v_fma_f32 v82, -v87, v89, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v68, v83, v69, v68
	v_fma_f32 v79, -v93, v84, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v81
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v89, v82, v89
	v_div_scale_f32 v82, null, v69, v69, v10
	v_div_fmas_f32 v79, v79, v97, v84
	v_div_scale_f32 v84, null, v69, v69, v11
	v_div_scale_f32 v91, null, v69, v69, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v86, v82
	v_rcp_f32_e32 v88, v84
	v_div_scale_f32 v85, vcc_lo, v60, v69, v60
	v_div_fixup_f32 v65, v79, v69, v65
	v_fma_f32 v79, -v81, v83, 1.0
	v_rcp_f32_e32 v93, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v85, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v79, v83
	v_div_scale_f32 v79, s60, v55, v69, v55
	v_fma_f32 v92, -v82, v86, 1.0
	v_fma_f32 v95, -v84, v88, 1.0
	v_fma_f32 v94, -v87, v90, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v96, v79, v83
	v_fma_f32 v97, -v91, v93, 1.0
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s61, v10, v69, v10
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s62, v11, v69, v11
	v_fmac_f32_e32 v90, v94, v89
	v_fma_f32 v94, -v81, v96, v79
	v_fmac_f32_e32 v93, v97, v93
	v_div_scale_f32 v97, s63, v12, v69, v12
	v_dual_mul_f32 v98, v92, v86 :: v_dual_mul_f32 v99, v95, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v96, v94, v83
	v_mul_f32_e32 v100, v97, v93
	v_fma_f32 v85, -v87, v90, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v82, v98, v92
	v_fma_f32 v94, -v84, v99, v95
	v_fma_f32 v79, -v81, v96, v79
	v_fma_f32 v81, -v91, v100, v97
	v_div_fmas_f32 v85, v85, v89, v90
	v_dual_fmac_f32 v98, v87, v86 :: v_dual_fmac_f32 v99, v94, v88
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v100, v81, v93
	v_div_fmas_f32 v79, v79, v83, v96
	v_fma_f32 v82, -v82, v98, v92
	v_fma_f32 v81, -v84, v99, v95
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v83, -v91, v100, v97
	s_mov_b32 s60, 0xc1000000
	v_div_fmas_f32 v82, v82, v86, v98
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v88, v99
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v93, v100
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v66, v66
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v53, v53, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v60, v85, v69, v60
	v_div_fixup_f32 v55, v79, v69, v55
	v_div_fixup_f32 v10, v82, v69, v10
	v_div_fixup_f32 v11, v81, v69, v11
	v_div_fixup_f32 v12, v83, v69, v12
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v69, v72
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v0, v0, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_cvt_i32_f32_e32 v85, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v99, v66
	v_and_b32_e32 v66, 15, v85
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v85, 16, v111
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v70, v70
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_cvt_i32_f32_e32 v79, v41
	v_cvt_i32_f32_e32 v83, v69
	v_cvt_i32_f32_e32 v96, v14
	v_cvt_i32_f32_e32 v97, v15
	v_and_b32_e32 v14, 15, v33
	v_and_b32_e32 v41, 15, v34
	v_and_b32_e32 v69, 15, v35
	v_and_b32_e32 v15, 15, v43
	v_and_b32_e32 v43, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v111
	v_and_b32_e32 v33, 0x2f0, v32
	v_lshlrev_b32_e32 v34, 8, v85
	v_and_b32_e32 v35, 64, v111
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v72, v73
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_cvt_i32_f32_e32 v106, v60
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v60, 3, v113
	v_and_or_b32 v0, 0xe000, v0, v34
	v_xor_b32_e32 v33, v33, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v73, v74
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v55, v55
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v89, v57
	v_cvt_i32_f32_e32 v98, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v60, v33
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v101, v71
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v74, v75
	v_rndne_f32_e32 v75, v80
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v65, v65
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v104, v13
	v_cvt_i32_f32_e32 v108, v10
	v_cvt_i32_f32_e32 v109, v11
	v_cvt_i32_f32_e32 v110, v12
	v_and_b32_e32 v10, 15, v39
	v_and_b32_e32 v11, 15, v48
	v_and_b32_e32 v12, 15, v89
	v_and_b32_e32 v13, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v33, 0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v77, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v80, v22
	v_cvt_i32_f32_e32 v86, v45
	v_cvt_i32_f32_e32 v88, v18
	v_cvt_i32_f32_e32 v92, v73
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v107, v55
	v_and_b32_e32 v18, 15, v29
	v_and_b32_e32 v22, 15, v30
	v_and_b32_e32 v29, 15, v42
	v_and_b32_e32 v45, 15, v31
	v_and_b32_e32 v30, 15, v62
	v_and_b32_e32 v31, 15, v72
	v_and_b32_e32 v32, 15, v101
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v78, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_cvt_i32_f32_e32 v90, v49
	v_cvt_i32_f32_e32 v91, v50
	v_cvt_i32_f32_e32 v95, v16
	v_and_b32_e32 v49, 15, v25
	v_and_b32_e32 v53, 15, v51
	v_and_b32_e32 v81, 15, v23
	v_and_b32_e32 v23, 15, v38
	v_and_b32_e32 v38, 15, v52
	v_and_b32_e32 v50, 15, v21
	v_and_b32_e32 v16, 15, v56
	v_and_b32_e32 v51, 15, v17
	v_and_b32_e32 v17, 15, v99
	v_and_b32_e32 v52, 15, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_store_b128 v33, v[10:13]
	ds_store_b128 v33, v[29:32] offset:256
	v_xad_u32 v10, v0, 16, 0
	v_lshlrev_b32_e32 v11, 6, v111
	v_lshlrev_b32_e32 v12, 5, v27
	v_cndmask_b32_e64 v13, 0x2010, 0, s2
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_cvt_i32_f32_e32 v82, v37
	v_and_b32_e32 v37, 15, v40
	v_and_b32_e32 v70, 15, v86
	v_and_b32_e32 v39, 15, v92
	v_and_b32_e32 v71, 15, v61
	v_and_b32_e32 v40, 15, v76
	v_and_b32_e32 v72, 15, v107
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v78, v78, s60, 0x40e00000
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v84, v54
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v100, v75
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v105, v65
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v33, v[49:52] offset:2048
	ds_store_b128 v33, v[69:72] offset:2304
	ds_store_b128 v10, v[14:17]
	ds_store_b128 v10, v[37:40] offset:256
	v_lshlrev_b32_e32 v15, 2, v85
	v_and_or_b32 v11, 0x300, v11, v12
	v_xor_b32_e32 v12, v13, v36
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v87, v19
	v_cvt_i32_f32_e32 v102, v77
	v_cvt_i32_f32_e32 v94, v74
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v93, v58
	v_cvt_i32_f32_e32 v103, v78
	v_and_b32_e32 v57, 15, v44
	v_and_b32_e32 v19, 15, v82
	v_and_b32_e32 v54, 15, v83
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v74, 15, v20
	v_and_b32_e32 v20, 15, v90
	v_and_b32_e32 v55, 15, v59
	v_and_b32_e32 v59, 15, v67
	v_and_b32_e32 v21, 15, v100
	v_and_b32_e32 v56, 15, v68
	v_and_b32_e32 v60, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v14, v0, 32, 0
	v_or3_b32 v27, v12, v11, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v65, 15, v79
	v_and_b32_e32 v73, 15, v24
	v_and_b32_e32 v77, 15, v80
	v_and_b32_e32 v42, 15, v47
	v_and_b32_e32 v78, 15, v87
	v_and_b32_e32 v75, 15, v95
	v_and_b32_e32 v79, 15, v96
	v_and_b32_e32 v44, 15, v102
	v_and_b32_e32 v76, 15, v108
	v_and_b32_e32 v80, 15, v109
	v_and_b32_e32 v24, 15, v91
	v_and_b32_e32 v67, 15, v94
	v_and_b32_e32 v25, 15, v63
	v_and_b32_e32 v68, 15, v106
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v0, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v46, 15, v46
	v_and_b32_e32 v82, 15, v88
	v_and_b32_e32 v47, 15, v93
	v_and_b32_e32 v83, 15, v97
	v_and_b32_e32 v48, 15, v103
	v_and_b32_e32 v84, 15, v110
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v10, v[53:56] offset:2048
	ds_store_b128 v10, v[73:76] offset:2304
	ds_store_b128 v14, v[18:21]
	ds_store_b128 v14, v[41:44] offset:256
	ds_store_b128 v14, v[57:60] offset:2048
	ds_store_b128 v14, v[77:80] offset:2304
	ds_store_b128 v0, v[22:25]
	ds_store_b128 v0, v[45:48] offset:256
	v_add_nc_u32_e32 v22, 0, v27
	ds_store_b128 v0, v[65:68] offset:2048
	ds_store_b128 v0, v[81:84] offset:2304
	v_xad_u32 v0, 0x4020, v27, 0
	v_xad_u32 v57, 0x8040, v27, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v22
	ds_load_b128 v[14:17], v22 offset:128
	ds_load_b128 v[18:21], v22 offset:4096
	ds_load_b128 v[22:25], v22 offset:4224
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[33:36], v0 offset:128
	ds_load_b128 v[37:40], v0 offset:4096
	ds_load_b128 v[41:44], v0 offset:4224
	v_xad_u32 v0, 0xc060, v27, 0
	ds_load_b128 v[45:48], v57
	ds_load_b128 v[49:52], v57 offset:128
	ds_load_b128 v[53:56], v57 offset:4096
	ds_load_b128 v[57:60], v57 offset:4224
	ds_load_b128 v[65:68], v0 offset:4096
	ds_load_b128 v[69:72], v0
	ds_load_b128 v[73:76], v0 offset:128
	ds_load_b128 v[77:80], v0 offset:4224
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v64, 2, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[5:6]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s79, 7, v7
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v28.h
	v_mov_b16_e32 v3.l, v26.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v61, s2, s72, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v62, null, s73, 0, s2
	v_add_co_u32 v63, s2, s72, v9
	v_add_co_ci_u32_e64 v64, null, s73, 0, s2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[5:6]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s72, v9
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v27, v18, 4, v10
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[63:64]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[63:64]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v64, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 2, v5
	v_add_nc_u32_e32 v10, 4, v5
	v_add_nc_u32_e32 v11, 6, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v46, v54, 4, v46
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v54, v66, 4, v70
	v_lshl_or_b32 v70, v20, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s73, s68, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 8, v5
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v47, v55, 4, v47
	v_lshl_or_b32 v55, v67, 4, v71
	v_lshl_or_b32 v71, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 10, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[61:62]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[61:62]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v61, v37, 4, v29
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v53, v65, 4, v69
	v_lshl_or_b32 v62, v22, 4, v14
	v_lshl_or_b32 v63, v41, 4, v33
	v_lshl_or_b32 v49, v57, 4, v49
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v57, v77, 4, v73
	v_lshl_or_b32 v65, v38, 4, v30
	v_lshl_or_b32 v66, v23, 4, v15
	v_lshl_or_b32 v69, v42, 4, v34
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v78, 4, v74
	v_lshl_or_b32 v73, v39, 4, v31
	v_lshl_or_b32 v67, v24, 4, v16
	v_lshl_or_b32 v43, v43, 4, v35
	v_lshl_or_b32 v74, v40, 4, v32
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v68, 4, v72
	v_lshl_or_b32 v68, v25, 4, v17
	v_lshl_or_b32 v44, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 12, v5
	v_add_nc_u32_e32 v15, 14, v5
	v_add_nc_u32_e32 v16, 16, v5
	v_add_nc_u32_e32 v17, 18, v5
	v_add_nc_u32_e32 v18, 20, v5
	v_add_nc_u32_e32 v19, 22, v5
	v_add_nc_u32_e32 v20, 24, v5
	v_add_nc_u32_e32 v21, 26, v5
	v_add_nc_u32_e32 v22, 28, v5
	v_add_nc_u32_e32 v23, 30, v5
	v_add_nc_u32_e32 v24, 32, v5
	v_add_nc_u32_e32 v25, 34, v5
	v_add_nc_u32_e32 v29, 36, v5
	v_add_nc_u32_e32 v31, 38, v5
	v_add_nc_u32_e32 v32, 40, v5
	v_add_nc_u32_e32 v33, 42, v5
	v_add_nc_u32_e32 v34, 44, v5
	v_add_nc_u32_e32 v35, 46, v5
	v_add_nc_u32_e32 v36, 48, v5
	v_add_nc_u32_e32 v37, 50, v5
	v_add_nc_u32_e32 v38, 52, v5
	v_add_nc_u32_e32 v39, 54, v5
	v_add_nc_u32_e32 v40, 56, v5
	v_add_nc_u32_e32 v41, 58, v5
	v_add_nc_u32_e32 v42, 60, v5
	v_add_nc_u32_e32 v72, 62, v5
	v_mad_u64_u32 v[5:6], null, v5, s73, v[0:1]
	v_mad_u64_u32 v[6:7], null, v9, s73, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s73, v[0:1]
	v_mad_u64_u32 v[10:11], null, v11, s73, v[0:1]
	v_mad_u64_u32 v[11:12], null, v12, s73, v[0:1]
	v_mad_u64_u32 v[12:13], null, v13, s73, v[0:1]
	v_mad_u64_u32 v[13:14], null, v14, s73, v[0:1]
	v_mad_u64_u32 v[29:30], null, v29, s73, v[0:1]
	v_mad_u64_u32 v[14:15], null, v15, s73, v[0:1]
	v_mad_u64_u32 v[30:31], null, v31, s73, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s73, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s73, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s73, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s73, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s73, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s73, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s73, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s73, v[0:1]
	v_mad_u64_u32 v[19:20], null, v20, s73, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s73, v[0:1]
	v_mad_u64_u32 v[20:21], null, v21, s73, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s73, v[0:1]
	v_mad_u64_u32 v[21:22], null, v22, s73, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s73, v[0:1]
	v_mad_u64_u32 v[22:23], null, v23, s73, v[0:1]
	v_mad_u64_u32 v[38:39], null, v39, s73, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[23:24], null, v24, s73, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s73, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[24:25], null, v25, s73, v[0:1]
	v_mad_u64_u32 v[40:41], null, v41, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v7, 0x80000000, v5, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[41:42], null, v42, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v25, 0x80000000, v6, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[5:6], null, v72, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	v_cndmask_b32_e32 v6, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v27, v7, s[68:71], 0 offen
	buffer_store_b8 v61, v25, s[68:71], 0 offen
	v_cndmask_b32_e32 v7, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v59, v79, 4, v75
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v45, v0, s[68:71], 0 offen
	buffer_store_b8 v53, v6, s[68:71], 0 offen
	buffer_store_b8 v62, v7, s[68:71], 0 offen
	buffer_store_b8 v63, v9, s[68:71], 0 offen
	buffer_store_b8 v49, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v60, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s2, s2, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v57, v0, s[68:71], 0 offen
	buffer_store_b8 v64, v6, s[68:71], 0 offen
	buffer_store_b8 v65, v7, s[68:71], 0 offen
	buffer_store_b8 v46, v9, s[68:71], 0 offen
	buffer_store_b8 v54, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s78, s78, s2
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v66, v0, s[68:71], 0 offen
	buffer_store_b8 v69, v6, s[68:71], 0 offen
	buffer_store_b8 v50, v7, s[68:71], 0 offen
	buffer_store_b8 v58, v9, s[68:71], 0 offen
	buffer_store_b8 v70, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v73, v0, s[68:71], 0 offen
	buffer_store_b8 v47, v6, s[68:71], 0 offen
	buffer_store_b8 v55, v7, s[68:71], 0 offen
	buffer_store_b8 v67, v9, s[68:71], 0 offen
	buffer_store_b8 v43, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v51, v0, s[68:71], 0 offen
	buffer_store_b8 v59, v6, s[68:71], 0 offen
	buffer_store_b8 v71, v7, s[68:71], 0 offen
	buffer_store_b8 v74, v9, s[68:71], 0 offen
	buffer_store_b8 v48, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v40, vcc_lo
	s_clause 0x2
	buffer_store_b8 v56, v0, s[68:71], 0 offen
	buffer_store_b8 v68, v6, s[68:71], 0 offen
	buffer_store_b8 v44, v7, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v111
	v_lshrrev_b32_e32 v7, 2, v85
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v41, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v0, 0x80000000, v5 :: v_dual_lshlrev_b32 v5, 3, v112
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v52, v9, s[68:71], 0 offen
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s78, 8
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v60, v0, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v5
	v_add3_u32 v5, v7, v6, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[1:2]
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v8, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v111
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[1:2]
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s79, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp83:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 852
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
		.amdhsa_next_free_sgpr 80
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 852
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32212
; TotalNumSgprs: 82
; NumVgprs: 256
; ScratchSize: 852
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 82
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
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 852
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 212
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
