	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
	v_mov_b32_e32 v95, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v85, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
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
	s_sub_i32 s5, s41, s4
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
	v_and_b32_e32 v0, 63, v95
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
	s_sub_i32 s41, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s41, s5
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
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[36:37], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s34, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	v_add_nc_u32_e32 v30, s34, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_and_b32_e32 v98, 15, v95
	v_lshlrev_b32_e32 v16, 4, v95
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[36:37], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 4, v95
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow713
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v117, 0
	v_mov_b32_e32 v103, 0
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v99, 0xf0, v95
	scratch_store_b32 off, v2, off offset:8 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v100, 4, v98
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v96, 0xc0, v95
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	scratch_store_b32 off, v2, off offset:4 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v207, 0
	v_mov_b32_e32 v198, 0
	v_mov_b32_e32 v224, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	scratch_store_b32 off, v2, off          ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s22, s[0:1], 0x58
	s_load_b32 s42, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v9, s34, v98
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s4
	s_addc_u32 s1, s7, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[20:21], s[0:1], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[36:37], v[1:2]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v1, v9, s40
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v15, 3, v99
	v_lshrrev_b32_e32 v10, 3, v96
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v2, 32, v9
	v_mov_b32_e32 v210, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v1, off offset:368
	scratch_store_b32 off, v10, off offset:364
	scratch_store_b32 off, v15, off offset:360
	scratch_store_b32 off, v96, off offset:540
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, 16, v9
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v3, 48, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[38:39], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[5:6]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v1, v1, s40
	v_dual_mov_b32 v211, 0 :: v_dual_lshlrev_b32 v4, 1, v95
	v_lshrrev_b32_e32 v5, 1, v95
	v_mov_b32_e32 v209, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[36:37], v[7:8]
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v7, 3, v95
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:372
	scratch_store_b32 off, v98, off offset:544
	v_mul_lo_u32 v1, v2, s40
	v_lshlrev_b32_e32 v2, 5, v98
	v_dual_mov_b32 v202, 0 :: v_dual_and_b32 v7, 24, v7
	v_dual_mov_b32 v200, 0 :: v_dual_lshlrev_b32 v25, 3, v96
	v_dual_mov_b32 v189, 0 :: v_dual_lshlrev_b32 v26, 5, v95
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:376
	scratch_store_b32 off, v99, off offset:548
	v_mul_lo_u32 v1, v3, s40
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v3, 0, v0
	v_lshl_add_u32 v0, v0, 5, 0
	v_mov_b32_e32 v204, 0
	v_xor_b32_e32 v7, v7, v15
	v_or_b32_e32 v27, 0x3f0, v95
	v_or_b32_e32 v28, 0x7f0, v95
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:380
	scratch_store_b32 off, v100, off offset:552
	v_xor_b32_e32 v1, v4, v5
	v_and_or_b32 v5, v4, 24, v2
	v_mov_b32_e32 v203, 0
	v_mov_b32_e32 v205, 0
	v_lshl_or_b32 v7, v98, 9, v7
	v_and_b32_e32 v1, 24, v1
	v_xor_b32_e32 v6, 8, v5
	v_xor_b32_e32 v8, 16, v5
	v_mov_b32_e32 v199, 0
	v_xor_b32_e32 v9, 24, v5
	v_xor_b32_e32 v1, v1, v10
	v_mov_b32_e32 v195, 0
	v_xor_b32_e32 v11, 0x208, v5
	v_xor_b32_e32 v12, 0x218, v5
	v_xor_b32_e32 v13, 0x210, v5
	v_add_nc_u32_e32 v0, v0, v1
	scratch_store_b32 off, v16, off offset:556 ; 4-byte Folded Spill
	v_mov_b32_e32 v193, 0
	v_xor_b32_e32 v14, 0x410, v5
	v_xor_b32_e32 v15, 0x418, v5
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v0, 0, v5
	v_lshrrev_b32_e32 v10, 2, v95
	v_xor_b32_e32 v17, 0x408, v5
	v_mov_b32_e32 v225, 0
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	v_xor_b32_e32 v10, v4, v10
	v_xor_b32_e32 v18, 0x618, v5
	v_dual_mov_b32 v187, 0 :: v_dual_and_b32 v16, 0xe00, v16
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	v_dual_mov_b32 v83, 0 :: v_dual_and_b32 v10, 24, v10
	v_mov_b32_e32 v107, 0
	v_xor_b32_e32 v19, 0x610, v5
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v0, 0, v9
	v_or3_b32 v2, v16, v10, v2
	v_xor_b32_e32 v10, 0x608, v5
	v_xor_b32_e32 v16, 0x88, v7
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v0, 0, v11
	v_xor_b32_e32 v20, 0x110, v7
	v_xor_b32_e32 v21, 0x198, v7
	v_xor_b32_e32 v22, 8, v2
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v0, 0, v12
	v_xor_b32_e32 v23, 16, v2
	v_xor_b32_e32 v24, 24, v2
	v_mov_b32_e32 v127, 0
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v13
	v_dual_mov_b32 v224, 0 :: v_dual_lshlrev_b32 v29, 2, v99
	v_dual_mov_b32 v123, 0 :: v_dual_and_b32 v26, 32, v26
	v_mov_b32_e32 v197, 0
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v0, 0, v14
	v_dual_mov_b32 v207, 0 :: v_dual_and_b32 v4, 28, v4
	v_add3_u32 v26, 0, v29, v26
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v0, 0, v15
	v_dual_mov_b32 v198, 0 :: v_dual_lshlrev_b32 v29, 1, v99
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s47, s41, 8
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v0, 0, v17
	v_or_b32_e32 v31, s47, v95
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s43, s33, 1
	v_mov_b32_e32 v147, 0
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v18
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	s_and_b32 s0, s1, s3
	v_mov_b32_e32 v149, 0
	s_and_b32 s1, s4, s6
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v19
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s43, s22
	v_mov_b32_e32 v177, 0
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s44, s4, s20
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s4, 0
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v0, 0, v10
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s5, s7
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v0, 0, v7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s45, s40, s20
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v0, 0, v16
	s_mov_b32 s24, s10
	s_mov_b32 s25, s11
	v_mov_b32_e32 v185, 0
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v20
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_mov_b32_e32 v183, 0
	s_mov_b32 s7, s4
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v21
	s_mov_b32 s8, s4
	v_mov_b32_e32 v179, 0
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_dual_mov_b32 v181, 0 :: v_dual_add_nc_u32 v0, 0, v2
	s_mov_b32 s11, s4
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v208, 0, v98
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v0, 0, v22
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v163, 0
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v0, 0, v23
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v165, 0
	v_mov_b32_e32 v139, 0
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v24
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v159, 0
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v3, v25
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v155, 0
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v27
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v145, 0
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v28
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v137, 0
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v26, v4
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v131, 0
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v29
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v121, 0
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v97, 0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b64 off, v[30:31], off offset:352
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v31, off offset:384 ; 4-byte Folded Spill
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v115, 0
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v95, off offset:536 ; 4-byte Folded Spill
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v111, 0
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v0, s47, v100
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v91, 0
	scratch_store_b64 off, v[0:1], off offset:496 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, s4
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v1, s5
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v3, s7
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v5, s9
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v7, s11
	v_mov_b32_e32 v154, 0
	v_mov_b32_e32 v156, 0
	v_mov_b32_e32 v144, 0
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v2, s6
	v_mov_b32_e32 v4, s8
	v_mov_b32_e32 v6, s10
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_u32 s46, s44, s33
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s28, s12
	s_mov_b32 s29, s13
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s47, s4
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:504
	scratch_store_b128 off, v[4:7], off offset:520
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 18 is_stmt 0                ; ragged.py:0:18
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v1, off, off offset:360
	scratch_load_b64 v[2:3], off, off offset:496
	scratch_load_b32 v17, off, off offset:364
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s48, s47, 5
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v212, off offset:76
	scratch_store_b32 off, v211, off offset:72
	scratch_store_b32 off, v210, off offset:68
	scratch_store_b32 off, v82, off offset:64
	scratch_store_b32 off, v209, off offset:60
	scratch_store_b32 off, v206, off offset:56
	scratch_store_b32 off, v205, off offset:52
	scratch_store_b32 off, v204, off offset:48
	scratch_store_b32 off, v83, off offset:44
	scratch_store_b32 off, v81, off offset:40
	scratch_store_b32 off, v84, off offset:36
	scratch_store_b32 off, v202, off offset:32
	scratch_store_b32 off, v207, off offset:28
	scratch_store_b32 off, v91, off offset:24
	scratch_store_b32 off, v90, off offset:20
	scratch_store_b32 off, v89, off offset:16
	scratch_store_b32 off, v92, off offset:12
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v244, s11 :: v_dual_mov_b32 v239, s6
	v_dual_mov_b32 v242, s9 :: v_dual_mov_b32 v237, s4
	v_mov_b32_e32 v238, s5
	v_mov_b32_e32 v70, v186
	v_dual_mov_b32 v186, v109 :: v_dual_mov_b32 v69, v166
	v_dual_mov_b32 v160, v85 :: v_dual_mov_b32 v243, s10
	v_dual_mov_b32 v241, s8 :: v_dual_mov_b32 v166, v94
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v0, s48, v1
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v1, 1, v1
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[43:44], null, v0, s43, v[2:3]
	v_or_b32_e32 v1, s48, v1
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_mov_b32_e32 v240, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[44:45], null, v1, s43, v[2:3]
	v_add_nc_u32_e32 v0, s44, v43
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v4, s44, v44
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[0:3], v0, s[24:27], 0 offen
	buffer_load_b128 v[4:7], v4, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v8, v4, v0, 0x5010400
	v_perm_b32 v4, v4, v0, 0x7030602
	v_or_b32_e32 v0, s48, v17
	v_perm_b32 v9, v5, v1, 0x5010400
	v_perm_b32 v5, v5, v1, 0x7030602
	v_perm_b32 v12, v7, v3, 0x5010400
	v_perm_b32 v13, v7, v3, 0x7030602
	v_mad_u64_u32 v[0:1], null, v0, s42, v[30:31]
	v_perm_b32 v10, v6, v2, 0x5010400
	v_perm_b32 v11, v6, v2, 0x7030602
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v3, 0x80000000, v0, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v0, 1, v17
	v_or_b32_e32 v0, s48, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s42, v[30:31]
	v_cndmask_b32_e64 v6, 0x80000000, v0, s2
	v_or_b32_e32 v0, 2, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s48, v0
	v_mad_u64_u32 v[0:1], null, v0, s42, v[30:31]
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v7, 0x80000000, v0, s2
	v_or_b32_e32 v0, 3, v17
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x2
	buffer_load_u8 v207, v6, s[20:23], 0 offen
	buffer_load_u8 v210, v7, s[20:23], 0 offen
	buffer_load_u8 v212, v3, s[20:23], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v6, 24, v5
	v_or_b32_e32 v0, s48, v0
	v_lshrrev_b32_e32 v7, 24, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s42, v[30:31]
	v_cndmask_b32_e64 v2, 0x80000000, v0, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v0, 4, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s48, v0
	v_mad_u64_u32 v[0:1], null, v0, s42, v[30:31]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v14, 0x80000000, v0, s2
	v_or_b32_e32 v0, 5, v17
	v_or_b32_e32 v0, s48, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[0:1], null, v0, s42, v[30:31]
	v_cndmask_b32_e64 v15, 0x80000000, v0, s2
	v_or_b32_e32 v0, 7, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s48, v0
	v_mad_u64_u32 v[0:1], null, v0, s42, v[30:31]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v16, 0x80000000, v0, s2
	v_or_b32_e32 v0, 6, v17
	v_or_b32_e32 v0, s48, v0
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s48, s47, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_mul_i32 s48, s48, s43
	v_mad_u64_u32 v[0:1], null, v0, s42, v[30:31]
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v0, s2
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x4
	buffer_load_u8 v0, v15, s[20:23], 0 offen
	buffer_load_u8 v202, v16, s[20:23], 0 offen
	buffer_load_u8 v204, v1, s[20:23], 0 offen
	buffer_load_u8 v205, v14, s[20:23], 0 offen
	buffer_load_u8 v206, v2, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v3, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v0.h, 8, v0.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v1.l, 8, v202.l
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v2.l, v205.l, v0.h
	v_lshlrev_b16 v0.h, 8, v207.l
	v_or_b16 v2.h, v204.l, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v1.l, v212.l, v0.h
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v0.h, 8, v206.l
	v_or_b16 v1.h, v210.l, v0.h
	s_waitcnt vmcnt(0)
	ds_store_b64 v3, v[1:2]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v1, 8, v8
	v_lshrrev_b32_e32 v2, 24, v8
	v_lshrrev_b32_e32 v3, 24, v4
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshlrev_b16 v0.h, 8, v1.l
	v_and_b16 v1.l, 0xff, v8.l
	v_lshlrev_b16 v1.h, 8, v2.l
	v_lshrrev_b32_e32 v2, 8, v4
	v_lshlrev_b16 v2.h, 8, v3.l
	v_lshrrev_b32_e32 v3, 8, v9
	v_or_b16 v0.h, v1.l, v0.h
	v_and_b16 v1.l, 0xff, v8.h
	v_lshrrev_b32_e32 v8, 24, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v1.l, v1.l, v1.h
	v_lshlrev_b16 v1.h, 8, v2.l
	v_and_b16 v2.l, 0xff, v4.l
	v_or_b16 v1.h, v2.l, v1.h
	v_and_b16 v2.l, 0xff, v4.h
	v_lshrrev_b32_e32 v4, 24, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v2.l, v2.l, v2.h
	v_lshlrev_b16 v2.h, 8, v3.l
	v_and_b16 v3.l, 0xff, v9.l
	v_lshlrev_b16 v3.h, 8, v4.l
	v_lshrrev_b32_e32 v4, 8, v5
	v_lshlrev_b16 v4.h, 8, v6.l
	v_lshrrev_b32_e32 v6, 24, v10
	v_or_b16 v2.h, v3.l, v2.h
	v_and_b16 v3.l, 0xff, v9.h
	v_lshrrev_b32_e32 v9, 24, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v3.l, v3.l, v3.h
	v_lshlrev_b16 v3.h, 8, v4.l
	v_and_b16 v4.l, 0xff, v5.l
	v_or_b16 v3.h, v4.l, v3.h
	v_and_b16 v4.l, 0xff, v5.h
	v_lshrrev_b32_e32 v5, 8, v10
	v_lshlrev_b16 v5.h, 8, v6.l
	v_lshrrev_b32_e32 v6, 8, v11
	v_lshlrev_b16 v6.h, 8, v7.l
	v_lshrrev_b32_e32 v7, 8, v12
	v_lshlrev_b16 v7.h, 8, v8.l
	v_lshrrev_b32_e32 v8, 8, v13
	v_lshlrev_b16 v8.h, 8, v9.l
	.loc	1 1155 34                       ; ragged.py:1155:34
	scratch_load_b32 v9, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_or_b16 v4.l, v4.l, v4.h
	v_lshlrev_b16 v4.h, 8, v5.l
	v_and_b16 v5.l, 0xff, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v4.h, v5.l, v4.h
	v_and_b16 v5.l, 0xff, v10.h
	v_or_b16 v5.l, v5.l, v5.h
	v_lshlrev_b16 v5.h, 8, v6.l
	v_and_b16 v6.l, 0xff, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v5.h, v6.l, v5.h
	v_and_b16 v6.l, 0xff, v11.h
	v_or_b16 v6.l, v6.l, v6.h
	v_lshlrev_b16 v6.h, 8, v7.l
	v_and_b16 v7.l, 0xff, v12.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v6.h, v7.l, v6.h
	v_and_b16 v7.l, 0xff, v12.h
	v_or_b16 v7.l, v7.l, v7.h
	v_lshlrev_b16 v7.h, 8, v8.l
	v_and_b16 v8.l, 0xff, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v7.h, v8.l, v7.h
	v_and_b16 v8.l, 0xff, v13.h
	v_or_b16 v8.l, v8.l, v8.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_load_b64 v[63:64], v9
	scratch_load_b32 v9, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[65:66], v9
	scratch_load_b32 v9, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[67:68], v9
	scratch_load_b32 v9, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[61:62], v9
	scratch_load_b32 v9, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[57:58], v9
	scratch_load_b32 v9, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[59:60], v9
	scratch_load_b32 v9, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[47:48], v9
	scratch_load_b32 v9, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[49:50], v9
	scratch_load_b32 v9, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[45:46], v9
	scratch_load_b32 v9, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[53:54], v9
	scratch_load_b32 v9, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[55:56], v9
	scratch_load_b32 v9, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[51:52], v9
	scratch_load_b32 v9, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[37:40], v9 offset1:1
	ds_load_2addr_stride64_b64 v[17:20], v9 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v100, off, off offset:444
	scratch_load_b32 v221, off, off offset:448
	scratch_load_b32 v223, off, off offset:452
	scratch_load_b32 v233, off, off offset:456
	s_waitcnt vmcnt(3)
	ds_store_b16_d16_hi v100, v0
	ds_store_b16 v100, v1 offset:32
	ds_store_b16_d16_hi v100, v1 offset:64
	ds_store_b16 v100, v2 offset:96
	s_waitcnt vmcnt(2)
	ds_store_b16_d16_hi v221, v2
	ds_store_b16 v221, v3 offset:32
	ds_store_b16_d16_hi v221, v3 offset:64
	ds_store_b16 v221, v4 offset:96
	s_waitcnt vmcnt(1)
	ds_store_b16_d16_hi v223, v4
	ds_store_b16 v223, v5 offset:32
	ds_store_b16_d16_hi v223, v5 offset:64
	ds_store_b16 v223, v6 offset:96
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v233, v6
	ds_store_b16 v233, v7 offset:32
	ds_store_b16_d16_hi v233, v7 offset:64
	ds_store_b16 v233, v8 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b32 v234, off, off offset:460
	scratch_load_b32 v101, off, off offset:464
	scratch_load_b32 v102, off, off offset:468
	scratch_load_b32 v113, off, off offset:472
	scratch_load_b128 v[1:4], off, off offset:504
	scratch_load_b128 v[5:8], off, off offset:520
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(5)
	ds_load_2addr_stride64_b64 v[21:24], v234 offset1:8
	s_waitcnt vmcnt(4)
	ds_load_2addr_stride64_b64 v[25:28], v101 offset1:8
	s_waitcnt vmcnt(3)
	ds_load_2addr_stride64_b64 v[29:32], v102 offset1:8
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[33:36], v113 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[37:38], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[23:24], v[47:48], v[237:244] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[213:220], v[23:24], v[53:54], v[237:244] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[63:64], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[27:28], v[49:50], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[213:220], v[27:28], v[55:56], v[213:220] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[65:66], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[31:32], v[17:18], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[213:220], v[31:32], v[51:52], v[213:220] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[67:68], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[35:36], v[45:46], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[213:220], v[35:36], v[19:20], v[213:220] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v1, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v9, v73
	scratch_store_b32 off, v1, off offset:300 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v10
	scratch_store_b32 off, v9, off offset:188 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v78
	scratch_store_b32 off, v1, off offset:180 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v11
	scratch_store_b32 off, v9, off offset:168 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v79
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v12
	scratch_store_b32 off, v9, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v80
	scratch_store_b32 off, v1, off offset:172 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v13
	scratch_store_b32 off, v9, off offset:160 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v74
	scratch_store_b32 off, v1, off offset:152 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v14
	scratch_store_b32 off, v9, off offset:228 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v75
	scratch_store_b32 off, v1, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v15
	scratch_store_b32 off, v9, off offset:224 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v76
	scratch_store_b32 off, v1, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v16
	scratch_store_b32 off, v9, off offset:220 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v77
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v1, off offset:132 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[37:38], v[237:244] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v9, off offset:184 ; 4-byte Folded Spill
	v_mov_b32_e32 v38, v170
	v_mov_b32_e32 v170, v86
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[27:28], v[63:64], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[31:32], v[65:66], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v66, v122
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[67:68], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v67, v121 :: v_dual_mov_b32 v68, v187
	v_mov_b32_e32 v187, v110
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v1, v1
	scratch_store_b32 off, v1, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v6
	scratch_store_b32 off, v1, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v7
	scratch_store_b32 off, v1, off offset:84 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v8
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v2
	scratch_store_b32 off, v1, off offset:104 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v3
	scratch_store_b32 off, v1, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v4
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v5
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v1, off offset:92 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[61:62], v[237:244] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[57:58], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[59:60], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v1, v1
	scratch_store_b32 off, v1, off offset:244 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v2
	scratch_store_b32 off, v1, off offset:240 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v3
	scratch_store_b32 off, v1, off offset:236 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v4
	scratch_store_b32 off, v1, off offset:232 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v5
	scratch_store_b32 off, v1, off offset:212 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v6
	scratch_store_b32 off, v1, off offset:204 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v7
	scratch_store_b32 off, v1, off offset:200 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v8
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v1, off offset:192 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[61:62], v[237:244] neg_lo:[1,1,0]
	v_mov_b32_e32 v23, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[27:28], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v39, v87 :: v_dual_mov_b32 v40, v88
	v_dual_mov_b32 v27, v107 :: v_dual_mov_b32 v190, v116
	v_wmma_i32_16x16x16_iu4 v[1:8], v[31:32], v[57:58], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[59:60], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v36, v195
	v_mov_b32_e32 v24, v103
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v1, v1
	scratch_store_b32 off, v1, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v6
	scratch_store_b32 off, v1, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v7
	scratch_store_b32 off, v1, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v8
	scratch_store_b32 off, v1, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v2
	scratch_store_b32 off, v1, off offset:156 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v3
	scratch_store_b32 off, v1, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v4
	scratch_store_b32 off, v1, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v5
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v1, off offset:124 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[47:48], v[237:244] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[49:50], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[45:46], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v1, v1
	scratch_store_b32 off, v1, off offset:296 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v2
	scratch_store_b32 off, v1, off offset:292 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v3
	scratch_store_b32 off, v1, off offset:288 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v4
	scratch_store_b32 off, v1, off offset:284 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v5
	scratch_store_b32 off, v1, off offset:280 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v6
	scratch_store_b32 off, v1, off offset:272 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v7
	scratch_store_b32 off, v1, off offset:264 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v8
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v1, off offset:256 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[53:54], v[237:244] neg_lo:[1,1,0]
	v_dual_mov_b32 v22, v179 :: v_dual_mov_b32 v179, v105
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[55:56], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v26, v108
	v_mov_b32_e32 v25, v188
	v_mov_b32_e32 v18, v184
	v_mov_b32_e32 v188, v115
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[51:52], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[19:20], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v34, v200
	v_dual_mov_b32 v20, v181 :: v_dual_mov_b32 v181, v106
	v_mov_b32_e32 v184, v114
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v1, v1
	scratch_store_b32 off, v1, off offset:332 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v2
	v_add_nc_u32_e32 v2, s46, v44
	scratch_store_b32 off, v1, off offset:328 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v3
	scratch_store_b32 off, v1, off offset:324 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v4
	scratch_store_b32 off, v1, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v5
	scratch_store_b32 off, v1, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v6
	scratch_store_b32 off, v1, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v7
	scratch_store_b32 off, v1, off offset:308 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v8
	scratch_store_b32 off, v1, off offset:304 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v213
	scratch_store_b32 off, v1, off offset:252 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v218
	scratch_store_b32 off, v1, off offset:216 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v219
	scratch_store_b32 off, v1, off offset:208 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v220
	scratch_store_b32 off, v1, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v214
	scratch_store_b32 off, v1, off offset:276 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v215
	v_mov_b32_e32 v215, v189
	v_mov_b32_e32 v189, v165
	v_mov_b32_e32 v165, v93
	scratch_store_b32 off, v1, off offset:268 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v216
	scratch_store_b32 off, v1, off offset:260 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v217
	v_mov_b32_e32 v217, v225
	v_mov_b32_e32 v225, v156
	scratch_store_b32 off, v1, off offset:248 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s46, v43
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_b128 v[4:7], v1, s[24:27], 0 offen
	buffer_load_b128 v[49:52], v2, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(0)
	v_perm_b32 v8, v49, v4, 0x5010400
	v_perm_b32 v44, v49, v4, 0x7030602
	v_perm_b32 v4, v51, v6, 0x5010400
	v_perm_b32 v3, v51, v6, 0x7030602
	scratch_load_b32 v6, off, off offset:476 ; 4-byte Folded Reload
	v_perm_b32 v2, v52, v7, 0x5010400
	v_perm_b32 v1, v52, v7, 0x7030602
	v_perm_b32 v55, v50, v5, 0x5010400
	v_perm_b32 v5, v50, v5, 0x7030602
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v6, v212
	ds_store_b8 v6, v207 offset:64
	ds_store_b8 v6, v210 offset:128
	ds_store_b8 v6, v206 offset:192
	ds_store_b8 v6, v205 offset:256
	ds_store_b8 v6, v0 offset:320
	ds_store_b8 v6, v204 offset:384
	ds_store_b8 v6, v202 offset:448
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	scratch_load_b32 v9, off, off offset:480 ; 4-byte Folded Reload
	ds_load_u8 v0, v208 offset:320
	ds_load_u8 v6, v208 offset:256
	ds_load_u8 v56, v208 offset:336
	ds_load_u8 v73, v208 offset:272
	ds_load_u8 v89, v208 offset:352
	ds_load_u8 v90, v208 offset:288
	ds_load_u8 v109, v208 offset:432
	ds_load_u8 v94, v208 offset:32
	ds_load_u8 v121, v208 offset:48
	ds_load_u8 v195, v208 offset:1072
	ds_load_u8 v93, v208 offset:96
	v_mov_b32_e32 v207, v97
	ds_load_u8 v97, v208 offset:368
	ds_load_u8 v98, v208 offset:304
	ds_load_u8 v110, v208 offset:112
	ds_load_u8 v77, v208 offset:16
	ds_load_u8 v122, v208 offset:240
	ds_load_u8 v65, v208 offset:176
	ds_load_u8 v251, v208 offset:1168
	ds_load_u8 v72, v208 offset:1184
	ds_load_u8 v12, v208 offset:1040
	ds_load_u8 v16, v208 offset:1056
	ds_load_u8 v156, v208 offset:1424
	ds_load_u8 v14, v208 offset:1440
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v0, v6, v0, 0xc0c0004
	ds_load_u8 v6, v208 offset:448
	ds_load_u8 v7, v208 offset:384
	ds_load_u8 v74, v208 offset:464
	ds_load_u8 v75, v208 offset:400
	ds_load_u8 v91, v208 offset:480
	ds_load_u8 v92, v208 offset:416
	ds_load_u8 v99, v208 offset:496
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v208 offset:64
	ds_load_u8 v42, v208
	ds_load_u8 v76, v208 offset:80
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v7, v42, v7, 0xc0c0004
	ds_load_u8 v42, v208 offset:192
	ds_load_u8 v43, v208 offset:128
	ds_load_u8 v78, v208 offset:208
	ds_load_u8 v79, v208 offset:144
	ds_load_u8 v95, v208 offset:224
	ds_load_u8 v96, v208 offset:160
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v43, v6, 16, v0
	ds_load_u8 v0, v208 offset:832
	ds_load_u8 v6, v208 offset:768
	ds_load_u8 v80, v208 offset:848
	ds_load_u8 v81, v208 offset:784
	ds_load_u8 v210, v208 offset:864
	ds_load_u8 v212, v208 offset:800
	ds_load_u8 v64, v208 offset:880
	ds_load_u8 v63, v208 offset:816
	v_lshl_or_b32 v42, v42, 16, v7
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v6, v0, 0xc0c0004
	ds_load_u8 v6, v208 offset:960
	ds_load_u8 v7, v208 offset:896
	ds_load_u8 v82, v208 offset:976
	ds_load_u8 v83, v208 offset:912
	ds_load_u8 v213, v208 offset:992
	ds_load_u8 v214, v208 offset:928
	ds_load_u8 v62, v208 offset:944
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v208 offset:576
	ds_load_u8 v49, v208 offset:512
	ds_load_u8 v84, v208 offset:592
	ds_load_u8 v202, v208 offset:528
	ds_load_u8 v216, v208 offset:608
	ds_load_u8 v218, v208 offset:544
	ds_load_u8 v61, v208 offset:624
	ds_load_u8 v60, v208 offset:560
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v49, v7, 0xc0c0004
	ds_load_u8 v49, v208 offset:704
	ds_load_u8 v50, v208 offset:640
	ds_load_u8 v204, v208 offset:720
	ds_load_u8 v205, v208 offset:656
	ds_load_u8 v220, v208 offset:736
	ds_load_u8 v222, v208 offset:672
	ds_load_u8 v58, v208 offset:752
	ds_load_u8 v57, v208 offset:688
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_lshl_or_b32 v50, v6, 16, v0
	ds_load_u8 v0, v208 offset:1344
	ds_load_u8 v6, v208 offset:1280
	ds_load_u8 v59, v208 offset:1264
	ds_load_u8 v206, v208 offset:1360
	ds_load_u8 v230, v208 offset:1376
	ds_load_u8 v48, v208 offset:1392
	ds_load_u8 v47, v208 offset:1328
	v_lshl_or_b32 v49, v49, 16, v7
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v0, v6, v0, 0xc0c0004
	ds_load_u8 v6, v208 offset:1408
	ds_load_u8 v7, v208 offset:1472
	ds_load_u8 v209, v208 offset:1488
	ds_load_u8 v231, v208 offset:1504
	ds_load_u8 v46, v208 offset:1520
	ds_load_u8 v45, v208 offset:1456
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v6, v7, 0xc0c0004
	ds_load_u8 v7, v208 offset:1024
	ds_load_u8 v51, v208 offset:1088
	ds_load_u8 v211, v208 offset:1104
	ds_load_u8 v235, v208 offset:1120
	ds_load_u8 v37, v208 offset:1136
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v7, v7, v51, 0xc0c0004
	ds_load_u8 v51, v208 offset:1152
	ds_load_u8 v52, v208 offset:1216
	ds_load_u8 v228, v208 offset:1232
	ds_load_u8 v32, v208 offset:1248
	ds_load_u8 v35, v208 offset:1200
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v51, v51, v52, 0xc0c0004
	v_lshl_or_b32 v52, v6, 16, v0
	ds_load_u8 v0, v208 offset:1792
	ds_load_u8 v6, v208 offset:1856
	ds_load_u8 v229, v208 offset:1872
	ds_load_u8 v31, v208 offset:1888
	ds_load_u8 v245, v208 offset:1904
	ds_load_u8 v246, v208 offset:1840
	ds_load_u8 v247, v208 offset:1776
	v_lshl_or_b32 v51, v51, 16, v7
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v0, v0, v6, 0xc0c0004
	ds_load_u8 v6, v208 offset:1920
	ds_load_u8 v7, v208 offset:1984
	ds_load_u8 v29, v208 offset:2000
	ds_load_u8 v30, v208 offset:2016
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v6, v6, v7, 0xc0c0004
	ds_load_u8 v7, v208 offset:1536
	ds_load_u8 v53, v208 offset:1600
	ds_load_u8 v41, v208 offset:1616
	ds_load_u8 v253, v208 offset:1632
	ds_load_u8 v254, v208 offset:1648
	ds_load_u8 v71, v208 offset:1584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v7, v53, 0xc0c0004
	ds_load_u8 v53, v208 offset:1664
	ds_load_u8 v54, v208 offset:1728
	ds_load_u8 v248, v208 offset:1744
	ds_load_u8 v249, v208 offset:1760
	ds_load_u8 v250, v208 offset:1712
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v53, v53, v54, 0xc0c0004
	v_lshl_or_b32 v54, v6, 16, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshrrev_b32_e32 v0, 8, v8
	v_and_b16 v0.h, 0xff, v8.l
	v_lshrrev_b32_e32 v6, 24, v8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v53, v53, 16, v7
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshrrev_b32_e32 v7, 24, v44
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v6.l, 8, v6.l
	v_lshlrev_b16 v7.l, 8, v7.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v0.l, v0.h, v0.l
	v_and_b16 v0.h, 0xff, v8.h
	v_lshrrev_b32_e32 v8, 24, v55
	v_or_b16 v0.h, v0.h, v6.l
	v_lshrrev_b32_e32 v6, 8, v44
	v_and_b16 v6.h, 0xff, v44.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v8.l, 8, v8.l
	v_lshlrev_b16 v6.l, 8, v6.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v6.l, v6.h, v6.l
	v_and_b16 v6.h, 0xff, v44.h
	v_lshrrev_b32_e32 v44, 24, v5
	v_or_b16 v6.h, v6.h, v7.l
	v_lshrrev_b32_e32 v7, 8, v55
	v_and_b16 v7.h, 0xff, v55.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v7.l, 8, v7.l
	v_or_b16 v7.l, v7.h, v7.l
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt vmcnt(0)
	ds_load_u8 v33, v9
	scratch_load_b32 v9, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_and_b16 v7.h, 0xff, v55.h
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt vmcnt(0)
	ds_load_u8 v200, v9
	ds_load_u8 v252, v208 offset:1968
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v7.h, v7.h, v8.l
	v_lshrrev_b32_e32 v8, 8, v5
	v_and_b16 v8.h, 0xff, v5.l
	v_and_b16 v5.l, 0xff, v5.h
	v_lshlrev_b16 v5.h, 8, v44.l
	v_lshrrev_b32_e32 v44, 8, v4
	v_lshlrev_b16 v8.l, 8, v8.l
	v_mov_b32_e32 v9, v174
	v_mov_b32_e32 v174, v150
	v_or_b16 v5.l, v5.l, v5.h
	v_lshlrev_b16 v5.h, 8, v44.l
	v_lshrrev_b32_e32 v44, 24, v4
	v_or_b16 v8.l, v8.h, v8.l
	v_and_b16 v8.h, 0xff, v4.l
	v_and_b16 v4.l, 0xff, v4.h
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v150, v208 offset:1296
	ds_load_u8 v13, v208 offset:1312
	ds_load_u8 v255, v208 offset:1680
	ds_load_u8 v17, v208 offset:1696
	ds_load_u8 v11, v208 offset:1552
	ds_load_u8 v15, v208 offset:1568
	ds_load_u8 v10, v208 offset:1936
	ds_load_u8 v226, v208 offset:1952
	ds_load_u8 v158, v208 offset:1808
	ds_load_u8 v232, v208 offset:1824
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v4.h, 8, v44.l
	v_lshrrev_b32_e32 v44, 8, v3
	v_or_b16 v5.h, v8.h, v5.h
	v_and_b16 v8.h, 0xff, v3.l
	s_waitcnt lgkmcnt(0)
	v_or_b16 v4.l, v4.l, v4.h
	v_lshlrev_b16 v4.h, 8, v44.l
	v_lshrrev_b32_e32 v44, 24, v3
	v_and_b16 v3.l, 0xff, v3.h
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v4.h, v8.h, v4.h
	v_lshlrev_b16 v3.h, 8, v44.l
	v_lshrrev_b32_e32 v44, 8, v2
	v_and_b16 v8.h, 0xff, v2.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v3.l, v3.l, v3.h
	v_lshlrev_b16 v3.h, 8, v44.l
	v_lshrrev_b32_e32 v44, 24, v2
	v_and_b16 v2.l, 0xff, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v3.h, v8.h, v3.h
	v_lshlrev_b16 v2.h, 8, v44.l
	v_lshrrev_b32_e32 v44, 8, v1
	v_and_b16 v8.h, 0xff, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v2.l, v2.l, v2.h
	v_lshlrev_b16 v2.h, 8, v44.l
	v_lshrrev_b32_e32 v44, 24, v1
	v_and_b16 v1.l, 0xff, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v2.h, v8.h, v2.h
	v_lshlrev_b16 v1.h, 8, v44.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v1.l, v1.l, v1.h
	ds_store_b16 v100, v0
	ds_store_b16_d16_hi v100, v0 offset:32
	ds_store_b16 v100, v6 offset:64
	ds_store_b16_d16_hi v100, v6 offset:96
	ds_store_b16 v221, v7
	ds_store_b16_d16_hi v221, v7 offset:32
	ds_store_b16 v221, v8 offset:64
	ds_store_b16 v221, v5 offset:96
	ds_store_b16_d16_hi v223, v5
	ds_store_b16 v223, v4 offset:32
	ds_store_b16_d16_hi v223, v4 offset:64
	ds_store_b16 v223, v3 offset:96
	ds_store_b16_d16_hi v233, v3
	ds_store_b16 v233, v2 offset:32
	ds_store_b16_d16_hi v233, v2 offset:64
	ds_store_b16 v233, v1 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[85:88], v234 offset1:8
	ds_load_2addr_stride64_b64 v[105:108], v101 offset1:8
	ds_load_2addr_stride64_b64 v[100:103], v102 offset1:8
	ds_load_2addr_stride64_b64 v[113:116], v113 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v8, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[85:86], v[42:43], v[237:244] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[105:106], v[49:50], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[100:101], v[51:52], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[113:114], v[53:54], v[0:7] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v44, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v0, v6
	v_cvt_f32_i32_e32 v234, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v233, v2
	v_cvt_f32_i32_e32 v223, v3
	v_cvt_f32_i32_e32 v221, v4
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v7
	v_cvt_f32_i32_e32 v219, v5
	.loc	1 1190 36                       ; ragged.py:1190:36
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[0:7], v[87:88], v[42:43], v[237:244] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[107:108], v[49:50], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[102:103], v[51:52], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[115:116], v[53:54], v[0:7] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v52, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v51, v2
	v_cvt_f32_i32_e32 v50, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v4
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v1, v73, v56, 0xc0c0004
	v_perm_b32 v2, v75, v74, 0xc0c0004
	v_perm_b32 v3, v77, v76, 0xc0c0004
	v_perm_b32 v4, v79, v78, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v43, v6
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v6, v94, v93, 0xc0c0004
	v_lshl_or_b32 v54, v2, 16, v1
	v_perm_b32 v1, v81, v80, 0xc0c0004
	v_lshl_or_b32 v53, v4, 16, v3
	v_perm_b32 v2, v83, v82, 0xc0c0004
	v_perm_b32 v3, v202, v84, 0xc0c0004
	v_perm_b32 v4, v205, v204, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[73:80], v[85:86], v[53:54], v[237:244] neg_lo:[1,1,0]
	v_lshl_or_b32 v56, v2, 16, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v55, v4, 16, v3
	v_perm_b32 v1, v150, v206, 0xc0c0004
	v_perm_b32 v2, v156, v209, 0xc0c0004
	v_perm_b32 v3, v12, v211, 0xc0c0004
	v_perm_b32 v4, v251, v228, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[73:80], v[105:106], v[55:56], v[73:80] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v5, off offset:336 ; 4-byte Folded Spill
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v82, v2, 16, v1
	v_perm_b32 v1, v158, v229, 0xc0c0004
	v_lshl_or_b32 v81, v4, 16, v3
	v_perm_b32 v2, v10, v29, 0xc0c0004
	v_perm_b32 v3, v11, v41, 0xc0c0004
	v_perm_b32 v4, v255, v248, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v5, v7
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[73:80], v[100:101], v[81:82], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v84, v2, 16, v1
	v_perm_b32 v2, v90, v89, 0xc0c0004
	v_lshl_or_b32 v83, v4, 16, v3
	v_perm_b32 v4, v92, v91, 0xc0c0004
	v_lshl_or_b32 v89, v8, 16, v6
	v_perm_b32 v6, v218, v216, 0xc0c0004
	v_perm_b32 v8, v222, v220, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[73:80], v[113:114], v[83:84], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v90, v4, 16, v2
	v_perm_b32 v2, v212, v210, 0xc0c0004
	v_perm_b32 v4, v214, v213, 0xc0c0004
	v_lshl_or_b32 v91, v8, 16, v6
	v_perm_b32 v6, v16, v235, 0xc0c0004
	v_perm_b32 v8, v72, v32, 0xc0c0004
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v16, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v92, v4, 16, v2
	v_perm_b32 v2, v13, v230, 0xc0c0004
	v_perm_b32 v4, v14, v231, 0xc0c0004
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v13, off, off offset:368
	scratch_load_b32 v14, off, off offset:372
	scratch_load_b32 v29, off, off offset:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v93, v8, 16, v6
	v_lshl_or_b32 v94, v4, 16, v2
	v_perm_b32 v2, v232, v31, 0xc0c0004
	v_perm_b32 v4, v226, v30, 0xc0c0004
	scratch_load_b64 v[30:31], off, off offset:352 ; 8-byte Folded Reload
	v_perm_b32 v6, v15, v253, 0xc0c0004
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v15, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v8, v17, v249, 0xc0c0004
	scratch_load_b32 v17, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v5, off offset:340 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v229, v73
	v_cvt_f32_i32_e32 v228, v74
	v_cvt_f32_i32_e32 v211, v75
	v_cvt_f32_i32_e32 v209, v76
	v_cvt_f32_i32_e32 v7, v77
	v_cvt_f32_i32_e32 v5, v78
	v_cvt_f32_i32_e32 v3, v79
	v_cvt_f32_i32_e32 v1, v80
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[73:80], v[87:88], v[53:54], v[237:244] neg_lo:[1,1,0]
	v_lshl_or_b32 v96, v4, 16, v2
	v_lshl_or_b32 v95, v8, 16, v6
	v_perm_b32 v2, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[107:108], v[55:56], v[73:80] neg_lo:[1,1,0]
	v_perm_b32 v4, v109, v99, 0xc0c0004
	v_perm_b32 v6, v121, v110, 0xc0c0004
	v_perm_b32 v8, v65, v122, 0xc0c0004
	v_mov_b32_e32 v156, v225
	v_wmma_i32_16x16x16_iu4 v[73:80], v[102:103], v[81:82], v[73:80] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v0, v0
	v_mov_b32_e32 v225, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[73:80], v[115:116], v[83:84], v[73:80] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v53, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v54, v79
	v_cvt_f32_i32_e32 v55, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v204, v76
	v_cvt_f32_i32_e32 v56, v77
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[76:83], v[85:86], v[89:90], v[237:244] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v202, v73
	v_cvt_f32_i32_e32 v206, v74
	v_cvt_f32_i32_e32 v205, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[76:83], v[105:106], v[91:92], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[100:101], v[93:94], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[113:114], v[95:96], v[76:83] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v75, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v74, v78
	v_cvt_f32_i32_e32 v73, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v42, v80
	v_cvt_f32_i32_e32 v235, v81
	v_cvt_f32_i32_e32 v231, v82
	v_cvt_f32_i32_e32 v230, v83
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[77:84], v[87:88], v[89:90], v[237:244] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[77:84], v[107:108], v[91:92], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[77:84], v[102:103], v[93:94], v[77:84] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[115:116], v[95:96], v[77:84] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v216, v77
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v222, v78
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v78, v4, 16, v2
	v_lshl_or_b32 v77, v8, 16, v6
	v_perm_b32 v2, v60, v61, 0xc0c0004
	v_perm_b32 v4, v57, v58, 0xc0c0004
	v_perm_b32 v6, v63, v64, 0xc0c0004
	v_perm_b32 v8, v62, v33, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v220, v79
	v_cvt_f32_i32_e32 v218, v80
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v79, v4, 16, v2
	v_perm_b32 v2, v47, v48, 0xc0c0004
	v_lshl_or_b32 v80, v8, 16, v6
	v_perm_b32 v4, v45, v46, 0xc0c0004
	v_perm_b32 v6, v195, v37, 0xc0c0004
	v_perm_b32 v8, v35, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[92:99], v[85:86], v[77:78], v[237:244] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v110, v4, 16, v2
	v_perm_b32 v2, v71, v254, 0xc0c0004
	v_lshl_or_b32 v109, v8, 16, v6
	v_perm_b32 v4, v250, v247, 0xc0c0004
	v_perm_b32 v6, v246, v245, 0xc0c0004
	v_perm_b32 v8, v252, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[92:99], v[105:106], v[79:80], v[92:99] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v210, v82
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v121, v4, 16, v2
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v212, v83
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v122, v8, 16, v6
	v_wmma_i32_16x16x16_iu4 v[92:99], v[100:101], v[109:110], v[92:99] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v213, v84
	v_cvt_f32_i32_e32 v214, v81
	v_dual_mov_b32 v195, v36 :: v_dual_mov_b32 v150, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[92:99], v[113:114], v[121:122], v[92:99] neg_lo:[1,1,0]
	v_mov_b32_e32 v174, v9
	v_dual_mov_b32 v106, v181 :: v_dual_mov_b32 v181, v20
	v_mov_b32_e32 v105, v179
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v100, v92
	v_cvt_f32_i32_e32 v91, v93
	v_cvt_f32_i32_e32 v90, v94
	v_cvt_f32_i32_e32 v89, v95
	v_cvt_f32_i32_e32 v84, v96
	v_cvt_f32_i32_e32 v83, v97
	v_cvt_f32_i32_e32 v82, v98
	v_cvt_f32_i32_e32 v81, v99
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[92:99], v[87:88], v[77:78], v[237:244] neg_lo:[1,1,0]
	v_mov_b32_e32 v179, v22
	scratch_load_b32 v20, off, off          ; 4-byte Folded Reload
	v_mov_b32_e32 v114, v184
	v_wmma_i32_16x16x16_iu4 v[92:99], v[107:108], v[79:80], v[92:99] neg_lo:[1,1,0]
	v_dual_mov_b32 v184, v18 :: v_dual_mov_b32 v107, v27
	v_mov_b32_e32 v108, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[92:99], v[102:103], v[109:110], v[92:99] neg_lo:[1,1,0]
	v_mov_b32_e32 v109, v186
	v_dual_mov_b32 v186, v70 :: v_dual_mov_b32 v103, v24
	v_wmma_i32_16x16x16_iu4 v[92:99], v[115:116], v[121:122], v[92:99] neg_lo:[1,1,0]
	v_mov_b32_e32 v121, v67
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v9, v97
	v_mov_b32_e32 v97, v207
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v207, off, off offset:28
	scratch_load_b32 v18, off, off offset:4
	v_cvt_f32_i32_e32 v6, v94
	v_cvt_f32_i32_e32 v2, v92
	v_cvt_f32_i32_e32 v8, v93
	v_mov_b32_e32 v93, v165
	v_mov_b32_e32 v165, v189
	v_mov_b32_e32 v189, v215
	v_cvt_f32_i32_e32 v4, v95
	v_cvt_f32_i32_e32 v12, v96
	v_cvt_f32_i32_e32 v11, v99
	v_cvt_f32_i32_e32 v10, v98
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v16, s47, v16, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v13, s47, v13, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v14, s47, v14, 1
	v_mov_b32_e32 v110, v187
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_mov_b32_e32 v187, v68
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_dual_mov_b32 v200, v34 :: v_dual_mov_b32 v115, v188
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v15, s47, v15, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s47, s47, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v77, v17, s48, 1
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s47, s40
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v15, 0x80000000, v15, s1
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v77, v77, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v13, v13, s[28:31], 0 offen
	buffer_load_u16 v14, v14, s[28:31], 0 offen
	buffer_load_u16 v15, v15, s[28:31], 0 offen
	buffer_load_u16 v16, v16, s[28:31], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v19, off, off offset:488 ; 4-byte Folded Reload
	v_mov_b32_e32 v122, v66
	v_mov_b32_e32 v116, v190
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v188, v25 :: v_dual_lshlrev_b32 v77, 16, v77
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v94, v166 :: v_dual_lshlrev_b32 v13, 16, v13
	v_mov_b32_e32 v166, v69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v13, v44
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v19, v77
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v21, off, off offset:300 ; 4-byte Folded Reload
	v_mov_b32_e32 v190, v23
	scratch_load_b32 v23, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v69, v13, v21
	scratch_load_b32 v21, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(1)
	ds_load_b128 v[77:80], v23
	ds_load_b128 v[85:88], v23 offset:16
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v92, 16, v15
	v_lshlrev_b32_e32 v70, 16, v16
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[33:36], v23 offset:512
	ds_load_b128 v[45:48], v23 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(3)
	v_fmac_f32_e32 v178, v69, v77
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v69, v13, v21
	scratch_load_b32 v21, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v179, v69, v78
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v69, v13, v21
	scratch_load_b32 v21, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v181, v69, v79
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v69, v13, v21
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v180, v69, v80 :: v_dual_lshlrev_b32 v69, 16, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v7, v69, v7
	v_mul_f32_e32 v5, v69, v5
	v_mul_f32_e32 v3, v69, v3
	v_mul_f32_e32 v1, v69, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v69, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v154, v14, v77
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v69, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v155, v14, v78
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v69, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v157, v14, v79
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v69, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v156, v14, v80
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v92, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v130, v14, v77
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v92, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v131, v14, v78
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v92, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v14, v79
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v92, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v132, v14, v80
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v70, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v108, v14, v77
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v70, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v14, v78
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v70, v14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v14, v79
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v9, v9, v70 :: v_dual_mul_f32 v12, v70, v12
	v_mul_f32_e32 v11, v11, v70
	v_mul_f32_e32 v10, v10, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v70, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v110, v14, v80
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v13, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v173, v14, v85
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v174, v14, v86
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v13, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v175, v14, v87
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v176, v14, v88
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v69, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v146, v14, v85
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v69, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v147, v14, v86
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v69, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v148, v14, v87
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v69, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v149, v14, v88
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v92, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v14, v85
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v92, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v123, v14, v86
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v92, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v124, v14, v87
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v92, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v125, v14, v88
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v70, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v14, v85
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v85, v160 :: v_dual_mul_f32 v14, v70, v14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v20, v14, v86
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:308 ; 4-byte Folded Reload
	v_mov_b32_e32 v86, v170
	v_mov_b32_e32 v170, v38
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v70, v14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v18, v14, v87
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:304 ; 4-byte Folded Reload
	v_mov_b32_e32 v87, v39
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v20, off
	scratch_store_b32 off, v18, off offset:4
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v70, v14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v103, v14, v88
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:120 ; 4-byte Folded Reload
	v_mov_b32_e32 v88, v40
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v13
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v224, v14, v33
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v13, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v162, v14, v34
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v163, v14, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v13, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v164, v14, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v198, v14, v33
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v69, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v138, v14, v34
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v69, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v139, v14, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v69, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v140, v14, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v193, v14, v33
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v92, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v97, v14, v34
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v92, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v116, v14, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v92, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v14, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v225, v14, v33
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v70, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v14, v34
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v70, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v14, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v70, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v88, v14, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v13, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v165, v14, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v13
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v207, v14, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v203, v14, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v13
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v199, v14, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v69, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v141, v14, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v69
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v196, v14, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v195, v14, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v69
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v194, v14, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v92, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v14, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v92
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v192, v14, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v191, v14, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v92
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v190, v14, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v70, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v14, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v70
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v188, v14, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v187, v14, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v70
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v186, v14, v48
	v_add_nc_u32_e32 v14, s33, v17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v14, v14, s48, 1
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v19, v14
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v23
	ds_load_b128 v[18:21], v23 offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v185, v22, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v13, v234
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v150, v1, v21 :: v_dual_mul_f32 v1, v92, v42
	v_dual_fmac_f32 v153, v7, v18 :: v_dual_fmac_f32 v152, v5, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v184, v22, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v13, v233
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v129, v1, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v92, v235
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v151, v3, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v3, v13, v49 :: v_dual_fmac_f32 v182, v22, v16
	v_mul_f32_e32 v22, v13, v223
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v128, v1, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v92, v231
	v_mul_f32_e32 v5, v54, v69
	v_mul_f32_e32 v7, v69, v56
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v183, v22, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v69, v229
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v126, v1, v20 :: v_dual_mul_f32 v1, v92, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v161, v22, v14 :: v_dual_mul_f32 v22, v69, v228
	v_fmac_f32_e32 v127, v1, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v70, v84
	scratch_load_b32 v84, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v236, v22, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v69, v211
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v107, v1, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v70, v83
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v83, off, off offset:44
	scratch_load_b32 v211, off, off offset:72
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v159, v22, v16 :: v_dual_mul_f32 v22, v69, v209
	v_dual_fmac_f32 v106, v1, v19 :: v_dual_mul_f32 v1, v70, v82
	scratch_load_b32 v209, off, off offset:60 ; 4-byte Folded Reload
	v_dual_fmac_f32 v227, v22, v17 :: v_dual_mul_f32 v22, v92, v76
	v_fmac_f32_e32 v105, v1, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v70, v81
	scratch_load_b32 v81, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v137, v22, v14 :: v_dual_mul_f32 v22, v92, v75
	v_fmac_f32_e32 v104, v1, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v0, v13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:336
	scratch_load_b32 v82, off, off offset:64
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v136, v22, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v92, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v134, v22, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v92, v73
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v135, v22, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v70, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v115, v22, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v70, v91
	scratch_load_b32 v91, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v114, v14, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v70, v90
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v29, v14, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v70, v89
	scratch_load_b32 v89, off, off offset:16 ; 4-byte Folded Reload
	scratch_store_b32 off, v29, off offset:8 ; 4-byte Folded Spill
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v112, v14, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v13, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v177, v14, v18 :: v_dual_mul_f32 v14, v13, v219
	v_fmac_f32_e32 v172, v14, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	scratch_load_b32 v14, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v0, v0, v13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v170, v14, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	scratch_load_b32 v14, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v13, v14
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v171, v14, v21
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[14:17], v23 offset:512
	ds_load_b128 v[18:21], v23 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v81, v1, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v1, v13, v52 :: v_dual_fmac_f32 v166, v3, v18
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v143, v7, v18
	v_dual_fmac_f32 v201, v9, v19 :: v_dual_fmac_f32 v200, v10, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v169, v1, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v13, v51
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v168, v1, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v13, v50
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v167, v1, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v202, v69
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v202, off, off offset:32
	scratch_load_b32 v90, off, off offset:20
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v82, v1, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v69, v206
	scratch_load_b32 v206, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v145, v1, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v69, v205
	scratch_load_b32 v205, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v144, v1, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v69, v204
	scratch_load_b32 v204, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v142, v1, v17 :: v_dual_mul_f32 v1, v216, v92
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v206, v5, v20
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v204, v1, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v92, v222
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v121, v1, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v92, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v120, v1, v16 :: v_dual_mul_f32 v1, v92, v218
	v_fmac_f32_e32 v119, v1, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v2, v70
	scratch_load_b32 v2, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v189, v1, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v70, v8
	v_mul_f32_e32 v8, v210, v92
	scratch_load_b32 v210, off, off offset:68 ; 4-byte Folded Reload
	v_mul_f32_e32 v14, v213, v92
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v93, v1, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v70, v6
	v_dual_mul_f32 v15, v92, v214 :: v_dual_mul_f32 v6, v55, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v83, v8, v19 :: v_dual_fmac_f32 v202, v14, v21
	v_fmac_f32_e32 v91, v1, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v1, v70, v4 :: v_dual_mul_f32 v4, v53, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v205, v6, v21
	v_fmac_f32_e32 v90, v1, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v43, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v209, v4, v19
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v211, v1, v20 :: v_dual_mul_f32 v2, v2, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v13, v212, v92
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v212, off, off offset:76
	scratch_load_b32 v92, off, off offset:12
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v89, v12, v18 :: v_dual_fmac_f32 v84, v13, v20
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v210, v2, v21
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v212, v0, v19
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v92, v15, v18
	v_fmac_f32_e32 v197, v11, v21
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v95, off, off offset:536
	scratch_load_b32 v96, off, off offset:540
	scratch_load_b32 v98, off, off offset:544
	scratch_load_b32 v99, off, off offset:548
	scratch_load_b32 v100, off, off offset:552
	scratch_load_b32 v1, off, off offset:556
	v_mov_b32_e32 v3, v30
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v6, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v167
	v_dual_mul_f32 v0, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v183
	v_dual_mul_f32 v2, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v16, 0xbfb8aa3b, v205 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_mul_f32_e32 v0, 0xbfb8aa3b, v212
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0x42800000, s0
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v210
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v31, 0xbfb8aa3b, v159 :: v_dual_fmac_f32 v10, 0xbfb8aa3b, v81
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v236
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v15, v6
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v35, 0xbfb8aa3b, v169 :: v_dual_fmac_f32 v0, 0xbfb8aa3b, v212
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v16
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, s0
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v14, v0
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	v_ldexp_f32 v9, v10, v9
	v_mul_f32_e32 v10, 0xbfb8aa3b, v82
	v_dual_mul_f32 v6, 0xbfb8aa3b, v177 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v205
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_mul_f32_e32 v10, 0xbfb8aa3b, v209
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v11, v14, v11
	v_ldexp_f32 v14, v15, v2
	v_mul_f32_e32 v15, 0xbfb8aa3b, v206
	v_ldexp_f32 v12, v13, v12
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v15
	v_mul_f32_e32 v30, 0xbfb8aa3b, v168
	v_exp_f32_e32 v19, v19
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v166
	v_mul_f32_e32 v48, 0xbfb8aa3b, v161
	v_exp_f32_e32 v13, v13
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v209
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v206
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s0
	v_mul_f32_e32 v52, 0xbfb8aa3b, v153
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v17, v17
	v_dual_mul_f32 v38, 0xbfb8aa3b, v143 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v137
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v13, v13, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v204
	v_dual_mul_f32 v8, 0xbfb8aa3b, v185 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v171
	v_dual_mul_f32 v4, 0xbfb8aa3b, v182 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v184
	v_ldexp_f32 v10, v15, v10
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v15, v17, v16
	v_ldexp_f32 v16, v19, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v17, 0xbfb8aa3b, v83
	v_mul_f32_e32 v19, 0xbfb8aa3b, v84
	v_dual_mul_f32 v43, 0xbfb8aa3b, v127 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v172
	v_mul_f32_e32 v37, 0xbfb8aa3b, v227
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	v_dual_mul_f32 v55, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v152
	v_mul_f32_e32 v45, 0xbfb8aa3b, v145
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_mul_f32_e32 v20, 0xbfb8aa3b, v202
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v204 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v84
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v22, v22
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	v_mul_f32_e32 v50, 0xbfb8aa3b, v135
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v9, v9, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v19, v17
	v_ldexp_f32 v19, v22, v20
	v_mul_f32_e32 v20, 0xbfb8aa3b, v201
	v_mul_f32_e32 v22, 0xbfb8aa3b, v200
	v_ldexp_f32 v18, v18, v2
	v_dual_mul_f32 v2, 0xbfb8aa3b, v189 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v202
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v49, 0, 0x42800000, s0
	v_mul_f32_e32 v58, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v201
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v13, v13, v82
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v49
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v32, v25, v24
	v_mul_f32_e32 v24, 0xbfb8aa3b, v197
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v81, v9, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	v_dual_mul_f32 v34, 0xbfb8aa3b, v151 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v144
	v_ldexp_f32 v36, v65, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v66, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v22
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	v_dual_mul_f32 v42, 0xbfb8aa3b, v134 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v136
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v65, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v105
	scratch_load_b32 v101, off, off offset:8 ; 4-byte Folded Reload
	v_dual_mul_f32 v56, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v71, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v67, v63
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v197
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v11, v11, v212
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v66, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v189 :: v_dual_add_f32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v68, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v73, v75, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v53, 0xbfb8aa3b, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v60, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v106
	v_ldexp_f32 v64, v68, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v67, v65, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v91
	v_ldexp_f32 v69, v20, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v70, v73
	v_fmac_f32_e32 v65, v74, v65
	v_div_scale_f32 v74, s0, v212, v11, v212
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v14, v14, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_mul_f32 v75, v74, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, s1, v211, v14, v211
	v_rcp_f32_e32 v72, v68
	v_rcp_f32_e32 v70, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v67, v75, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v66, v9, v81
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v20, 0xbfb8aa3b, v90 :: v_dual_fmac_f32 v75, v71, v65
	v_dual_mul_f32 v62, 0xbfb8aa3b, v121 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v104
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v68, v72, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v54, 0xbfb8aa3b, v92 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v67, v75, v74
	v_div_scale_f32 v67, s3, v210, v12, v210
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v76, v72
	v_div_scale_f32 v76, null, v12, v12, v210
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v2, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v66, v65, v75
	v_mul_f32_e32 v79, v77, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v78, v76
	s_mov_b32 vcc_lo, s1
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s17, 0xffff
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v11, v65, v11, v212
	v_fma_f32 v71, -v68, v79, v77
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v93
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_mul_f32_e32 v49, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v71, v72
	v_fma_f32 v73, -v76, v78, 1.0
	v_fma_f32 v71, -v80, v70, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v68, v79, v77
	v_fmac_f32_e32 v78, v73, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, null, v10, v10, v209
	v_div_scale_f32 v73, s0, v82, v13, v82
	v_mul_f32_e32 v68, v67, v78
	v_div_fmas_f32 v66, v66, v72, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v72, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_mul_f32 v75, v73, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v76, v68, v67
	v_div_scale_f32 v77, null, v15, v15, v206
	v_div_fixup_f32 v14, v66, v14, v211
	v_fma_f32 v65, -v80, v75, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v68, v74, v78
	v_rcp_f32_e32 v66, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v74, -v71, v72, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v32, 1.0, v32 :: v_dual_fmac_f32 v75, v65, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v76, v68, v67
	v_div_scale_f32 v76, null, v16, v16, v205
	v_fmac_f32_e32 v72, v74, v72
	v_div_scale_f32 v65, s1, v209, v10, v209
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v74, v76
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v77, v66, 1.0
	v_div_fmas_f32 v67, v67, v78, v68
	v_fma_f32 v68, -v80, v75, v73
	v_mul_f32_e32 v73, v65, v72
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v66, v79, v66
	v_div_scale_f32 v78, s3, v206, v15, v206
	v_fma_f32 v79, -v76, v74, 1.0
	v_div_scale_f32 v80, null, v18, v18, v204
	v_div_fmas_f32 v68, v68, v70, v75
	v_fma_f32 v70, -v71, v73, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v36, 1.0, v36 :: v_dual_mul_f32 v75, v78, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v79, v74
	v_rcp_f32_e32 v79, v80
	v_div_scale_f32 v81, s0, v205, v16, v205
	v_fmac_f32_e32 v73, v70, v72
	v_div_scale_f32 v70, null, v17, v17, v83
	v_div_fixup_f32 v12, v67, v12, v210
	v_div_fixup_f32 v13, v68, v13, v82
	v_fma_f32 v67, -v77, v75, v78
	v_mul_f32_e32 v68, v81, v74
	v_fma_f32 v65, -v71, v73, v65
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v82, -v80, v79, 1.0
	v_fmac_f32_e32 v75, v67, v66
	v_fma_f32 v67, -v76, v68, v81
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v79, v82, v79
	v_div_scale_f32 v82, s4, v204, v18, v204
	v_div_fmas_f32 v65, v65, v72, v73
	v_fma_f32 v72, -v77, v75, v78
	v_fmac_f32_e32 v68, v67, v74
	v_fma_f32 v73, -v70, v71, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v64, 1.0, v64 :: v_dual_mul_f32 v67, v82, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v72, v66, v75
	v_fma_f32 v72, -v76, v68, v81
	v_fmac_f32_e32 v71, v73, v71
	v_div_scale_f32 v73, null, v19, v19, v84
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v75, -v80, v67, v82
	v_div_scale_f32 v76, s1, v83, v17, v83
	v_div_fmas_f32 v68, v72, v74, v68
	v_rcp_f32_e32 v72, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v75, v79
	v_mul_f32_e32 v74, v76, v71
	v_div_fixup_f32 v10, v65, v10, v209
	v_div_fixup_f32 v65, v66, v15, v206
	v_div_fixup_f32 v66, v68, v16, v205
	v_fma_f32 v15, -v80, v67, v82
	v_fma_f32 v16, -v70, v74, v76
	v_div_scale_f32 v68, null, v32, v32, v202
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v75, -v73, v72, 1.0
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v74, v16, v71
	v_div_fmas_f32 v15, v15, v79, v67
	v_rcp_f32_e32 v67, v68
	v_fmac_f32_e32 v72, v75, v72
	v_div_scale_f32 v75, null, v69, v69, v189
	v_div_scale_f32 v16, s0, v84, v19, v84
	v_div_fixup_f32 v77, v15, v18, v204
	v_fma_f32 v15, -v70, v74, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v76, v75
	v_mul_f32_e32 v18, v16, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v68, v67, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v15, v15, v71, v74
	v_fma_f32 v71, -v73, v18, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v74, s1, v202, v32, v202
	v_fma_f32 v78, -v75, v76, 1.0
	v_div_fixup_f32 v79, v15, v17, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v18, v71, v72 :: v_dual_mul_f32 v17, v74, v67
	v_div_scale_f32 v71, s3, v189, v69, v189
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v70, null, v36, v36, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v73, v18, v16
	v_fma_f32 v73, -v68, v17, v74
	v_mul_f32_e32 v80, v71, v76
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v15, v70
	v_div_scale_f32 v78, null, v63, v63, v200
	v_div_scale_f32 v83, null, v64, v64, v197
	v_div_fmas_f32 v16, v16, v72, v18
	v_fmac_f32_e32 v17, v73, v67
	v_fma_f32 v18, -v75, v80, v71
	v_rcp_f32_e32 v82, v78
	v_rcp_f32_e32 v72, v83
	v_div_fixup_f32 v84, v16, v19, v84
	v_fma_f32 v16, -v68, v17, v74
	v_fmac_f32_e32 v80, v18, v76
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v81, -v70, v15, 1.0
	v_div_scale_f32 v73, s0, v201, v36, v201
	v_div_fmas_f32 v16, v16, v67, v17
	v_fma_f32 v17, -v75, v80, v71
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v15, v81, v15
	v_fma_f32 v81, -v78, v82, 1.0
	v_fma_f32 v68, -v83, v72, 1.0
	v_div_fmas_f32 v17, v17, v76, v80
	v_div_scale_f32 v19, s4, v200, v63, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v81, v82
	v_div_fixup_f32 v32, v16, v32, v202
	v_div_fixup_f32 v69, v17, v69, v189
	v_fmac_f32_e32 v72, v68, v72
	v_div_scale_f32 v68, s1, v197, v64, v197
	v_dual_mul_f32 v18, v73, v15 :: v_dual_mul_f32 v71, v19, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v70, v18, v73
	v_fma_f32 v16, -v78, v71, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v18, v67, v15 :: v_dual_mul_f32 v67, v68, v72
	v_fmac_f32_e32 v71, v16, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v8, -v70, v18, v73
	v_fma_f32 v16, -v83, v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v8, v15, v18
	v_fma_f32 v15, -v78, v71, v19
	v_dual_fmac_f32 v67, v16, v72 :: v_dual_fmac_f32 v70, 0xbfb8aa3b, v185
	s_mov_b32 vcc_lo, s4
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v224, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v82, v71
	v_fma_f32 v16, -v83, v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v36, v8, v36, v201
	v_div_fixup_f32 v63, v15, v63, v200
	v_div_fmas_f32 v7, v16, v72, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v7, v64, v197
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v18, v17
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v184
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v15
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v183
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v198, v13
	v_mul_f32_e32 v13, v195, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v207, v11
	v_mul_f32_e32 v17, v199, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v68
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v5, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, vcc_lo, v185, v67, v185
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v9, v7
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v182 :: v_dual_mul_f32 v9, v190, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v68, v70, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v193, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v4, v188, v36
	scratch_load_b32 v82, off, off          ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v71, v71, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v32, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v74, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v5, v187, v63 :: v_dual_add_f32 v36, 1.0, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v75, v32, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v46, 0xbfb8aa3b, v101
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v74, v32
	v_fmac_f32_e32 v70, v7, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v194, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v65, v65, v184
	v_div_scale_f32 v74, null, v36, v36, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v76, v72, v70
	v_rcp_f32_e32 v73, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v225, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s0, v184, v65, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v68, v76, v72
	v_fmac_f32_e32 v76, v77, v70
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v66, v73, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v203, v14
	v_mul_f32_e32 v14, v196, v10
	v_mul_f32_e32 v10, v192, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v68, v76, v72
	v_fmac_f32_e32 v73, v78, v73
	v_div_scale_f32 v72, s1, v183, v71, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v63, v63, v70, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v74
	v_dual_mul_f32 v68, v69, v73 :: v_dual_mul_f32 v77, v72, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v63, v63, v67, v185
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v66, v68, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v6, v186, v64 :: v_dual_fmac_f32 v79, 0xbfb8aa3b, v177
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v74, v70, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v68, v76, v73
	v_fma_f32 v64, -v75, v77, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v79
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v67, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v68, v69
	v_fmac_f32_e32 v77, v64, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v172
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s3, v182, v36, v182
	v_div_fmas_f32 v66, v66, v73, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v78
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_exp_f32_e32 v23, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v69, v70
	v_fma_f32 v72, -v75, v77, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v74, v68, v69
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v76, null, v67, v67, v177
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v23, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v72, v32, v77
	v_fmac_f32_e32 v68, v28, v70
	v_rcp_f32_e32 v64, v76
	v_div_fixup_f32 v28, v66, v65, v184
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v32, v71, v183
	v_fma_f32 v32, -v74, v68, v69
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v8, v191, v84 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v170
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v65, v65, v172
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v76, v64, 1.0
	v_div_fmas_f32 v32, v32, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v75
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v69
	v_div_scale_f32 v70, s0, v177, v67, v177
	v_fmac_f32_e32 v64, v71, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v32, v36, v182
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v180, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v70, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v69, v68, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v76, v71, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v72, v68
	v_div_scale_f32 v72, s1, v172, v65, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v73, v64
	v_div_scale_f32 v74, null, v66, v66, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v73, v72, v68
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v70, -v76, v71, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v75, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v181, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v69, v73, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v70, v64, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, s0, v170, v66, v170
	v_fmac_f32_e32 v73, v76, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v64, v67, v177
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v69, v73, v72
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v30, v67, v68, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v36, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v178, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v74, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v30, v65, v172
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v75, v63, v75 :: v_dual_fmac_f32 v68, 0xbfb8aa3b, v168
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v36, v36, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v72, v35, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v71, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v74, v72, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v0
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v72, v30, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v68, v67
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v167
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v69, v63, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v74, v72, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v74, 1.0, v29 :: v_dual_add_f32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v73, v63
	v_div_scale_f32 v73, s1, v171, v36, v171
	v_div_scale_f32 v68, null, v74, v74, v169
	v_div_fmas_f32 v35, v35, v75, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v30, v73, v63
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v0, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v69, v30, v73
	v_fmac_f32_e32 v30, v29, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v67, v67, v168
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v68, v0, 1.0
	v_fma_f32 v69, -v69, v30, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v76, v0
	v_div_fmas_f32 v30, v69, v63, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, vcc_lo, v169, v74, v169
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v70
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v71, v75, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v28, v179, v28 :: v_dual_fmac_f32 v75, v69, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s0, v168, v67, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v77, v69, v75
	v_div_fixup_f32 v30, v30, v36, v171
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v63, v0
	v_div_fixup_f32 v35, v35, v66, v170
	v_fma_f32 v66, -v68, v73, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v72, v36, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v66, v0
	v_fma_f32 v66, -v71, v77, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v173, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v68, v73, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v66, v75
	v_div_scale_f32 v66, null, v64, v64, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v63, v0, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v71, v77, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v66
	v_div_fixup_f32 v0, v0, v74, v169
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v73, s0, v166, v64, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v161
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v63, v75, v77
	v_fma_f32 v72, -v66, v48, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v39, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v63, v67, v168
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v48, v72, v48
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v176, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v39, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v73, v48
	v_div_scale_f32 v76, null, v70, v70, v167
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v236
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v66, v39, v73
	v_rcp_f32_e32 v78, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v30, v175, v35 :: v_dual_mul_f32 v35, v174, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v37, v48
	v_div_scale_f32 v75, null, v74, v74, v161
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v65, -v76, v78, 1.0
	v_fma_f32 v66, -v66, v39, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v72, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v65, v78
	v_div_scale_f32 v65, s1, v167, v70, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v65, v78
	v_fma_f32 v67, -v76, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v67, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v76, v71, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v65, v65, v78, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v159
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v39, v66, v48, v39
	v_div_scale_f32 v73, vcc_lo, v161, v74, v161
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, s0, v236, v71, v236
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v69
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v31, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v71, v71, v236
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v75, v68, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v67
	v_div_fixup_f32 v31, v39, v64, v166
	v_fmac_f32_e32 v68, v37, v68
	v_div_fixup_f32 v37, v65, v70, v167
	v_div_scale_f32 v64, null, v72, v72, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v165, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v73, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v164, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v67, v66, 1.0
	v_fma_f32 v70, -v75, v65, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v66, v39, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v163, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v70, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v162, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v76, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v64, v69, 1.0
	v_div_scale_f32 v78, null, v63, v63, v159
	v_fma_f32 v0, -v75, v65, v73
	v_fma_f32 v73, -v67, v70, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, v77, v69
	v_rcp_f32_e32 v75, v78
	v_div_scale_f32 v77, s1, v227, v72, v227
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v73, v66
	v_div_fmas_f32 v0, v0, v68, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v77, v69
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v67, -v67, v70, v76
	v_div_fixup_f32 v0, v0, v74, v161
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v78, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v153
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v64, v68, v77
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v73, s3, v159, v63, v159
	v_div_fmas_f32 v40, v67, v66, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, s4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v73, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v74, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v152
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v78, v66, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v64, v68, v77
	v_div_fixup_f32 v40, v40, v71, v236
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v151
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v34, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v70
	v_ldexp_f32 v52, v65, v52
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v78, v66, v73
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v67
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v33, v33, v75, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v68, v65
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v63, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v68, null, v66, v66, v152
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v64, v72, v227
	v_rcp_f32_e32 v75, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v157, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v74, v74, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v63, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v73, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v68, v75, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v71, v75
	v_fma_f32 v71, -v76, v63, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v72, null, v67, v67, v150
	v_fmac_f32_e32 v63, v71, v63
	v_div_scale_f32 v71, s1, v151, v74, v151
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v52, v52, v153
	v_rcp_f32_e32 v69, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v70, v69, 1.0
	v_fmac_f32_e32 v69, v65, v69
	v_div_scale_f32 v65, vcc_lo, v153, v52, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v65, v69
	v_fma_f32 v64, -v70, v77, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v64, v69
	v_fma_f32 v65, -v70, v77, v65
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v65, v65, v69, v77
	v_mul_f32_e32 v77, v71, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v154, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v72
	v_div_fixup_f32 v0, v65, v52, v153
	v_fma_f32 v52, -v76, v77, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v52, v63
	v_div_scale_f32 v64, s0, v152, v66, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v72, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v64, v75
	v_fma_f32 v71, -v76, v77, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v65, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v68, v70, v64
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v65, 0xbfb8aa3b, v144 :: v_dual_fmac_f32 v70, v73, v75
	v_ldexp_f32 v47, v47, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v156, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v68, v70, v64
	v_div_scale_f32 v68, s3, v150, v67, v150
	v_div_fmas_f32 v64, v64, v75, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_exp_f32_e32 v41, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v65, 1.0, v47 :: v_dual_mul_f32 v70, v68, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v65, v65, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v47, -v72, v70, v68
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v41, v52
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v76
	v_div_fmas_f32 v63, v71, v63, v77
	v_fmac_f32_e32 v70, v47, v69
	v_div_fixup_f32 v47, v64, v66, v152
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v40, v155, v40 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v147, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v52, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v71, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v63, v74, v151
	v_fma_f32 v63, -v72, v70, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v148, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v63, v69, v70
	v_div_scale_f32 v70, s0, v145, v65, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v38, v63, v67, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v71, v70, v52
	v_div_scale_f32 v68, null, v64, v64, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v76, v71, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v69, v68
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v143
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v66, v66, v142
	v_fmac_f32_e32 v71, v73, v52
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v149, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v74
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v72, -v68, v69, 1.0
	v_fma_f32 v70, -v76, v71, v70
	v_fmac_f32_e32 v69, v72, v69
	v_div_scale_f32 v72, s1, v144, v64, v144
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v67, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v72, v69
	v_div_fmas_f32 v67, v70, v52, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v146, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, s0, v142, v66, v142
	v_fma_f32 v76, -v68, v73, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v74, v75, 1.0
	v_div_fixup_f32 v65, v67, v65, v145
	v_fmac_f32_e32 v73, v76, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v137
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v68, v73, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v0, v0, v143
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v51, v67, v69, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v69, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v64, v144
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v71, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v63, v75
	v_rcp_f32_e32 v63, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_dual_mul_f32 v72, v59, v75 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v136
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v139, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v74, v72, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v73, -v68, v63, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v64, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v59, -v74, v72, v59
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v69, v67
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v59, v75, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v73, v63
	v_div_scale_f32 v73, s1, v143, v0, v143
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v74, v74, v137
	v_mul_f32_e32 v64, v73, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v68, v64, v73
	v_fmac_f32_e32 v64, v50, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v68, v64, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v59, v59, v63, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v69, v71, 1.0
	v_div_scale_f32 v63, vcc_lo, v137, v74, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v0, v59, v0, v143
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v67, 1.0, v67 :: v_dual_add_f32 v70, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v42, v66, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v141, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v67, v67, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v140, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v59, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v138, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v76, v73, 1.0
	v_div_scale_f32 v68, null, v65, v65, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v64, v73
	v_div_scale_f32 v64, s0, v136, v67, v136
	v_fmac_f32_e32 v71, v75, v71
	v_div_scale_f32 v75, null, v70, v70, v135
	v_mul_f32_e32 v66, v64, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v72, v63, v71
	v_rcp_f32_e32 v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v69, v72, v63
	v_fmac_f32_e32 v72, v0, v71
	v_fma_f32 v0, -v76, v66, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v69, v72, v63
	v_fmac_f32_e32 v66, v0, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v75, v77, 1.0
	v_div_fmas_f32 v63, v63, v71, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v0, v77
	v_rcp_f32_e32 v0, v68
	v_fma_f32 v64, -v76, v66, v64
	v_div_scale_f32 v56, s1, v135, v70, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v63, v63, v74, v137
	v_div_fmas_f32 v64, v64, v73, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v129
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v0, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v56, v77
	v_div_scale_f32 v73, s0, v134, v65, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v72, v0
	v_div_fixup_f32 v64, v64, v67, v136
	v_fma_f32 v67, -v75, v66, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v44, v53, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v73, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v68, v53, v73
	v_dual_fmac_f32 v66, v67, v77 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v44, v0
	v_fma_f32 v56, -v75, v66, v56
	v_div_scale_f32 v75, null, v74, v74, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v128
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v43, v43, v67
	v_ldexp_f32 v44, v72, v71
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v56, v56, v77, v66
	v_fma_f32 v66, -v68, v53, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v44, -v75, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v66, v0, v53
	v_div_scale_f32 v67, null, v68, v68, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v44, v69
	v_div_scale_f32 v73, vcc_lo, v129, v74, v129
	v_rcp_f32_e32 v66, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v56, v70, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v70, v73, v69
	v_div_fixup_f32 v0, v0, v65, v134
	v_div_scale_f32 v77, s0, v128, v68, v128
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v75, v70, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v133, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v67, v66, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v53, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v53, v131, v64 :: v_dual_fmac_f32 v70, v76, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v56, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v130, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v75, v70, v73
	v_mul_f32_e32 v64, v77, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v78, null, v0, v0, v127
	v_div_fmas_f32 v62, v63, v69, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v67, v64, v77
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v75, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s3
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v64, v73, v66 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v121
	v_fma_f32 v67, -v67, v64, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v78, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v60, v67, v66, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v73, s3, v127, v0, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v72, v72, v126
	v_mul_f32_e32 v64, v73, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v69, v63
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v78, v64, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v60, v60, v68, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v64, v55, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v63, v63, v121
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v65, v71, 1.0
	v_fmac_f32_e32 v71, v76, v71
	v_div_scale_f32 v76, s1, v126, v72, v126
	v_div_fixup_f32 v62, v62, v74, v129
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v55, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v76, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v65, v70, v76
	v_fmac_f32_e32 v70, v74, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v65, v70, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v65, v71, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	v_exp_f32_e32 v70, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v67
	v_fma_f32 v54, -v78, v64, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v54, v54, v75, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v67, v71, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v132, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v64, v64, v120
	v_fmac_f32_e32 v71, v69, v71
	v_div_scale_f32 v69, vcc_lo, v121, v63, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v75, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v69, v71
	v_div_fixup_f32 v0, v54, v0, v127
	v_div_fixup_f32 v55, v65, v72, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v76, null, v74, v74, v119
	v_fma_f32 v68, -v67, v77, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v72, -v70, v75, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v125, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v73, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, s0, v120, v64, v120
	v_fmac_f32_e32 v77, v68, v71
	v_fmac_f32_e32 v75, v72, v75
	v_rcp_f32_e32 v65, v76
	v_div_scale_f32 v72, s1, v119, v74, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v67, v77, v69
	v_mul_f32_e32 v69, v66, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v124, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v67, v71, v77
	v_fma_f32 v71, -v70, v69, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v76, v65, 1.0
	v_div_fixup_f32 v67, v67, v63, v121
	v_fmac_f32_e32 v69, v71, v75
	v_div_scale_f32 v73, null, v0, v0, v92
	v_fmac_f32_e32 v65, v68, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v77, v72, v65 :: v_dual_mul_f32 v60, v123, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v79, 0xbfb8aa3b, v115 :: v_dual_mul_f32 v68, v122, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v70, v69, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v62, -v76, v77, v72
	v_div_scale_f32 v70, s3, v92, v0, v92
	v_fma_f32 v63, -v73, v61, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v79
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v62, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v97, v97, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v63, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v71, -v76, v77, v72
	v_div_fmas_f32 v66, v66, v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v114
	v_ldexp_f32 v58, v58, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v70, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v57, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v73, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v76, null, v58, v58, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v69, v63, v61
	v_div_fmas_f32 v65, v71, v65, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v76
	v_div_fixup_f32 v63, v66, v64, v120
	v_fma_f32 v64, -v73, v69, v70
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v65, v74, v119
	v_div_fmas_f32 v61, v64, v61, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v57, v57, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v76, v71, 1.0
	v_div_fixup_f32 v0, v61, v0, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v64, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v70, v71
	v_div_scale_f32 v69, s0, v115, v58, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v65, v65, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v46, v118, v0 :: v_dual_mul_f32 v63, v116, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v66, v64, 1.0
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v73, v64
	v_mul_f32_e32 v72, v69, v71
	v_div_scale_f32 v73, s1, v114, v57, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v101
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v0, v0, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v76, v72, v69
	v_rcp_f32_e32 v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v72, v65, v71
	v_mul_f32_e32 v65, v73, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v72, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v76, -v66, v65, v73
	v_fma_f32 v67, -v74, v75, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v117, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v69, v69, v71, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	v_ldexp_f32 v61, v70, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v67, v75
	v_div_scale_f32 v49, s0, v112, v0, v112
	v_div_fixup_f32 v69, v69, v58, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v76, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v58, -v66, v65, v73
	v_div_scale_f32 v66, null, v61, v61, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v27, v58, v64, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, s3
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v57, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v106
	v_exp_f32_e32 v71, v71
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v64, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v66, v67, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v71, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v49, v75
	v_fmac_f32_e32 v67, v72, v67
	v_div_scale_f32 v72, s1, v101, v61, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v74, v65, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v58, v64, v58
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v65, v57, v75
	v_mul_f32_e32 v57, v72, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v66, v57, v72
	v_fmac_f32_e32 v57, v73, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v66, v57, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v73, v73, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v104
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v58, v58, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v74, v65, v49
	v_div_scale_f32 v74, null, v26, v26, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v77, null, v70, v70, v105
	v_rcp_f32_e32 v25, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v49, v49, v75, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v78, v77
	v_div_fmas_f32 v57, v64, v67, v57
	v_div_fixup_f32 v0, v49, v0, v112
	v_div_scale_f32 v67, vcc_lo, v107, v26, v107
	v_fma_f32 v64, -v71, v72, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v74, v25, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v110, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v66, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v57, v57, v61, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v72, v64, v72 :: v_dual_fmac_f32 v25, v75, v25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v109, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, s0, v106, v73, v106
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v75, v67, v25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v111, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v76, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v24
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v108, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v74, v75, v67
	v_div_scale_f32 v66, null, v0, v0, v104
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v49, v25
	v_fma_f32 v49, -v71, v57, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v74, v75, v67
	v_fmac_f32_e32 v57, v49, v72
	v_fma_f32 v49, -v77, v78, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v27, v25, v75
	v_fma_f32 v27, -v71, v57, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v78, v49, v78
	v_div_scale_f32 v49, s1, v105, v70, v105
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v25, v25, v26, v107
	v_div_fmas_f32 v24, v27, v72, v57
	v_mul_f32_e32 v27, v49, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v24, v73, v106
	v_fma_f32 v22, -v77, v27, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s0, v104, v0, v104
	v_fmac_f32_e32 v27, v22, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v69
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v91
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v66, v57, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v2, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v77, v27, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v90
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v20, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v22, v67
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v71, 0xbfb8aa3b, v89 :: v_dual_mul_f32 v82, v82, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v49, v78, v27
	v_mul_f32_e32 v49, v73, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v2, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v26, v71
	v_exp_f32_e32 v67, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v66, v49, v73
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v27, v27, v70, v105
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v22, v22, v93
	v_fmac_f32_e32 v49, v72, v57
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v26, v20
	v_ldexp_f32 v67, v67, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v71
	v_div_scale_f32 v26, null, v2, v2, v91
	v_fma_f32 v66, -v66, v49, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	v_add_f32_e32 v70, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v26
	v_div_scale_f32 v78, s0, v91, v2, v91
	v_div_fmas_f32 v49, v66, v57, v49
	v_div_scale_f32 v57, null, v20, v20, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v71, v69, 1.0
	v_div_scale_f32 v72, null, v70, v70, v90
	v_rcp_f32_e32 v76, v57
	v_div_scale_f32 v75, vcc_lo, v93, v22, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v67, v69
	v_rcp_f32_e32 v74, v72
	v_fma_f32 v66, -v26, v73, 1.0
	v_div_fixup_f32 v0, v49, v0, v104
	v_div_scale_f32 v81, s3, v89, v20, v89
	v_mul_f32_e32 v77, v75, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v57, v76, 1.0
	v_dual_fmac_f32 v73, v66, v73 :: v_dual_mul_f32 v66, v103, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v72, v74, 1.0
	v_fmac_f32_e32 v76, v67, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	scratch_load_b32 v67, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v71, v77, v75
	v_dual_mul_f32 v79, v78, v73 :: v_dual_fmac_f32 v74, v49, v74
	v_div_scale_f32 v49, s1, v90, v70, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v0, v69
	v_fma_f32 v0, -v26, v79, v78
	v_mul_f32_e32 v83, v81, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v80, v49, v74
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v71, v77, v75
	v_fmac_f32_e32 v79, v0, v73
	v_fma_f32 v0, -v57, v83, v81
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v71, |v56|, |v53|
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v75, 8, v95
	s_barrier
.Ltmp9:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v26, v79, v78
	v_fmac_f32_e32 v83, v0, v76
	v_div_fmas_f32 v24, v24, v69, v77
	s_mov_b32 vcc_lo, s0
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v69, |v59|, |v51|, |v50|
	s_mov_b32 s0, 0x76543210
.Ltmp11:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v73, v79
	s_mov_b32 vcc_lo, s1
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v73, |v97|, |v63|, |v62|
.Ltmp13:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v24, v22, v93
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v24, |v32|, |v28|
.Ltmp15:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v26, v2, v91
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v48|, |v39|, |v37|
.Ltmp17:
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v67, v67, v27
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fma_f32 v27, -v72, v80, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v27, v74
	v_fma_f32 v27, -v57, v83, v81
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v81, v94, v25
.Ltmp18:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v23|, |v36|, |v35|
.Ltmp19:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v72, v80, v49
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v72, |v44|, |v68|, |v60|
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v74, v80
	s_mov_b32 vcc_lo, s3
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v74, |v46|, |v10|, |v8|
.Ltmp23:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v76, v83
	v_div_fixup_f32 v0, v0, v70, v90
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v70, |v42|, |v14|, |v13|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v27, v20, v89
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v31|, |v18|, |v16|
.Ltmp27:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v88, v0
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v30|, |v29|, |v19|
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp29:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v85, v20
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v24, |v21|, v25
	v_max3_f32 v24, v26, v27, |v17|
	v_max_f32_e64 v25, |v45|, |v40|
	v_max3_f32 v26, |v34|, |v52|, |v47|
	v_max3_f32 v27, |v41|, |v38|, |v15|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v0, v20, v0, v24
	v_max3_f32 v24, |v58|, |v81|, |v82|
	v_max3_f32 v25, v25, |v33|, v26
	v_max3_f32 v26, v69, v70, |v12|
	v_max3_f32 v69, |v55|, |v54|, |v11|
	v_max3_f32 v70, v71, |v43|, v72
	v_max3_f32 v71, v73, v74, |v9|
.Ltmp31:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v87, v2
	v_mul_f32_e32 v74, v86, v22
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v25, v27, v26
	v_max_f32_e64 v22, |v65|, |v64|
	v_max3_f32 v20, v70, v69, v71
	v_max3_f32 v27, |v49|, |v4|, |v5|
	v_max3_f32 v26, |v74|, |v73|, |v57|
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v69, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v22, |v61|, v24
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v24, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v70, v20, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v26, v27, |v6|
	v_max_f32_e32 v27, v69, v69
	v_max3_f32 v25, |v67|, |v66|, |v7|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v71, v70, v70
	v_max_f32_e32 v69, v0, v27
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v22, v25, v26
	v_dual_max_f32 v70, v2, v24 :: v_dual_max_f32 v71, v20, v71
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v20, 4, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v25, v0, 9, 0
	v_lshlrev_b32_e32 v24, 5, v0
	v_permlanex16_b32 v2, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v26, 0x60, v95
	v_and_b32_e32 v27, 0x80, v95
	v_lshl_add_u32 v72, v20, 2, v25
	v_and_or_b32 v1, 0x680, v1, v24
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v76, v24, v26
	v_lshlrev_b32_e32 v25, 1, v27
	v_lshl_add_u32 v77, v75, 4, v72
	v_lshrrev_b32_e32 v78, 3, v27
	v_xor_b32_e32 v1, v1, v26
	v_lshl_add_u32 v79, v20, 6, 0
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v22, v2
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v77, v25, v76
	v_lshl_add_u32 v0, v0, 4, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v1, v79, v78, v1
	ds_store_b128 v2, v[69:72]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v70
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v76, v72, v72
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v22, v71
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v22, v22, v22
	v_max_f32_e32 v2, v70, v2
	v_max_f32_e32 v70, v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v2
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v72, v72, v72 :: v_dual_mov_b32 v1, v69
	v_dual_max_f32 v69, v69, v69 :: v_dual_max_f32 v2, v2, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v69, v1
	v_max_f32_e32 v69, v71, v71
	v_max_f32_e32 v22, v69, v22
	v_max_f32_e32 v69, v76, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v70, v22 :: v_dual_add_nc_u32 v27, 0, v27
	v_dual_mov_b32 v76, v69 :: v_dual_lshlrev_b32 v75, 3, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v70, v70, v70
	v_dual_max_f32 v22, v22, v70 :: v_dual_mov_b32 v71, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v71
	v_dual_max_f32 v71, v76, v76 :: v_dual_mov_b32 v76, v2
	v_max_f32_e32 v77, v69, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v71, v22 :: v_dual_mov_b32 v78, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v70, v76, v76
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshrrev_b32_e32 v76, 1, v26
.Ltmp58:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v26, v100, v26
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v70, v2, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v78, v78
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v1
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v69, v72, v72 :: v_dual_max_f32 v72, v77, v2
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v27, v76, v75
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v69, v1, v69
	v_max_f32_e32 v1, v71, v71
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v71, v22, v1
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 5, v20
.Ltmp66:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v22, 4, v99
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v2, v[69:72]
	v_add3_u32 v0, v0, v1, v75
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp68:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v75, 32, v22
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[69:72], v0
.Ltmp70:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v69, v69 :: v_dual_max_f32 v69, v71, v71
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v2, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v72, 0x2b8cbccc, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v70, 0x2b8cbccc, v70
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s34, v0
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v27, v20
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v75, s0, s34, v75
	v_add_co_ci_u32_e64 v76, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v72
	v_div_scale_f32 v83, null, 0x40e00000, 0x40e00000, v70
	v_fma_f32 v71, -v20, v27, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v22
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[38:39], v[75:76]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v27, v71, v27
	v_div_scale_f32 v71, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v78, v71, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v20, v78, v71
	v_fmac_f32_e32 v78, v0, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s4, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v20, -v20, v78, v71
	v_rcp_f32_e32 v71, v83
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[75:76]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v76.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v20, v20, v27, v78
	v_rcp_f32_e32 v78, v84
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[0:1]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v20, 0x40e00000, v2
	v_fma_f32 v75, -v83, v71, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v85, -v84, v78, 1.0
	v_fmac_f32_e32 v71, v75, v71
	v_div_scale_f32 v75, s8, v70, 0x40e00000, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v85, v78
	v_div_scale_f32 v85, s9, v72, 0x40e00000, v72
	v_dual_max_f32 v69, 0x2b8cbccc, v69 :: v_dual_mul_f32 v86, v75, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v77, null, 0x40e00000, 0x40e00000, v69
	v_rcp_f32_e32 v79, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v77, v79, 1.0
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, s7, v69, 0x40e00000, v69
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v27, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v77, v27, v80
	v_fmac_f32_e32 v27, v20, v79
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v20.l, v2.h
	v_mov_b16_e32 v20.h, v76.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v77, v27, v80
	v_fma_f32 v77, -v83, v86, v75
	v_dual_mul_f32 v80, v85, v78 :: v_dual_and_b32 v1, 1, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v0, v79, v27
	v_fmac_f32_e32 v86, v77, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v20, v2, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v84, v80, v85
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v27, v27, 0x40e00000, v69
	v_fma_f32 v69, -v83, v86, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v80, v2, v78 :: v_dual_and_b32 v77, 0xffff0000, v20
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s7, s34, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v69, v71, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v79, null, v77, v77, v32
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v69, -v84, v80, v85
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v2, 0x40e00000, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v71, v79
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v69, v69, v78, v80
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v76.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[38:39], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[36:37], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fixup_f32 v69, v69, 0x40e00000, v72
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v72.l, v2.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v78, -v79, v71, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v72.h, v76.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v71, v78, v71
	v_div_scale_f32 v78, vcc_lo, v32, v77, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v0, 1, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v72, v78, v71
	v_div_scale_f32 v83, null, v77, v77, v21
	v_div_scale_f32 v70, null, v77, v77, v28
	v_div_scale_f32 v85, null, v77, v77, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v84, v83
	v_rcp_f32_e32 v80, v70
	v_div_scale_f32 v90, null, v77, v77, v36
	v_div_scale_f32 v86, s9, v28, v77, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v83, v84, 1.0
	v_fmac_f32_e32 v84, v88, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v75, 1, v76
	v_mov_b16_e32 v76.l, v69.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, s10, v21, v77, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v27, v75, 0x7fff
	v_add3_u32 v27, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v79, v72, v78
	v_fma_f32 v75, -v70, v80, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v76, 1, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v72, v0, v71
	v_rcp_f32_e32 v0, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v75, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v69, v76, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v69, 0xffff0000, v27
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v78, -v79, v72, v78
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v76, 0xffff0000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v78, v71, v72
	v_rcp_f32_e32 v78, v90
	v_fma_f32 v89, -v85, v0, 1.0
	v_dual_mul_f32 v72, v88, v84 :: v_dual_and_b32 v75, 0xffff0000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v32, v71, v77, v32
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v0, v89, v0
	v_div_scale_f32 v89, null, v77, v77, v35
	v_fma_f32 v71, -v83, v72, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v90, v78, 1.0
	v_mul_f32_e32 v87, v86, v80
	v_rcp_f32_e32 v91, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v72, v71, v84
	v_fmac_f32_e32 v78, v92, v78
	v_fma_f32 v79, -v70, v87, v86
	v_div_scale_f32 v92, null, v77, v77, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v87, v79, v80
	v_div_scale_f32 v79, s11, v23, v77, v23
	v_fma_f32 v70, -v70, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v70, v70, v80, v87
	v_div_scale_f32 v80, s9, v36, v77, v36
	v_mul_f32_e32 v86, v79, v0
	v_fma_f32 v87, -v89, v91, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v28, v70, v77, v28
	v_fma_f32 v70, -v83, v72, v88
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v71, -v85, v86, v79
	v_fmac_f32_e32 v91, v87, v91
	v_div_scale_f32 v87, null, v77, v77, v30
	v_div_fmas_f32 v70, v70, v84, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v71, v0 :: v_dual_mul_f32 v71, v80, v78
	v_rcp_f32_e32 v84, v87
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, s12, v35, v77, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v85, v86, v79
	v_fma_f32 v79, -v90, v71, v80
	v_div_fixup_f32 v21, v70, v77, v21
	v_div_scale_f32 v70, s10, v30, v77, v30
	v_div_fmas_f32 v0, v72, v0, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v77, v77, v29
	v_div_fixup_f32 v23, v0, v77, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v84, v86, v84 :: v_dual_fmac_f32 v71, v79, v78
	v_mul_f32_e32 v85, v83, v91
	v_rcp_f32_e32 v72, v88
	v_div_scale_f32 v86, null, v77, v77, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v90, v71, v80
	v_div_scale_f32 v80, null, v77, v77, v19
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v78, v71
	v_mul_f32_e32 v78, v70, v84
	v_fma_f32 v79, -v89, v85, v83
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v36, v0, v77, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v79, v91
	v_fma_f32 v79, -v88, v72, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v89, v85, v83
	v_div_scale_f32 v83, s9, v29, v77, v29
	v_div_fmas_f32 v71, v71, v91, v85
	v_fma_f32 v85, -v87, v78, v70
	v_rcp_f32_e32 v91, v86
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v35, v71, v77, v35
	v_fmac_f32_e32 v78, v85, v84
	v_div_scale_f32 v85, null, v77, v77, v39
	v_div_scale_f32 v71, s11, v19, v77, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v87, v78, v70
	v_rcp_f32_e32 v87, v85
	v_fmac_f32_e32 v72, v79, v72
	v_rcp_f32_e32 v79, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v84, v78
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v89, v83, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v30, v70, v77, v30
	v_fma_f32 v0, -v88, v89, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v80, v79, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v90, v79
	v_fma_f32 v90, -v86, v91, 1.0
	v_dual_fmac_f32 v89, v0, v72 :: v_dual_mul_f32 v0, v71, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s12, v48, v77, v48
	v_fma_f32 v78, -v88, v89, v83
	v_fma_f32 v88, -v85, v87, 1.0
	v_fma_f32 v83, -v80, v0, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v84, v90, v91
	v_fmac_f32_e32 v87, v88, v87
	v_div_fmas_f32 v72, v78, v72, v89
	v_rcp_f32_e32 v78, v92
	v_fmac_f32_e32 v0, v83, v79
	v_fma_f32 v83, -v86, v84, v90
	v_div_scale_f32 v88, s9, v39, v77, v39
	v_div_fixup_f32 v29, v72, v77, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v80, v0, v71
	v_fmac_f32_e32 v84, v83, v91
	v_div_scale_f32 v80, null, v77, v77, v31
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v72, -v92, v78, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, s10, v37, v77, v37
	v_div_fmas_f32 v0, v70, v79, v0
	v_fma_f32 v70, -v86, v84, v90
	v_fmac_f32_e32 v78, v72, v78
	v_mul_f32_e32 v71, v88, v87
	v_rcp_f32_e32 v72, v80
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v86, null, v77, v77, v18
	v_div_fmas_f32 v70, v70, v91, v84
	v_mul_f32_e32 v84, v83, v78
	v_fma_f32 v79, -v85, v71, v88
	v_div_fixup_f32 v19, v0, v77, v19
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v48, v70, v77, v48
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v80, v72, 1.0
	v_fmac_f32_e32 v71, v79, v87
	v_rcp_f32_e32 v79, v86
	v_fma_f32 v70, -v92, v84, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v72, v89, v72
	v_fma_f32 v0, -v85, v71, v88
	v_div_scale_f32 v85, s11, v31, v77, v31
	v_div_scale_f32 v89, null, v77, v77, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v0, v0, v87, v71
	v_fma_f32 v88, -v86, v79, 1.0
	v_fmac_f32_e32 v84, v70, v78
	v_mul_f32_e32 v70, v85, v72
	v_rcp_f32_e32 v71, v89
	v_div_scale_f32 v87, s9, v18, v77, v18
	v_fmac_f32_e32 v79, v88, v79
	v_div_fixup_f32 v39, v0, v77, v39
	v_fma_f32 v0, -v92, v84, v83
	v_fma_f32 v83, -v80, v70, v85
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v90, v87, v79
	v_div_scale_f32 v88, null, v77, v77, v17
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v89, v71, 1.0
	v_div_fmas_f32 v0, v0, v78, v84
	v_fmac_f32_e32 v70, v83, v72
	v_fma_f32 v78, -v86, v90, v87
	v_rcp_f32_e32 v91, v88
	v_fmac_f32_e32 v71, v92, v71
	v_div_fixup_f32 v37, v0, v77, v37
	v_fma_f32 v0, -v80, v70, v85
	v_fmac_f32_e32 v90, v78, v79
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, s10, v16, v77, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v72, v70
	v_fma_f32 v70, -v86, v90, v87
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v84, -v88, v91, 1.0
	v_mul_f32_e32 v78, v83, v71
	v_div_scale_f32 v80, s12, v17, v77, v17
	v_div_fmas_f32 v70, v70, v79, v90
	v_div_scale_f32 v87, null, v69, v69, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v89, v78, v83
	v_div_fixup_f32 v31, v0, v77, v31
	v_div_fixup_f32 v18, v70, v77, v18
	v_div_scale_f32 v70, s9, v45, v69, v45
	v_fmac_f32_e32 v91, v84, v91
	v_div_scale_f32 v84, null, v69, v69, v45
	v_fmac_f32_e32 v78, v72, v71
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v72, v87
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v85, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v89, v78, v83
	v_div_scale_f32 v83, null, v69, v69, v33
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v71, v78
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v84, v85, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v16, v0, v77, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v90, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v78, v70, v85
	v_mul_f32_e32 v86, v80, v91
	v_fma_f32 v79, -v88, v86, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v86, v79, v91
	v_fma_f32 v79, -v87, v72, 1.0
	v_fma_f32 v71, -v88, v86, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v79, v72
	v_rcp_f32_e32 v79, v83
	v_div_scale_f32 v80, s10, v40, v69, v40
	v_div_fmas_f32 v71, v71, v91, v86
	v_fma_f32 v86, -v84, v78, v70
	v_div_scale_f32 v88, null, v69, v69, v34
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v17, v71, v77, v17
	v_fmac_f32_e32 v78, v86, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v83, v79, 1.0
	v_rcp_f32_e32 v91, v88
	v_div_scale_f32 v77, null, v69, v69, v52
	v_fma_f32 v70, -v84, v78, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v90, v79
	v_mul_f32_e32 v89, v80, v72
	v_rcp_f32_e32 v84, v77
	v_div_scale_f32 v90, null, v69, v69, v47
	v_div_fmas_f32 v70, v70, v85, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v87, v89, v80
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v71, s11, v33, v69, v33
	v_fma_f32 v86, -v88, v91, 1.0
	v_fmac_f32_e32 v89, v0, v72
	v_div_fixup_f32 v45, v70, v69, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v0, v71, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v87, v89, v80
	v_fma_f32 v87, -v77, v84, 1.0
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v86, s12, v34, v69, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v72, v78, v72, v89
	v_rcp_f32_e32 v78, v90
	v_fma_f32 v80, -v83, v0, v71
	v_fmac_f32_e32 v84, v87, v84
	v_div_scale_f32 v87, s9, v52, v69, v52
	v_div_fixup_f32 v40, v72, v69, v40
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v72, -v90, v78, 1.0
	v_mul_f32_e32 v85, v86, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v72, v78
	v_fmac_f32_e32 v0, v80, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v88, v85, v86
	v_fma_f32 v70, -v83, v0, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v80, v91
	v_mul_f32_e32 v71, v87, v84
	v_div_scale_f32 v80, null, v69, v69, v41
	v_div_fmas_f32 v0, v70, v79, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v88, v85, v86
	v_fma_f32 v79, -v77, v71, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v72, v80
	v_div_scale_f32 v86, null, v69, v69, v38
	v_div_scale_f32 v83, s10, v47, v69, v47
	v_fmac_f32_e32 v71, v79, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v79, v86
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v0, v0, v69, v33
	v_div_fmas_f32 v70, v70, v91, v85
	v_mul_f32_e32 v85, v83, v78
	v_fma_f32 v88, -v80, v72, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v33, v70, v69, v34
	v_fma_f32 v34, -v77, v71, v87
	v_fma_f32 v70, -v90, v85, v83
	v_div_scale_f32 v77, s11, v41, v69, v41
	v_fma_f32 v87, -v86, v79, 1.0
	v_fmac_f32_e32 v72, v88, v72
	v_div_fmas_f32 v34, v34, v84, v71
	v_fmac_f32_e32 v85, v70, v78
	v_div_scale_f32 v84, s9, v38, v69, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v79, v87, v79 :: v_dual_mul_f32 v70, v77, v72
	v_div_scale_f32 v88, null, v69, v69, v15
	v_div_fixup_f32 v34, v34, v69, v52
	v_fma_f32 v52, -v90, v85, v83
	v_mul_f32_e32 v89, v84, v79
	v_fma_f32 v83, -v80, v70, v77
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v71, v88
	v_div_scale_f32 v87, null, v69, v69, v59
	v_div_fmas_f32 v52, v52, v78, v85
	v_fma_f32 v78, -v86, v89, v84
	v_fmac_f32_e32 v70, v83, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v90, v87
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v47, v52, v69, v47
	v_fmac_f32_e32 v89, v78, v79
	v_fma_f32 v52, -v80, v70, v77
	v_div_scale_f32 v80, null, v69, v69, v51
	v_fma_f32 v91, -v88, v71, 1.0
	v_div_scale_f32 v83, s10, v15, v69, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v52, v52, v72, v70
	v_fma_f32 v70, -v86, v89, v84
	v_rcp_f32_e32 v84, v80
	v_fma_f32 v85, -v87, v90, 1.0
	v_fmac_f32_e32 v71, v91, v71
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v78, s12, v59, v69, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v90, v85, v90
	v_div_fmas_f32 v70, v70, v79, v89
	v_div_scale_f32 v86, null, v69, v69, v50
	v_fma_f32 v89, -v80, v84, 1.0
	v_mul_f32_e32 v77, v83, v71
	v_mul_f32_e32 v85, v78, v90
	v_div_fixup_f32 v41, v52, v69, v41
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v84, v89, v84
	v_fma_f32 v72, -v88, v77, v83
	v_fma_f32 v79, -v87, v85, v78
	v_div_fixup_f32 v38, v70, v69, v38
	v_div_scale_f32 v70, s9, v51, v69, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v77, v72, v71
	v_rcp_f32_e32 v72, v86
	v_fmac_f32_e32 v85, v79, v90
	v_div_scale_f32 v91, null, v69, v69, v12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v86, v72, 1.0
	v_fmac_f32_e32 v72, v79, v72
	v_fma_f32 v52, -v88, v77, v83
	v_div_scale_f32 v83, null, v69, v69, v42
	v_div_scale_f32 v79, s10, v50, v69, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v52, v52, v71, v77
	v_fma_f32 v71, -v87, v85, v78
	v_rcp_f32_e32 v78, v83
	v_div_scale_f32 v87, null, v69, v69, v14
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v77, v70, v84
	v_div_fmas_f32 v71, v71, v90, v85
	v_rcp_f32_e32 v90, v87
	v_mul_f32_e32 v88, v79, v72
	v_div_fixup_f32 v15, v52, v69, v15
	v_fma_f32 v85, -v80, v77, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v83, v78, 1.0
	v_div_fixup_f32 v52, v71, v69, v59
	v_fma_f32 v59, -v86, v88, v79
	v_div_scale_f32 v71, s11, v42, v69, v42
	v_fmac_f32_e32 v78, v89, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fmac_f32_e32 v88, v59, v72
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v89, v90
	v_fmac_f32_e32 v77, v85, v84
	v_div_scale_f32 v85, null, v69, v69, v13
	v_div_scale_f32 v89, s12, v14, v69, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v80, v77, v70
	v_rcp_f32_e32 v80, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v70, v70, v84, v77
	v_fma_f32 v77, -v86, v88, v79
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v51, v70, v69, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v85, v80, 1.0
	v_mul_f32_e32 v59, v71, v78
	v_div_fmas_f32 v72, v77, v72, v88
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v77, v91
	v_fmac_f32_e32 v80, v86, v80
	v_fma_f32 v79, -v83, v59, v71
	v_div_scale_f32 v86, s9, v13, v69, v13
	v_div_fixup_f32 v50, v72, v69, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v59, v79, v78
	v_fma_f32 v72, -v91, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v83, v59, v71
	v_mul_f32_e32 v71, v86, v80
	v_div_scale_f32 v83, s10, v12, v69, v12
	v_fmac_f32_e32 v77, v72, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v59, v70, v78, v59
	v_fma_f32 v78, -v85, v71, v86
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v42, v59, v69, v42
	v_dual_fmac_f32 v71, v78, v80 :: v_dual_mul_f32 v84, v89, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v59, -v85, v71, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v79, -v87, v84, v89
	v_div_scale_f32 v85, s11, v56, v76, v56
	v_fmac_f32_e32 v84, v79, v90
	v_div_scale_f32 v79, null, v76, v76, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v87, v84, v89
	v_div_scale_f32 v87, null, v76, v76, v53
	v_rcp_f32_e32 v72, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v70, v70, v90, v84
	v_rcp_f32_e32 v78, v87
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v59, v59, v80, v71
	v_div_scale_f32 v80, s9, v53, v76, v53
	v_div_fixup_f32 v14, v70, v69, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v79, v72, 1.0
	v_div_fixup_f32 v13, v59, v69, v13
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v87, v78, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v72, v88, v72
	v_div_scale_f32 v88, null, v76, v76, v43
	v_fmac_f32_e32 v78, v86, v78
	v_div_scale_f32 v86, null, v76, v76, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v71, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v89, v80, v78 :: v_dual_mul_f32 v84, v83, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v90, v86
	v_fma_f32 v70, -v91, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v70, v77
	v_fma_f32 v59, -v91, v84, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v91, -v88, v71, 1.0
	v_div_fmas_f32 v59, v59, v77, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v71, v91, v71 :: v_dual_mul_f32 v70, v85, v72
	v_fma_f32 v77, -v87, v89, v80
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v12, v59, v69, v12
	v_fma_f32 v84, -v86, v90, 1.0
	v_fma_f32 v83, -v79, v70, v85
	v_fmac_f32_e32 v89, v77, v78
	v_div_scale_f32 v77, s12, v44, v76, v44
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v70, v83, v72
	v_div_scale_f32 v83, s10, v43, v76, v43
	v_fma_f32 v59, -v79, v70, v85
	v_div_scale_f32 v79, null, v76, v76, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v69, v83, v71
	v_div_scale_f32 v85, null, v76, v76, v60
	v_div_fmas_f32 v59, v59, v72, v70
	v_fma_f32 v70, -v87, v89, v80
	v_rcp_f32_e32 v80, v79
	v_fma_f32 v72, -v88, v69, v83
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v56, v59, v76, v56
	v_div_fmas_f32 v70, v70, v78, v89
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v69, v72, v71
	v_rcp_f32_e32 v72, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v53, v70, v76, v53
	v_fma_f32 v87, -v79, v80, 1.0
	v_fma_f32 v59, -v88, v69, v83
	v_div_scale_f32 v70, s9, v68, v76, v68
	v_div_scale_f32 v83, null, v76, v76, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v87, v80
	v_fmac_f32_e32 v90, v84, v90
	v_div_fmas_f32 v59, v59, v71, v69
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v71, v70, v80 :: v_dual_mul_f32 v84, v77, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v43, v59, v76, v43
	v_fma_f32 v78, -v86, v84, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v78, v90
	v_fma_f32 v78, -v85, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v78, v72
	v_div_scale_f32 v78, s10, v60, v76, v60
	v_mul_f32_e32 v87, v78, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v85, v87, v78
	v_fmac_f32_e32 v87, v59, v72
	v_fma_f32 v69, -v86, v84, v77
	v_rcp_f32_e32 v77, v83
	v_div_scale_f32 v86, null, v76, v76, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v69, v69, v90, v84
	v_fma_f32 v84, -v79, v71, v70
	v_rcp_f32_e32 v89, v86
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v44, v69, v76, v44
	v_fma_f32 v88, -v83, v77, 1.0
	v_fmac_f32_e32 v71, v84, v80
	v_div_scale_f32 v69, s11, v55, v76, v55
	v_div_scale_f32 v84, null, v76, v76, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v77, v88, v77
	v_fma_f32 v70, -v79, v71, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v86, v89, 1.0
	v_rcp_f32_e32 v90, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v79, v69, v77
	v_div_fmas_f32 v59, v70, v80, v71
	v_fma_f32 v70, -v85, v87, v78
	v_div_scale_f32 v85, null, v76, v76, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v71, -v83, v79, v69
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v89, v88, v89
	v_fma_f32 v80, -v84, v90, 1.0
	v_div_scale_f32 v88, s12, v54, v76, v54
	v_fmac_f32_e32 v79, v71, v77
	v_rcp_f32_e32 v71, v85
	v_div_fmas_f32 v70, v70, v72, v87
	v_fmac_f32_e32 v90, v80, v90
	v_div_scale_f32 v80, s9, v11, v76, v11
	v_div_fixup_f32 v59, v59, v76, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v60, v70, v76, v60
	v_fma_f32 v68, -v83, v79, v69
	v_mul_f32_e32 v69, v80, v90
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v70, -v85, v71, 1.0
	v_mul_f32_e32 v78, v88, v89
	v_div_fmas_f32 v68, v68, v77, v79
	v_fma_f32 v79, -v84, v69, v80
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v71, v70, v71
	v_fma_f32 v72, -v86, v78, v88
	v_div_scale_f32 v83, s10, v97, v76, v97
	v_fmac_f32_e32 v69, v79, v90
	v_div_fixup_f32 v55, v68, v76, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v72, v89
	v_div_scale_f32 v72, null, v76, v76, v63
	v_fma_f32 v68, -v84, v69, v80
	v_div_scale_f32 v80, s11, v63, v76, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v86, v78, v88
	v_div_scale_f32 v86, null, v76, v76, v62
	v_rcp_f32_e32 v70, v72
	v_div_scale_f32 v88, null, v76, v76, v10
	v_div_fmas_f32 v77, v77, v89, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v78, v86
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v89, v88
	v_div_fmas_f32 v68, v68, v90, v69
	v_div_fixup_f32 v54, v77, v76, v54
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v87, -v72, v70, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v11, v68, v76, v11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v86, v78, 1.0
	v_mul_f32_e32 v79, v83, v71
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v84, v78
	v_fma_f32 v77, -v85, v79, v83
	v_fmac_f32_e32 v70, v87, v70
	v_div_scale_f32 v87, null, v76, v76, v46
	v_div_scale_f32 v84, s9, v62, v76, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v77, v71
	v_rcp_f32_e32 v77, v87
	v_mul_f32_e32 v69, v80, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v68, -v85, v79, v83
	v_mul_f32_e32 v85, v84, v78
	v_fma_f32 v83, -v72, v69, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v68, v68, v71, v79
	v_fma_f32 v90, -v87, v77, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, v83, v70
	v_fma_f32 v71, -v86, v85, v84
	v_div_scale_f32 v79, s10, v46, v76, v46
	v_fmac_f32_e32 v77, v90, v77
	v_fma_f32 v83, -v88, v89, 1.0
	v_fma_f32 v72, -v72, v69, v80
	v_fmac_f32_e32 v85, v71, v78
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v71, v79, v77
	v_fmac_f32_e32 v89, v83, v89
	v_div_scale_f32 v83, null, v76, v76, v8
	v_div_scale_f32 v80, s12, v10, v76, v10
	v_div_fmas_f32 v69, v72, v70, v69
	v_fma_f32 v70, -v86, v85, v84
	v_fma_f32 v72, -v87, v71, v79
	v_rcp_f32_e32 v84, v83
	v_div_scale_f32 v90, null, v76, v76, v9
	v_mul_f32_e32 v86, v80, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v72, v77
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v72, v90
	v_div_fmas_f32 v70, v70, v78, v85
	v_fma_f32 v78, -v88, v86, v80
	v_div_fixup_f32 v63, v69, v76, v63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v85, -v83, v84, 1.0
	v_fma_f32 v69, -v87, v71, v79
	v_div_fixup_f32 v62, v70, v76, v62
	v_fmac_f32_e32 v86, v78, v89
	v_div_scale_f32 v70, s9, v8, v76, v8
	v_fmac_f32_e32 v84, v85, v84
	v_fma_f32 v78, -v90, v72, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, null, v75, v75, v64
	v_div_fmas_f32 v69, v69, v77, v71
	v_mul_f32_e32 v77, v70, v84
	v_fmac_f32_e32 v72, v78, v72
	v_div_scale_f32 v78, null, v75, v75, v65
	v_fma_f32 v71, -v88, v86, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v83, v77, v70
	s_mov_b32 vcc_lo, s12
	v_rcp_f32_e32 v80, v78
	v_div_scale_f32 v79, s10, v9, v76, v9
	v_div_fmas_f32 v71, v71, v89, v86
	v_fmac_f32_e32 v77, v85, v84
	v_div_fixup_f32 v46, v69, v76, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v86, v79, v72
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v10, v71, v76, v10
	v_rcp_f32_e32 v71, v87
	v_fma_f32 v85, -v78, v80, 1.0
	v_fma_f32 v70, -v83, v77, v70
	v_div_scale_f32 v83, null, v75, v75, v61
	v_fma_f32 v69, -v90, v86, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v85, v80
	v_div_fmas_f32 v70, v70, v84, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v85, v83
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v88, -v87, v71, 1.0
	v_fmac_f32_e32 v86, v69, v72
	v_div_fixup_f32 v68, v68, v76, v97
	v_div_scale_f32 v69, s11, v65, v75, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v88, v71
	v_fma_f32 v77, -v90, v86, v79
	v_div_scale_f32 v90, null, v75, v75, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v83, v85, 1.0
	v_div_fixup_f32 v8, v70, v76, v8
	v_div_fmas_f32 v72, v77, v72, v86
	v_div_scale_f32 v84, s9, v64, v75, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s12, v61, v75, v61
	v_div_fixup_f32 v9, v72, v76, v9
	v_div_scale_f32 v76, null, v75, v75, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v88, v85
	v_rcp_f32_e32 v92, v90
	v_mul_f32_e32 v91, v84, v71
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v83, v86, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v87, v91, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v70, v85
	v_rcp_f32_e32 v70, v76
	v_mul_f32_e32 v79, v69, v80
	v_fma_f32 v72, -v90, v92, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v9, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v78, v79, v69
	v_fmac_f32_e32 v92, v72, v92
	v_div_scale_f32 v72, s10, v58, v75, v58
	v_fmac_f32_e32 v91, v77, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v89, v80
	v_fma_f32 v69, -v78, v79, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v72, v92
	v_fma_f32 v77, -v87, v91, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v69, v69, v80, v79
	v_div_scale_f32 v79, null, v75, v75, v82
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v80, -v76, v70, 1.0
	v_div_fmas_f32 v71, v77, v71, v91
	v_fma_f32 v77, -v83, v86, v88
	v_rcp_f32_e32 v83, v79
	v_fma_f32 v84, -v90, v78, v72
	v_fmac_f32_e32 v70, v80, v70
	v_div_scale_f32 v80, s9, v81, v75, v81
	v_div_fixup_f32 v65, v69, v75, v65
	v_div_fixup_f32 v64, v71, v75, v64
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v69, v80, v70
	v_div_fmas_f32 v77, v77, v85, v86
	v_fma_f32 v71, -v79, v83, 1.0
	v_fmac_f32_e32 v78, v84, v92
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v84, -v76, v69, v80
	v_div_fixup_f32 v61, v77, v75, v61
	v_fmac_f32_e32 v83, v71, v83
	v_fma_f32 v72, -v90, v78, v72
	v_div_scale_f32 v77, null, v75, v75, v67
	v_fmac_f32_e32 v69, v84, v70
	v_div_scale_f32 v71, s11, v82, v75, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v72, v72, v92, v78
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v85, v77
	v_mul_f32_e32 v78, v71, v83
	v_div_scale_f32 v84, null, v75, v75, v66
	v_div_fixup_f32 v58, v72, v75, v58
	v_fma_f32 v72, -v76, v69, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v79, v78, v71
	v_rcp_f32_e32 v86, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v69, v72, v70, v69
	v_fma_f32 v80, -v77, v85, 1.0
	v_div_scale_f32 v70, null, v75, v75, v7
	v_fmac_f32_e32 v78, v76, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v69, v69, v75, v81
	v_div_scale_f32 v81, null, v75, v75, v74
	v_div_scale_f32 v72, s9, v67, v75, v67
	v_rcp_f32_e32 v76, v70
	v_rcp_f32_e32 v88, v81
	v_fma_f32 v71, -v79, v78, v71
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, s11, v7, v75, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v83, v78
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v70, v76, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v81, v88, 1.0
	v_div_fixup_f32 v71, v71, v75, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v76, v87, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v90, v88 :: v_dual_fmac_f32 v85, v80, v85
	v_fma_f32 v80, -v84, v86, 1.0
	v_div_scale_f32 v87, null, v75, v75, v73
	v_dual_mul_f32 v92, v89, v76 :: v_dual_mul_f32 v79, v72, v85
	v_div_scale_f32 v90, s12, v74, v75, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v77, v79, v72
	v_fmac_f32_e32 v86, v80, v86
	v_div_scale_f32 v80, s10, v66, v75, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v79, v78, v85
	v_mul_f32_e32 v83, v80, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v87, v91, 1.0
	v_fma_f32 v72, -v77, v79, v72
	v_fma_f32 v77, -v70, v92, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v84, v83, v80
	v_fmac_f32_e32 v91, v82, v91
	v_div_scale_f32 v82, null, v75, v75, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v92, v77, v76 :: v_dual_fmac_f32 v83, v78, v86
	v_mul_f32_e32 v78, v90, v88
	v_fma_f32 v70, -v70, v92, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v81, v78, v90
	v_fmac_f32_e32 v78, v77, v88
	v_div_fmas_f32 v72, v72, v85, v79
	v_fma_f32 v79, -v84, v83, v80
	v_div_scale_f32 v80, s9, v73, v75, v73
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v67, v72, v75, v67
	v_div_fmas_f32 v79, v79, v86, v83
	v_mul_f32_e32 v77, v80, v91
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v83, v82
	v_div_fmas_f32 v70, v70, v76, v92
	v_fma_f32 v76, -v81, v78, v90
	v_fma_f32 v81, -v87, v77, v80
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v66, v79, v75, v66
	v_div_fixup_f32 v7, v70, v75, v7
	v_div_fmas_f32 v76, v76, v88, v78
	v_fmac_f32_e32 v77, v81, v91
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v78, null, v75, v75, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v70, v76, v75, v74
	v_fma_f32 v72, -v87, v77, v80
	v_div_scale_f32 v74, null, v75, v75, v49
	v_fma_f32 v76, -v82, v83, 1.0
	v_rcp_f32_e32 v81, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v72, v72, v91, v77
	v_rcp_f32_e32 v77, v74
	v_div_scale_f32 v79, vcc_lo, v57, v75, v57
	v_fmac_f32_e32 v83, v76, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v72, v72, v75, v73
	v_div_scale_f32 v76, null, v75, v75, v4
	v_div_scale_f32 v85, null, v75, v75, v6
	v_fma_f32 v89, -v78, v81, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v73, -v74, v77, 1.0
	v_mul_f32_e32 v84, v79, v83
	v_rcp_f32_e32 v80, v76
	v_rcp_f32_e32 v87, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v73, v77
	v_fma_f32 v88, -v82, v84, v79
	v_fmac_f32_e32 v81, v89, v81
	v_div_scale_f32 v73, s9, v49, v75, v49
	v_div_scale_f32 v89, s11, v5, v75, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v84, v88, v83
	v_fma_f32 v86, -v76, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v90, v73, v77
	v_fma_f32 v91, -v85, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v82, v84, v79
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s10, v4, v75, v4
	v_fma_f32 v88, -v74, v90, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_mul_f32_e32 v92, v86, v80
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v8, v8, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v88, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v76, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s12, v6, v75, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v84, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v93, v89, v81 :: v_dual_and_b32 v8, 15, v36
	v_mul_f32_e32 v94, v91, v87
	v_fma_f32 v73, -v74, v90, v73
	v_fmac_f32_e32 v92, v82, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v78, v93, v89
	v_fma_f32 v74, -v85, v94, v91
	v_div_fmas_f32 v73, v73, v77, v90
	v_fma_f32 v76, -v76, v92, v86
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v93, v88, v81 :: v_dual_fmac_f32 v94, v74, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v80, v92
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v74, -v78, v93, v89
	v_fma_f32 v77, -v85, v94, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v10, v10, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v74, v81, v93
	s_mov_b32 vcc_lo, s12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v87, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v57, v79, v75, v57
	v_div_fixup_f32 v49, v73, v75, v49
	v_div_fixup_f32 v6, v77, v75, v6
	v_div_fixup_f32 v4, v76, v75, v4
	v_div_fixup_f32 v5, v74, v75, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v7, v7, s9, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v75, v15
	v_cvt_i32_f32_e32 v83, v10
	v_and_b32_e32 v10, 15, v30
	v_and_b32_e32 v30, 15, v0
	v_med3_f32 v6, v6, s9, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v49, v49
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v94, v6
	v_and_b32_e32 v6, 15, v21
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v21, 16, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_cvt_i32_f32_e32 v89, v7
	v_and_b32_e32 v7, 15, v23
	v_and_b32_e32 v36, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v23, 6, v21
	v_lshlrev_b32_e32 v75, 6, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v9, v9, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v4, v4, s9, 0x40e00000
	v_med3_f32 v5, v5, s9, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v76, v14
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v79, v43
	v_cvt_i32_f32_e32 v80, v44
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v86, v61
	v_cvt_i32_f32_e32 v87, v58
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v23
	v_and_or_b32 v23, 0x1b00, v75, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v73, v16
	v_cvt_i32_f32_e32 v74, v17
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v81, v11
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v90, v57
	v_cvt_i32_f32_e32 v82, v46
	v_cvt_i32_f32_e32 v85, v9
	v_cvt_i32_f32_e32 v91, v49
	v_cvt_i32_f32_e32 v92, v4
	v_cvt_i32_f32_e32 v93, v5
	v_and_b32_e32 v4, 15, v32
	v_and_b32_e32 v9, 15, v35
	v_and_b32_e32 v11, 15, v29
	v_and_b32_e32 v14, 15, v39
	v_and_b32_e32 v16, 15, v31
	v_and_b32_e32 v29, 15, v40
	v_and_b32_e32 v31, 15, v33
	v_and_b32_e32 v32, 15, v34
	v_and_b32_e32 v33, 15, v47
	v_and_b32_e32 v34, 15, v41
	v_and_b32_e32 v35, 15, v38
	v_and_b32_e32 v38, 15, v51
	v_and_b32_e32 v39, 15, v50
	v_and_b32_e32 v41, 15, v76
	v_and_b32_e32 v44, 15, v56
	v_and_b32_e32 v46, 15, v79
	v_and_b32_e32 v47, 15, v80
	v_and_b32_e32 v49, 15, v60
	v_and_b32_e32 v50, 15, v55
	v_and_b32_e32 v51, 15, v54
	v_and_b32_e32 v54, 15, v63
	v_and_b32_e32 v55, 15, v62
	v_and_b32_e32 v60, 15, v65
	v_and_b32_e32 v61, 15, v64
	v_and_b32_e32 v62, 15, v86
	v_and_b32_e32 v63, 15, v87
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v26, v25
	v_xad_u32 v76, v23, v99, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v5, 15, v28
	v_and_b32_e32 v28, 15, v45
	v_and_b32_e32 v45, 15, v53
	v_cvt_i32_f32_e32 v77, v13
	v_cvt_i32_f32_e32 v78, v12
	v_and_b32_e32 v12, 15, v19
	v_and_b32_e32 v13, 15, v48
	v_and_b32_e32 v15, 15, v37
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v73
	v_and_b32_e32 v19, 15, v74
	v_and_b32_e32 v37, 15, v52
	v_and_b32_e32 v52, 15, v81
	v_and_b32_e32 v53, 15, v68
	v_and_b32_e32 v64, 15, v69
	v_and_b32_e32 v65, 15, v71
	v_and_b32_e32 v68, 15, v89
	v_and_b32_e32 v69, 15, v70
	v_and_b32_e32 v70, 15, v72
	v_and_b32_e32 v71, 15, v90
	v_med3_f32 v42, v42, s9, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[4:7]
	ds_store_b128 v0, v[12:15] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v76
	ds_load_b128 v[12:15], v76 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[28:31]
	ds_store_b128 v0, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v76
	ds_load_b128 v[28:31], v76 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[44:47]
	ds_store_b128 v0, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v76
	ds_load_b128 v[44:47], v76 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[60:63]
	ds_store_b128 v0, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v76
	ds_load_b128 v[60:63], v76 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[8:11]
	ds_store_b128 v0, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v76
	ds_load_b128 v[16:19], v76 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_and_b32_e32 v43, 15, v78
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_and_b32_e32 v40, 15, v42
	v_and_b32_e32 v42, 15, v77
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v88, v66
	v_and_b32_e32 v48, 15, v59
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[32:35]
	ds_store_b128 v0, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v76
	ds_load_b128 v[40:43], v76 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v56, 15, v82
	v_and_b32_e32 v57, 15, v83
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v66, 15, v67
	v_and_b32_e32 v67, 15, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[48:51]
	ds_store_b128 v0, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v76
	ds_load_b128 v[56:59], v76 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v72, 15, v91
	v_and_b32_e32 v73, 15, v92
	v_and_b32_e32 v74, 15, v93
	v_and_b32_e32 v75, 15, v94
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v14, 4, v6
	v_lshl_or_b32 v14, v16, 4, v8
	v_lshl_or_b32 v16, v18, 4, v10
	v_lshl_or_b32 v18, v29, 4, v24
	v_lshl_or_b32 v29, v44, 4, v36
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v98
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s34, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[64:67]
	ds_store_b128 v0, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v76
	ds_load_b128 v[68:71], v76 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s41, 7, v44
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 16, v6
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	v_lshl_or_b32 v15, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 32, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v11, v19, 4, v11
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 48, v6
	v_mad_u64_u32 v[6:7], null, v6, s9, v[0:1]
	v_mad_u64_u32 v[7:8], null, v8, s9, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s9, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v17, v28, 4, v23
	v_lshl_or_b32 v19, v30, 4, v25
	v_lshl_or_b32 v23, v31, 4, v26
	v_lshl_or_b32 v24, v40, 4, v32
	v_lshl_or_b32 v25, v41, 4, v33
	v_lshl_or_b32 v26, v42, 4, v34
	v_lshl_or_b32 v28, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v10, s9, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v13.l
	v_and_b16 v0.h, 0xff, v12.l
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v11.l
	v_and_b16 v4.h, 0xff, v16.l
	v_lshlrev_b16 v5.l, 8, v15.l
	v_and_b16 v5.h, 0xff, v14.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v33, v56, 4, v48
	v_lshl_or_b32 v34, v57, 4, v49
	v_lshl_or_b32 v35, v58, 4, v50
	v_lshl_or_b32 v36, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v4.h, 0xff, v26.l
	v_lshlrev_b16 v5.l, 8, v25.l
	v_and_b16 v5.h, 0xff, v24.l
	s_mov_b32 s12, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v45, 4, v37
	v_lshl_or_b32 v31, v46, 4, v38
	v_lshl_or_b32 v32, v47, 4, v39
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v68, 4, v64
	v_lshl_or_b32 v42, v69, 4, v65
	v_lshl_or_b32 v43, v70, 4, v66
	v_lshl_or_b32 v22, v71, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v23.l
	v_and_b16 v0.h, 0xff, v19.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v17.l
	buffer_store_b64 v[10:11], v6, s[12:15], 0 offen
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v36.l
	v_and_b16 v4.h, 0xff, v35.l
	v_lshlrev_b16 v5.l, 8, v34.l
	v_and_b16 v5.h, 0xff, v33.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v60, 4, v52
	v_lshl_or_b32 v38, v61, 4, v53
	v_lshl_or_b32 v39, v62, 4, v54
	v_lshl_or_b32 v40, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_or_b16 v7.h, v4.h, v4.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v22.l
	v_and_b16 v4.h, 0xff, v43.l
	v_lshlrev_b16 v5.l, 8, v42.l
	v_and_b16 v5.h, 0xff, v41.l
	buffer_store_b64 v[10:11], v6, s[12:15], 0 offen
	v_or_b16 v6.h, v0.h, v0.l
	v_or_b16 v6.l, v2.l, v1.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v95
	v_lshrrev_b32_e32 v5, 2, v21
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[6:7], v8, s[12:15], 0 offen
	buffer_store_b64 v[10:11], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v2.l, v27.h
	v_mov_b16_e32 v1.l, v20.h
	v_add3_u32 v4, v5, v4, v44
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
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v96
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v1, v1, s41, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp71:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 564
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 564
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32936
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 564
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 51
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
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 564
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 146
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
