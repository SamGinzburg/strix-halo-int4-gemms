	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[52:55], s[0:1], 0x5c
	s_load_b128 s[48:51], s[0:1], 0x30
.Ltmp0:
	.loc	1 787 79 prologue_end           ; attention.py:787:79
	v_and_b32_e32 v6, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[60:61], s[0:1], 0x10
	v_dual_mov_b32 v44, 0x7531 :: v_dual_lshlrev_b32 v5, 3, v6
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s38, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s64, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s38, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s39, s38, s64
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v89, 15, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	v_and_b32_e32 v50, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v31, v24 :: v_dual_and_b32 v92, 16, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[84:85], null, s52, v1, v[5:6]
	s_mul_i32 s9, s52, s39
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s52, v5
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s8, s52, 5
	s_mul_i32 s10, s52, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s57, s5, 0xffff
	s_mov_b32 s56, s4
	v_dual_mov_b32 v46, 0x7632 :: v_dual_add_nc_u32 v1, s9, v84
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v88, s52, 4, v84
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	s_load_b64 s[4:5], s[0:1], 0x6c
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v45, 0x5410 :: v_dual_lshlrev_b32 v2, 1, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v88, s9, 1
	v_add_lshl_u32 v4, v1, s8, 1
	v_add_lshl_u32 v1, v1, s10, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v7, 0x80000000, v3, s2
	v_cndmask_b32_e64 v8, 0x80000000, v4, s2
	v_cndmask_b32_e64 v9, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[1:4], v2, s[56:59], 0 offen
	buffer_load_b128 v[32:35], v7, s[56:59], 0 offen
	buffer_load_b128 v[36:39], v8, s[56:59], 0 offen
	buffer_load_b128 v[40:43], v9, s[56:59], 0 offen
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_mov_b32_e32 v7, 0x6420
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v90, 0x60, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v47, 0x78, v0
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v48, 4, v0
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v49, 1, v0
	v_dual_mov_b32 v30, v24 :: v_dual_lshlrev_b32 v93, 3, v0
	v_mov_b32_e32 v29, v24
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s0, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	v_cmp_eq_u32_e64 s1, 0, v50
	v_cmp_eq_u32_e64 s0, 0, v92
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v91, 1, v0
	v_bfe_u32 v51, v0, 4, 1
	v_bfe_i32 v0, v0, 3, 1
	v_dual_mov_b32 v17, v24 :: v_dual_lshlrev_b32 v56, 7, v89
	v_dual_mov_b32 v18, v24 :: v_dual_and_b32 v55, 0x70, v49
	v_dual_mov_b32 v19, v24 :: v_dual_lshlrev_b32 v58, 4, v6
	v_dual_mov_b32 v20, v24 :: v_dual_lshlrev_b32 v57, 6, v90
	v_dual_mov_b32 v21, v24 :: v_dual_lshlrev_b32 v50, 6, v50
	v_dual_mov_b32 v22, v24 :: v_dual_and_b32 v59, 48, v48
	v_dual_mov_b32 v23, v24 :: v_dual_and_b32 v60, 48, v93
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v54, 2, v47
	v_cndmask_b32_e64 v7, 0x7531, v7, s1
	v_cndmask_b32_e64 v45, 0x1054, v45, s0
	v_lshrrev_b32_e32 v47, 1, v47
	v_dual_mov_b32 v16, v24 :: v_dual_and_b32 v53, 16, v48
	v_dual_mov_b32 v9, v24 :: v_dual_and_b32 v0, 0x210, v0
	v_and_or_b32 v51, v49, 30, v51
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v48, v48, v55
	v_or3_b32 v55, v56, v57, v58
	v_or_b32_e32 v94, v58, v56
	v_cndmask_b32_e64 v44, 0x6420, v44, s1
	v_lshl_or_b32 v7, v7, 8, v7
	v_and_or_b32 v96, v49, 60, v50
	v_cndmask_b32_e64 v46, 0x3276, v46, s0
	v_lshl_or_b32 v45, v45, 8, v45
	v_xor_b32_e32 v47, v59, v47
	v_lshl_or_b32 v49, v6, 6, v60
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v52, s38, v91
	v_dual_mov_b32 v8, v24 :: v_dual_lshlrev_b32 v95, 2, v51
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v97, 0, v48
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v48, 0, v55
	v_dual_mov_b32 v12, v24 :: v_dual_and_b32 v7, 0x750031, v7
	v_dual_mov_b32 v14, v24 :: v_dual_and_b32 v45, 0x540054, v45
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v50, v55, 16, 0
	v_xad_u32 v51, v55, 32, 0
	v_xad_u32 v56, v55, 48, 0
	v_xad_u32 v57, v55, 64, 0
	v_xad_u32 v58, 0x50, v55, 0
	v_xad_u32 v59, 0x60, v55, 0
	v_xad_u32 v60, 0x70, v55, 0
	v_xor_b32_e32 v55, 16, v94
	v_lshl_or_b32 v44, v44, 8, v44
	v_lshl_or_b32 v46, v46, 8, v46
	v_lshl_or_b32 v98, v6, 9, v47
	v_xor_b32_e32 v99, v49, v0
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v0, s5, v52
	v_mov_b32_e32 v13, v24
	v_mov_b32_e32 v15, v24
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v52
	v_xor_b32_e32 v61, 32, v94
	v_xor_b32_e32 v62, 48, v94
	v_xor_b32_e32 v63, 64, v94
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s4, s4, s3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s3, s53, v5
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[85:86], null, s53, v54, v[5:6]
	v_lshl_or_b32 v5, v7, 4, v7
	v_and_b32_e32 v6, 0x750031, v44
	v_lshl_or_b32 v7, v45, 4, v45
	v_and_b32_e32 v44, 0x760076, v46
	v_xor_b32_e32 v45, 0x90, v98
	v_xor_b32_e32 v46, 0x120, v98
	v_xor_b32_e32 v47, 0x1b0, v98
	v_xor_b32_e32 v49, 16, v99
	v_xor_b32_e32 v52, 32, v99
	v_xor_b32_e32 v54, 48, v99
	v_add_nc_u32_e32 v100, 0, v55
	v_xor_b32_e32 v55, 0x410, v99
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s55, s8
	v_add_nc_u32_e32 v101, 0, v61
	s_add_i32 s4, s4, s8
	v_add_nc_u32_e32 v102, 0, v62
	v_add_nc_u32_e32 v103, 0, v63
	v_add3_u32 v107, s4, v53, v0
	v_dual_mov_b32 v123, v24 :: v_dual_and_b32 v108, 0x7050301, v5
	v_lshl_or_b32 v5, v44, 4, v44
	v_add_nc_u32_e32 v109, 0, v45
	v_dual_mov_b32 v125, 0xff800000 :: v_dual_add_nc_u32 v110, 0, v46
	v_dual_mov_b32 v124, 0xff800000 :: v_dual_add_nc_u32 v111, 0, v47
	v_add_nc_u32_e32 v112, 0, v49
	v_dual_mov_b32 v122, 0xff800000 :: v_dual_add_nc_u32 v113, 0, v52
	v_add_nc_u32_e32 v114, 0, v54
	v_add_nc_u32_e32 v117, 0, v55
	v_xor_b32_e32 v64, 0x50, v94
	v_xor_b32_e32 v65, 0x60, v94
	v_xor_b32_e32 v66, 0x70, v94
	v_xor_b32_e32 v67, 0x420, v99
	v_xor_b32_e32 v68, 0x430, v99
	v_lshl_or_b32 v0, v6, 4, v6
	v_add_nc_u32_e32 v104, 0, v64
	v_add_nc_u32_e32 v105, 0, v65
	v_add_nc_u32_e32 v106, 0, v66
	v_and_b32_e32 v86, 0x5040504, v7
	v_add_nc_u32_e32 v115, 0, v67
	v_add_nc_u32_e32 v116, 0, v68
	v_and_b32_e32 v118, 0x7050301, v0
	v_dual_mov_b32 v0, v24 :: v_dual_and_b32 v87, 0x7060706, v5
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	v_xor_b32_e32 v119, 4, v95
	v_xor_b32_e32 v120, 64, v96
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v121, s53, v85
	s_mov_b32 s40, 0
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s54, s54, 0x3fb8aa3b
	s_mov_b32 s65, 0x76543210
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_and_b32 s57, s7, 0xffff
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s56, s6
	s_mov_b32 s55, s40
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v97, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v97, v[32:35] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v97, v[36:39] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v97, v[40:43] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v48
	ds_load_b128 v[36:39], v50
	ds_load_b128 v[40:43], v51
	ds_load_b128 v[44:47], v56
	ds_load_b128 v[48:51], v57
	ds_load_b128 v[52:55], v58
	ds_load_b128 v[56:59], v59
	ds_load_b128 v[60:63], v60
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 859 30 is_stmt 1              ; attention.py:859:30
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v128, 8, v81
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v131, 8, v82
	v_lshrrev_b32_e32 v127, 8, v80
	v_and_b16 v126.h, 0xff, v80.h
	v_lshrrev_b32_e32 v130, 24, v80
	v_and_b16 v80.h, 0xff, v128.l
	v_and_b16 v127.h, 0xff, v81.h
	v_lshrrev_b32_e32 v132, 24, v81
	v_and_b16 v81.h, 0xff, v131.l
	v_and_b16 v128.l, 0xff, v82.h
	v_lshrrev_b32_e32 v131, 24, v82
	.loc	1 859 30                        ; attention.py:859:30
	v_lshrrev_b32_e32 v129, 8, v83
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v127.l, 0xff, v127.l
	v_and_b16 v126.l, 0xff, v80.l
	v_cmp_ne_u16_e64 s8, 0, v130.l
	v_cmp_ne_u16_e64 s13, 0, v128.l
	v_cmp_ne_u16_e64 s15, 0, v131.l
	v_and_b16 v80.l, 0xff, v81.l
	v_and_b16 v81.l, 0xff, v82.l
	v_and_b16 v82.l, 0xff, v83.l
	v_and_b16 v82.h, 0xff, v129.l
	v_cmp_ne_u16_e64 s5, 0, v127.l
	v_and_b16 v128.h, 0xff, v83.h
	v_lshrrev_b32_e32 v83, 24, v83
	v_cmp_ne_u16_e64 s4, 0, v126.l
	v_cmp_ne_u16_e64 s6, 0, v126.h
	v_cmp_ne_u16_e64 s17, 0, v80.h
	v_cmp_ne_u16_e64 s21, 0, v132.l
	v_cmp_ne_u16_e64 s11, 0, v81.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s14, s2, s8
	s_and_b32 s13, s2, s13
	s_and_b32 s15, s2, s15
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s16, 0, v80.l
	v_cmp_ne_u16_e64 s23, 0, v82.l
	v_cmp_ne_u16_e64 s24, 0, v82.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v80, 0, 1, s14
	v_cndmask_b32_e64 v129, 0, 1, s13
	v_cndmask_b32_e64 v82, 0, 1, s15
	s_and_b32 s10, s2, s5
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v127.h
	v_cmp_ne_u16_e64 s9, 0, v81.l
	v_cmp_ne_u16_e64 s26, 0, v83.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s7, s2, s4
	s_and_b32 s12, s2, s6
	s_and_b32 s11, s2, s11
	s_and_b32 s18, s2, s17
	s_and_b32 s22, s2, s21
	v_cndmask_b32_e64 v81, 0, 1, s10
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s25, 0, v128.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v126, 0, 1, s7
	v_cndmask_b32_e64 v83, 0, 1, s12
	v_cndmask_b32_e64 v128, 0, 1, s11
	v_cndmask_b32_e64 v131, 0, 1, s18
	v_cndmask_b32_e64 v133, 0, 1, s22
	v_lshlrev_b16 v80.l, 8, v80.l
	v_lshlrev_b16 v81.h, 8, v82.l
	v_mov_b16_e64 v82.l, v129.l
	s_and_b32 s9, s2, s9
	s_and_b32 s16, s2, s16
	s_and_b32 s20, s2, s19
	s_and_b32 s19, s2, s24
	s_and_b32 s24, s2, s26
	v_cndmask_b32_e64 v127, 0, 1, s9
	v_cndmask_b32_e64 v130, 0, 1, s16
	v_cndmask_b32_e64 v132, 0, 1, s20
	v_cndmask_b32_e64 v135, 0, 1, s19
	v_cndmask_b32_e64 v137, 0, 1, s24
	v_lshlrev_b16 v80.h, 8, v81.l
	v_mov_b16_e32 v81.l, v126.l
	v_mov_b16_e64 v126.l, v128.l
	v_or_b16 v128.h, v83.l, v80.l
	v_mov_b16_e64 v80.l, v133.l
	v_or_b16 v129.h, v82.l, v81.h
	v_mov_b16_e64 v82.l, v131.l
	s_and_b32 s17, s2, s23
	s_and_b32 s21, s2, s25
	v_cndmask_b32_e64 v134, 0, 1, s17
	v_cndmask_b32_e64 v136, 0, 1, s21
	v_or_b16 v128.l, v81.l, v80.h
	v_lshlrev_b16 v80.h, 8, v126.l
	v_mov_b16_e32 v81.l, v127.l
	v_lshlrev_b16 v80.l, 8, v80.l
	v_mov_b16_e64 v83.l, v137.l
	v_mov_b16_e64 v126.l, v132.l
	v_mov_b16_e64 v127.l, v135.l
	v_lshlrev_b16 v81.h, 8, v82.l
	v_mov_b16_e64 v82.l, v130.l
	v_lshlrev_b16 v82.h, 8, v83.l
	v_mov_b16_e64 v83.l, v136.l
	v_lshlrev_b16 v83.h, 8, v127.l
	v_mov_b16_e64 v127.l, v134.l
	v_or_b16 v129.l, v81.l, v80.h
	v_or_b16 v80.h, v126.l, v80.l
	v_or_b16 v80.l, v82.l, v81.h
	v_or_b16 v81.h, v83.l, v82.h
	v_or_b16 v81.l, v127.l, v83.h
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v64, s54, v64 :: v_dual_mul_f32 v65, s54, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v82, v80, v128, v108
	v_perm_b32 v80, v80, v128, v118
	v_perm_b32 v83, v81, v129, v108
	v_perm_b32 v81, v81, v129, v118
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v72, s54, v72 :: v_dual_mul_f32 v73, s54, v73
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v82, v95, v82
	ds_bpermute_b32 v80, v119, v80
	ds_bpermute_b32 v83, v95, v83
	ds_bpermute_b32 v81, v119, v81
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v122, v122, v122
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v68, s54, v68 :: v_dual_mul_f32 v69, s54, v69
	v_dual_mul_f32 v76, s54, v76 :: v_dual_mul_f32 v77, s54, v77
	v_dual_mul_f32 v78, s54, v78 :: v_dual_mul_f32 v79, s54, v79
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s37, s28, s53
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v70, s54, v70 :: v_dual_mul_f32 v71, s54, v71
	v_dual_mul_f32 v66, s54, v66 :: v_dual_mul_f32 v67, s54, v67
	v_dual_mul_f32 v74, s54, v74 :: v_dual_mul_f32 v75, s54, v75
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v126, v80, v82, s0
	v_cndmask_b32_e64 v80, v82, v80, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v127, v81, v83, s0
	v_cndmask_b32_e64 v81, v83, v81, s0
	v_and_b32_e32 v83, 0x100, v126
	v_and_b32_e32 v131, 1, v80
	v_and_b32_e32 v129, 0x100, v80
	v_and_b32_e32 v130, 0x100, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s26, 0, v83
	v_cmp_eq_u32_e64 s8, 1, v131
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s6, 0, v129
	v_and_b32_e32 v129, 0x100, v81
	v_cmp_eq_u32_e64 s25, 0, v130
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, v65, 0xff800000, s26
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v82, 1, v126
	v_and_b32_e32 v65, 1, v81
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v72, 0xff800000, v72, s8
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s5, 0, v129
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v73, v73, 0xff800000, s6
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s27, 1, v82
	v_cmp_eq_u32_e64 s4, 1, v65
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, v69, 0xff800000, s25
	v_cndmask_b32_e64 v129, v77, 0xff800000, s5
	v_cndmask_b32_e64 v82, v83, v73, s0
	v_cndmask_b32_e64 v132, 0xff800000, v64, s27
	v_cndmask_b32_e64 v64, v73, v83, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v131, v129, v69, s0
	ds_bpermute_b32 v82, v120, v82
	v_cndmask_b32_e64 v65, v72, v132, s0
	ds_bpermute_b32 v64, v96, v64
	v_cndmask_b32_e64 v133, v69, v129, s0
	ds_bpermute_b32 v131, v96, v131
	ds_bpermute_b32 v134, v96, v65
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v128, 1, v127
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v133, v120, v133
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s23, 1, v128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, 0xff800000, v76, s4
	v_cndmask_b32_e64 v76, v132, v72, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v68, 0xff800000, v68, s23
	ds_bpermute_b32 v135, v120, v76
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v76, 0x10000, v81
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, v128, v68, s0
	v_cndmask_b32_e64 v130, v68, v128, s0
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v136, v82, v64, s1
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s28, 0, v76
	v_and_b32_e32 v76, 0x10000, v80
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v65, v96, v77
	ds_bpermute_b32 v130, v120, v130
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v77, 0x1000000, v81
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, v78, 0xff800000, s28
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v78, 0x1000000, v80
	v_cmp_eq_u32_e64 s30, 0, v76
	v_and_b32_e32 v76, 0x10000, v126
	v_cmp_eq_u32_e64 s29, 0, v77
	v_and_b32_e32 v77, 0x10000, v127
	v_cmp_eq_u32_e64 s34, 0, v78
	v_and_b32_e32 v78, 0x1000000, v126
	v_cmp_eq_u32_e64 s35, 0, v76
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, v79, 0xff800000, s29
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v152, v135, v134, s1
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s31, 0, v77
	v_cmp_eq_u32_e64 s36, 0, v78
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, v74, 0xff800000, s30
	v_cndmask_b32_e64 v139, v66, 0xff800000, s35
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v81, s37, v85, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, v70, 0xff800000, s31
	v_cndmask_b32_e64 v141, v67, 0xff800000, s36
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v148, v130, v65, s1
	v_cndmask_b32_e64 v130, v65, v130, s1
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v134, v134
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, v134, v135, s1
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v79, 0x1000000, v127
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v127, v75, 0xff800000, s34
	v_cndmask_b32_e64 v75, v137, v70, s0
	v_cndmask_b32_e64 v145, v64, v82, s1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v64, 0x80000000, v81, s3
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s33, 0, v79
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, v139, v74, s0
	ds_bpermute_b32 v143, v96, v75
	v_cndmask_b32_e64 v75, v141, v127, s0
	v_cndmask_b32_e64 v66, v70, v137, s0
	v_cndmask_b32_e64 v71, v71, 0xff800000, s33
	ds_bpermute_b32 v142, v120, v79
	v_cndmask_b32_e64 v149, v133, v131, s1
	ds_bpermute_b32 v147, v120, v75
	ds_bpermute_b32 v144, v120, v66
	v_cndmask_b32_e64 v76, v71, v138, s0
	v_cndmask_b32_e64 v77, v138, v71, s0
	v_cndmask_b32_e64 v66, v127, v141, s0
	v_cndmask_b32_e64 v131, v131, v133, s1
	ds_bpermute_b32 v140, v120, v76
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v76, s37, v121, 1
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v126, v96, v77
	v_cndmask_b32_e64 v77, v74, v139, s0
	ds_bpermute_b32 v146, v96, v66
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v130, v149, v131
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v79, 0x80000000, v76, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s37, 0xff800000, v124
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v67, v96, v77
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[75:78], v64, s[60:63], 0 offen
	buffer_load_b128 v[79:82], v79, s[60:63], 0 offen
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v64, v135, v135
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v64, v65, v64
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, v140, v126, s1
	v_cndmask_b32_e64 v126, v126, v140, s1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v140, v141, v68, v69
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, v142, v67, s1
	v_cndmask_b32_e64 v142, v67, v142, s1
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v143, v144, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v65, v145, v150, v142
	v_max3_f32 v66, v66, v67, v126
	v_max3_f32 v67, v146, v147, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v64, v64, v136, v65
	v_max3_f32 v65, v128, v129, v137
	v_max3_f32 v64, v64, v67, v66
	v_max3_f32 v66, v73, v74, v127
	v_max_f32_e32 v67, v132, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v151, v64
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v66, v65, v138
	v_max3_f32 v66, v70, v71, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v67, v67, v139, v140
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v151, v151 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v67, v66, v65
	v_max_f32_e32 v66, v151, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v67, v65, s65, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v140, v64, v66
.Ltmp18:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v64, v125, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v66, v124, v65, v67
	v_max_f32_e32 v122, v122, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v65, v64, v140
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b16_e32 v64.h, 0
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v124, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v134, v134, v122 :: v_dual_sub_f32 v151, v125, v65
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v135, v151
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, v144, v143, s1
	v_cndmask_b32_e64 v143, v143, v144, s1
	v_cndmask_b32_e64 v144, v147, v146, s1
	v_cndmask_b32_e64 v146, v146, v147, s1
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v124, 0, v67, s37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v144, v144, v122
	v_sub_f32_e32 v131, v131, v122
	v_sub_f32_e32 v143, v143, v122
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s37, 0xff800000, v125
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v144, v144
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v131, v131
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v143, v143
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v67, 0, v135, s37
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v130, v130, v122 :: v_dual_mul_f32 v31, v31, v124
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v124
	v_mul_f32_e32 v3, v3, v124
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v144, 0, v144, s20
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v147, v149, v122
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v131, s15
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v130, v130
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v143, s19
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v83, v83, v66 :: v_dual_mul_f32 v30, v30, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v147, v147
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v134, s10
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v142, v142, v122 :: v_dual_mul_f32 v25, v25, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v83
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v0, v0, v124
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v130, s11
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v142, v142
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v124
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v133, v133, v122 :: v_dual_mul_f32 v28, v28, v124
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v147, s13
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v126, v126, v122 :: v_dual_mul_f32 v19, v19, v124
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, v83, 0, s26
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v132, v132, v66 :: v_dual_mul_f32 v21, v21, v124
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v147, v131
.Ltmp20:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v135, v136, v122
	v_sub_f32_e32 v136, v145, v122
	v_sub_f32_e32 v145, v146, v122
	v_sub_f32_e32 v146, v148, v122
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v64.l, v83.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v148, v151, v122
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v136, v136
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v142, s18
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v146, v146
	v_exp_f32_e32 v133, v133
	v_exp_f32_e32 v148, v148
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v132, v132
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v2, v2, v124 :: v_dual_sub_f32 v139, v139, v66
	v_mul_f32_e32 v16, v16, v124
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v136, s14
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v141, v141, v66 :: v_dual_mul_f32 v18, v18, v124
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v146, s9
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v148, 0, v148, s17
	v_cndmask_b32_e64 v133, 0, v133, s21
	v_cndmask_b32_e64 v126, 0, v126, s24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v132, 0, v132, s27
.Ltmp21:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v146, v130
.Ltmp22:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v69, v69, v66 :: v_dual_mul_f32 v20, v20, v124
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v126, v133, v126
.Ltmp24:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v130, v131
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v141, v141
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v68, v68, v66 :: v_dual_mul_f32 v23, v23, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v5, v5, v124 :: v_dual_sub_f32 v70, v70, v66
	v_mul_f32_e32 v9, v9, v124
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v71, v71, v66 :: v_dual_mul_f32 v22, v22, v124
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v135, s12
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v125, v152, v122
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v124
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v73, v73, v66 :: v_dual_mul_f32 v8, v8, v124
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v125, v125
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, v69, 0, s25
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v72, v72, v66 :: v_dual_mul_f32 v11, v11, v124
	v_dual_sub_f32 v74, v74, v66 :: v_dual_mul_f32 v13, v13, v124
	v_dual_sub_f32 v127, v127, v66 :: v_dual_mul_f32 v10, v10, v124
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v125, s7
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v83, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v128, v128, v66 :: v_dual_mul_f32 v15, v15, v124
	v_dual_sub_f32 v129, v129, v66 :: v_dual_mul_f32 v12, v12, v124
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v125, v125, v134 :: v_dual_add_f32 v134, v135, v136
.Ltmp28:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v137, v137, v66 :: v_dual_mul_f32 v14, v14, v124
	v_dual_sub_f32 v138, v138, v66 :: v_dual_mul_f32 v1, v1, v124
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v125, v125, v134 :: v_dual_and_b32 v134, 1, v64
.Ltmp30:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v140, v150, v122
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v124
	v_mul_f32_e32 v6, v6, v124
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v134, v83, v134, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v140
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s23
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, v70, 0, s31
	v_cndmask_b32_e64 v71, v71, 0, s33
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, v73, 0, s6
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v129, v129
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v140, s16
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v68, v68
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s8
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v131, v138
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v70, v70
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v135, v140, v142
	v_add_f32_e32 v140, v148, v143
.Ltmp32:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v145, v145
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v74, v74, 0, s30
	v_cndmask_b32_e64 v127, v127, 0, s34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v131, v131, 0, s29
	v_cndmask_b32_e64 v145, 0, v145, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v144, v145
	v_add_f32_e32 v133, v135, v136
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v135.h, v64.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v125, v125, v133
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.l, v132.h
	v_mov_b16_e64 v133.h, v64.h
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v126, v140, v126 :: v_dual_and_b32 v133, 1, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v83, v132, v133, 0x7fff
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v126, v130, v126
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v133.h, 0x7fff, v134.h, s7
	v_cmp_o_f32_e64 s7, v132, v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v130, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v196, v125, v126
.Ltmp42:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, v139, 0, s35
	v_cndmask_b32_e64 v126, v141, 0, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v133.l, 0x7fff, v83.h, s7
	v_cmp_o_f32_e64 s7, v69, v69
	v_mov_b16_e64 v135.l, v125.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v64.l, v126.h
	v_cmp_o_f32_e64 s9, v126, v126
	v_cmp_o_f32_e64 s10, v125, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, v130, 0, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v124, 1, v135
	v_and_b32_e32 v134, 1, v64
	v_mov_b16_e32 v64.l, v69.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v124, v125, v124, 0x7fff
	v_add3_u32 v132, v126, v134, 0x7fff
	v_mov_b16_e32 v125.l, v68.h
	v_mov_b16_e32 v125.h, v64.h
	v_and_b32_e32 v126, 1, v64
	v_cndmask_b16 v83.l, 0x7fff, v124.h, s10
	v_mov_b16_e32 v64.l, v71.h
	v_cndmask_b16 v83.h, 0x7fff, v132.h, s9
	v_and_b32_e32 v124, 1, v125
	v_add3_u32 v125, v69, v126, 0x7fff
	v_mov_b16_e32 v69.l, v70.h
	v_mov_b16_e32 v69.h, v64.h
	v_and_b32_e32 v126, 1, v64
	v_mov_b16_e32 v64.l, v73.h
	v_add3_u32 v124, v68, v124, 0x7fff
	v_cmp_o_f32_e64 s9, v73, v73
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v197, v196 :: v_dual_and_b32 v132, 1, v64
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v125.h, 0x7fff, v125.h, s7
	v_add3_u32 v126, v71, v126, 0x7fff
	v_add3_u32 v68, v70, v69, 0x7fff
	v_mov_b16_e32 v69.l, v72.h
	v_mov_b16_e32 v69.h, v64.h
	v_add3_u32 v70, v73, v132, 0x7fff
	v_cmp_o_f32_e64 s7, v71, v71
	v_cndmask_b16 v125.l, 0x7fff, v124.h, s6
	v_cndmask_b16 v188.l, 0x7fff, v68.h, s8
	v_and_b32_e32 v69, 1, v69
	v_cndmask_b16 v189.h, 0x7fff, v70.h, s9
	v_cmp_o_f32_e64 s6, v72, v72
	v_mov_b16_e32 v64.l, v127.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, v129, 0, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v68, v72, v69, 0x7fff
	v_mov_b16_e32 v69.l, v74.h
	v_mov_b16_e32 v69.h, v64.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v128, s4
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v189.l, 0x7fff, v68.h, s6
	v_mov_b16_e32 v72.h, v64.h
	v_and_b32_e32 v68, 1, v69
	v_and_b32_e32 v69, 1, v64
	v_mov_b16_e32 v64.l, v70.h
	v_mov_b16_e32 v72.l, v71.h
	v_cmp_o_f32_e64 s4, v127, v127
	v_mov_b16_e64 v124.l, v130.h
	v_add3_u32 v69, v127, v69, 0x7fff
	v_and_b32_e32 v73, 1, v64
	v_and_b32_e32 v72, 1, v72
	v_mov_b16_e32 v124.h, v64.h
	v_mov_b16_e64 v64.l, v131.h
	v_add3_u32 v68, v74, v68, 0x7fff
	v_cndmask_b16 v191.h, 0x7fff, v69.h, s4
	v_cmp_o_f32_e64 s4, v74, v74
	v_add3_u32 v69, v71, v72, 0x7fff
	v_and_b32_e32 v72, 1, v124
	v_and_b32_e32 v74, 1, v64
	v_cndmask_b16 v188.h, 0x7fff, v126.h, s7
	v_add3_u32 v73, v70, v73, 0x7fff
	v_cmp_o_f32_e64 s5, v70, v70
	v_cmp_o_f32_e64 s6, v71, v71
	v_add3_u32 v70, v130, v72, 0x7fff
	v_add3_u32 v71, v131, v74, 0x7fff
	v_cmp_o_f32_e64 s7, v131, v131
	v_permlanex16_b32 v72, v83, s65, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s8, v130, v130
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v124, 0, v98
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v74, v125, s65, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v195.h, 0x7fff, v71.h, s7
	v_perm_b32 v71, v72, v83, v86
	v_perm_b32 v72, v72, v83, v87
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v83.l, v75.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v83.h, v79.l
	v_mov_b16_e32 v79.l, v75.h
	v_mov_b16_e32 v75.l, v76.l
	v_mov_b16_e32 v75.h, v80.l
	v_mov_b16_e32 v80.l, v76.h
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v195.l, 0x7fff, v70.h, s8
	v_permlanex16_b32 v70, v133, s65, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v76.l, v77.l
	v_mov_b16_e32 v76.h, v81.l
	v_mov_b16_e32 v81.l, v77.h
	ds_store_2addr_b32 v124, v83, v79 offset1:16
	ds_store_2addr_b32 v109, v75, v80 offset1:16
	v_add_nc_u32_e32 v75, 0, v99
	v_mov_b16_e32 v77.l, v78.l
	v_mov_b16_e32 v77.h, v82.l
	v_mov_b16_e32 v82.l, v78.h
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v191.l, 0x7fff, v68.h, s4
	v_cndmask_b16 v68.h, 0x7fff, v73.h, s5
	v_cndmask_b16 v68.l, 0x7fff, v69.h, s6
	v_perm_b32 v69, v70, v133, v86
	v_perm_b32 v70, v70, v133, v87
	v_perm_b32 v73, v74, v125, v86
	v_perm_b32 v74, v74, v125, v87
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b32 v110, v76, v81 offset1:16
	ds_store_2addr_b32 v111, v77, v82 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[124:127], v75
	ds_load_b128 v[132:135], v75 offset:2048
	ds_load_b128 v[128:131], v112
	ds_load_b128 v[136:139], v112 offset:2048
	ds_load_b128 v[140:143], v113
	ds_load_b128 v[148:151], v113 offset:2048
	ds_load_b128 v[156:159], v115
	ds_load_b128 v[164:167], v115 offset:2048
	ds_load_b128 v[160:163], v116
	ds_load_b128 v[168:171], v116 offset:2048
	ds_load_b128 v[144:147], v114
	ds_load_b128 v[152:155], v114 offset:2048
	ds_load_b128 v[172:175], v75 offset:1024
	ds_load_b128 v[176:179], v117
	ds_load_b128 v[180:183], v75 offset:3072
	ds_load_b128 v[184:187], v117 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v190, v188, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v192, v189, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v193, v191, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v194, v68, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v198, v195, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v75, v190, v188, v86
	v_perm_b32 v76, v190, v188, v87
	v_perm_b32 v188, v192, v189, v86
	v_perm_b32 v189, v192, v189, v87
	v_perm_b32 v190, v193, v191, v86
	v_perm_b32 v191, v193, v191, v87
	v_perm_b32 v192, v194, v68, v86
	v_perm_b32 v193, v194, v68, v87
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v196, v197
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v194, v198, v195, v86
	v_perm_b32 v195, v198, v195, v87
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(13)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[124:131], v[69:76], v[24:31]
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[156:163], v[69:76], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[132:139], v[69:76], v[8:15]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[164:171], v[69:76], v[0:7]
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v68, v123, v67
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[140:147], v[188:195], v[24:31]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[172:179], v[188:195], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[148:155], v[188:195], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[180:187], v[188:195], v[0:7]
	v_dual_mov_b32 v124, v66 :: v_dual_mov_b32 v123, v68
	v_mov_b32_e32 v125, v65
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s4, s55, 32
	s_cmpk_lt_u32 s55, 0x1e0
	s_mov_b32 s55, s4
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_or_b32 s28, s55, s64
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v173, s47 :: v_dual_add_nc_u32 v80, 0, v94
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s4, s28, s52
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v172, s46 :: v_dual_mov_b32 v171, s45
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v64, s4, v84, 1
	v_add_lshl_u32 v65, s4, v88, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v170, s44 :: v_dual_mov_b32 v169, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v81, 0 :: v_dual_cndmask_b32 v64, 0x80000000, v64
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v68, 0x80000000, v65 :: v_dual_mov_b32 v83, 0
	s_clause 0x1
	buffer_load_b128 v[64:67], v64, s[56:59], 0 offen
	buffer_load_b128 v[68:71], v68, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v168, s42 :: v_dual_mov_b32 v167, s41
	v_mov_b32_e32 v166, s40
	v_mov_b32_e32 v82, 0
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v97, v[64:67]
	s_waitcnt vmcnt(0)
	ds_store_b128 v97, v[68:71] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[76:79], v100
	ds_load_b128 v[72:75], v80
	ds_load_b128 v[126:129], v80 offset:2048
	ds_load_b128 v[130:133], v100 offset:2048
	ds_load_b128 v[134:137], v101
	ds_load_b128 v[142:145], v101 offset:2048
	ds_load_b128 v[138:141], v102
	ds_load_b128 v[146:149], v102 offset:2048
	ds_load_b128 v[150:153], v103
	ds_load_b128 v[158:161], v103 offset:2048
	ds_load_b128 v[154:157], v104
	ds_load_b128 v[162:165], v104 offset:2048
	ds_load_b128 v[174:177], v105
	ds_load_b128 v[182:185], v105 offset:2048
	ds_load_b128 v[178:181], v106
	ds_load_b128 v[186:189], v106 offset:2048
	v_mov_b32_e32 v80, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[72:79], v[32:39], v[166:173]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[126:133], v[32:39], v[166:173]
	s_waitcnt lgkmcnt(9)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[134:141], v[40:47], v[64:71]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[142:149], v[40:47], v[72:79]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[150:157], v[48:55], v[64:71]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[158:165], v[48:55], v[72:79]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[174:181], v[56:63], v[64:71]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[182:189], v[56:63], v[72:79]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, s2
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v80, s55, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v81, 31, v80
	v_add_co_u32 v80, s4, s48, v80
	v_add_co_ci_u32_e64 v81, null, s49, v81, s4
	global_load_b128 v[80:83], v[80:81], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 818 13                        ; attention.py:818:13
	v_lshrrev_b32_e32 v32, 2, v92
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v33, 1, v90
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.h, v64.h
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 818 13                        ; attention.py:818:13
	v_and_or_b32 v32, 0x78, v93, v32
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v35, v33, v89
	.loc	1 818 13                        ; attention.py:818:13
	ds_bpermute_b32 v37, v32, v68
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v39, s38, v35
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v35, s39, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v39
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v35, s53, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, null, v37, v37, v25
	v_div_scale_f32 v41, null, v37, v37, v24
	v_div_scale_f32 v43, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v47, v39
	v_div_scale_f32 v45, null, v37, v37, v26
	v_rcp_f32_e32 v49, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v50, v43
	v_div_scale_f32 v48, null, v37, v37, v28
	v_rcp_f32_e32 v51, v45
	v_div_scale_f32 v46, null, v37, v37, v29
	v_fma_f32 v55, -v39, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v54, v48
	v_div_scale_f32 v40, vcc_lo, v25, v37, v25
	v_fma_f32 v57, -v41, v49, 1.0
	v_rcp_f32_e32 v52, v46
	v_fma_f32 v58, -v43, v50, 1.0
	v_fmac_f32_e32 v47, v55, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v57, v49 :: v_dual_and_b32 v32, 8, v91
	v_div_scale_f32 v42, s6, v24, v37, v24
	v_fma_f32 v59, -v45, v51, 1.0
	v_fmac_f32_e32 v50, v58, v50
	v_mul_f32_e32 v58, v40, v47
	v_fma_f32 v57, -v48, v54, 1.0
	v_div_scale_f32 v44, s7, v27, v37, v27
	v_fmac_f32_e32 v51, v59, v51
	v_mul_f32_e32 v59, v42, v49
	v_fma_f32 v55, -v46, v52, 1.0
	v_fma_f32 v60, -v39, v58, v40
	v_div_scale_f32 v53, s8, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v41, v59, v42
	v_div_scale_f32 v56, s9, v29, v37, v29
	v_dual_fmac_f32 v52, v55, v52 :: v_dual_mul_f32 v55, v44, v50
	v_dual_fmac_f32 v58, v60, v47 :: v_dual_fmac_f32 v59, v62, v49
	v_fmac_f32_e32 v54, v57, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v61, v53, v51 :: v_dual_mul_f32 v62, v56, v52
	v_fma_f32 v57, -v43, v55, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v39, v58, v40
	v_fma_f32 v40, -v41, v59, v42
	v_fma_f32 v60, -v45, v61, v53
	v_fma_f32 v42, -v46, v62, v56
	v_fmac_f32_e32 v55, v57, v50
	v_div_fmas_f32 v39, v39, v47, v58
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v41, s10, v28, v37, v28
	v_fmac_f32_e32 v61, v60, v51
	v_div_fmas_f32 v40, v40, v49, v59
	v_div_fixup_f32 v25, v39, v37, v25
	v_fmac_f32_e32 v62, v42, v52
	v_fma_f32 v39, -v43, v55, v44
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v24, v40, v37, v24
	v_mul_f32_e32 v40, v41, v54
	v_fma_f32 v43, -v45, v61, v53
	s_mov_b32 vcc_lo, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v50, v55
	s_mov_b32 vcc_lo, s8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v43, v43, v51, v61
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v64.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v39, v37, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v64.h
	v_mov_b16_e32 v38.l, v24.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v43, v37, v26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v24, v24
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_scale_f32 v44, null, v37, v37, v17
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v38, v24, v38, 0x7fff
	v_mov_b16_e32 v39.l, v26.h
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v36, 16, v32
	v_or_b32_e32 v34, 32, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s53, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v38.h, s7
	v_and_b32_e32 v38, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v39, v43
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v42, 1, v64
	v_mov_b16_e32 v64.l, v27.h
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 48, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s53, v36
	v_cmp_gt_i32_e64 s3, s53, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v25, v42, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v46, v62, v56
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s53, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v25, -v48, v40, v41
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v42, v42, v52, v62
	s_mov_b32 vcc_lo, s10
	v_dual_fmac_f32 v40, v25, v54 :: v_dual_and_b32 v25, 1, v64
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v29, v42, v37, v29
	v_fma_f32 v41, -v48, v40, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v27, v25, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v48, v44
	v_div_fmas_f32 v40, v41, v54, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_add3_u32 v27, v26, v38, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v43, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v28, v40, v37, v28
	v_div_scale_f32 v40, null, v37, v37, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v38, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v29, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v64.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v41, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v28.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v41, s7, v31, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v27.h, vcc_lo
	v_mov_b16_e32 v64.l, v26.h
	v_cmp_o_f32_e64 s9, v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v40, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v27, 1, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v29, v41, v39
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, s8, v30, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v43, v29, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v46, 1, v64
	v_add3_u32 v27, v28, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v47, v42, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, v45, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v46, v26, v46, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v45, null, v37, v37, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v40, v47, v42
	v_fma_f32 v26, -v43, v29, v41
	v_fma_f32 v43, -v44, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v41, v45
	v_fmac_f32_e32 v48, v43, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v26, v39, v29
	v_div_scale_f32 v39, s7, v17, v37, v17
	v_fmac_f32_e32 v47, v49, v38
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v31, v26, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v46.h, s9
	v_cmp_o_f32_e64 s9, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v40, v47, v42
	v_fma_f32 v40, -v45, v41, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v29, v29, v38, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v38, v39, v48 :: v_dual_fmac_f32 v41, v40, v41
	v_div_scale_f32 v40, s8, v16, v37, v16
	v_div_fixup_f32 v29, v29, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v44, v38, v39
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v64.l, v31.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v38, v30, v48
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v30.h, v64.h
	v_mov_b16_e32 v30.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v40, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v44, v38, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v27, 1, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v45, v42, v40
	v_div_fmas_f32 v38, v39, v48, v38
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v27, v29, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v28, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v28, 1, v64
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v38, v37, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v45, v42, v40
	v_div_scale_f32 v40, null, v37, v37, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v31, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v41, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v30, v40
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v42, null, v37, v37, v21
	v_div_fixup_f32 v16, v39, v37, v16
	v_div_scale_f32 v39, null, v37, v37, v18
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v64.l, v17.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v46, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v16, s6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v39
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v28.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v40, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_mov_b16_e32 v29.l, v31.h
	v_mov_b16_e32 v29.h, v64.h
	v_and_b32_e32 v44, 1, v64
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v28, v30
	v_div_scale_f32 v28, s7, v19, v37, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v39, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.l, 0x7fff, v27.h, vcc_lo
	v_and_b32_e32 v27, 1, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v29, v28, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v44, v17, v44, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, s8, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v43, -v40, v29, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v17, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v45, v41, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v27, v31, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v29, v43, v30
	v_div_scale_f32 v43, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v39, v45, v41
	v_fma_f32 v17, -v40, v29, v28
	v_fma_f32 v40, -v42, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v28, v43
	v_fmac_f32_e32 v45, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v30, v29
	v_fmac_f32_e32 v46, v40, v46
	v_div_scale_f32 v30, s7, v21, v37, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v29, -v39, v45, v41
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v19, v17, v37, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v44.h, s9
	v_cmp_o_f32_e64 s9, v31, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v29, v29, v38, v45
	v_mul_f32_e32 v38, v30, v46
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v39, -v43, v28, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v29, v37, v18
	v_fma_f32 v29, -v42, v38, v30
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v41, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v29, v46
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v64.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v64.l, v19.h
	v_mov_b16_e32 v29.l, v41.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v42, v38, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v27, 1, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v30, v30, v46, v38
	v_div_scale_f32 v38, null, v37, v37, v23
	v_div_fixup_f32 v21, v30, v37, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v29, v38
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v21, v21
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v38, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, s7, v23, v37, v23
	v_fmac_f32_e32 v28, v39, v28
	v_div_scale_f32 v39, s8, v20, v37, v20
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v40, v39, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v43, v40, v39
	v_fmac_f32_e32 v40, v18, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v18, 1, v64
	v_mov_b16_e32 v64.l, v21.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v43, v40, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v18, v19, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v42, 1, v64
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v31, v28, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v19, v41, v27, 0x7fff
	v_mov_b16_e32 v31.h, v64.h
	v_add3_u32 v42, v21, v42, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v28, v37, v20
	v_div_scale_f32 v28, null, v37, v37, v22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	v_div_scale_f32 v40, null, v37, v37, v9
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v31.l, v20.h
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v28, v27, 1.0
	v_mul_f32_e32 v31, v30, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v43, v20, v19, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v39, v27
	v_div_scale_f32 v39, s8, v22, v37, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v38, v31, v30
	v_mul_f32_e32 v19, v39, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v41, v29
	v_div_scale_f32 v41, null, v37, v37, v8
	v_fma_f32 v45, -v28, v19, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v38, v31, v30
	v_rcp_f32_e32 v30, v41
	v_fma_f32 v38, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v19, v45, v27
	v_div_fmas_f32 v21, v21, v29, v31
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v29, s7, v9, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v28, v19, v39
	v_div_fixup_f32 v21, v21, v37, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v41, v30, 1.0
	v_div_fmas_f32 v19, v28, v27, v19
	v_div_scale_f32 v28, s8, v8, v37, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v31, v30
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v22, v19, v37, v22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v42.h, s9
	v_cmp_o_f32_e64 s9, v20, v20
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v28, v30
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	v_cndmask_b32_e64 v22, 0, v22, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v43.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v41, v31, v28
	v_fmac_f32_e32 v44, v38, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v64.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v38, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v20, v30
	v_mul_f32_e32 v27, v29, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v28, -v41, v31, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v40, v27, v29
	v_fmac_f32_e32 v27, v23, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v22.h
	v_mov_b16_e32 v23.h, v64.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v40, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v29, v44, v27
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v29, null, v37, v37, v11
	v_div_fmas_f32 v28, v28, v30, v31
	v_div_fixup_f32 v9, v27, v37, v9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v30, v29
	v_div_fixup_f32 v8, v28, v37, v8
	v_div_scale_f32 v28, null, v37, v37, v10
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v20, 1, v64
	v_mov_b16_e32 v64.l, v9.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v31, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v23, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v8, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_scale_f32 v31, s8, v10, v37, v10
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v20.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_mov_b16_e32 v22.l, v23.h
	v_mov_b16_e32 v22.h, v64.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v41, v31, v27 :: v_dual_and_b32 v40, 1, v64
	v_fmac_f32_e32 v30, v20, v30
	v_div_scale_f32 v20, s7, v11, v37, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v21.h, vcc_lo
	v_and_b32_e32 v21, 1, v22
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v28, v41, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v22, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v40, v9, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v39, -v29, v22, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v22, v39, v30
	v_div_scale_f32 v39, null, v37, v37, v12
	v_fma_f32 v9, -v29, v22, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v20, v39
	v_fma_f32 v29, -v38, v42, 1.0
	v_fmac_f32_e32 v41, v43, v27
	v_div_fmas_f32 v9, v9, v30, v22
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v29, v42
	v_fma_f32 v22, -v28, v41, v31
	v_div_scale_f32 v28, s7, v13, v37, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v39, v20, 1.0
	v_div_fixup_f32 v9, v9, v37, v11
	v_div_fmas_f32 v22, v22, v27, v41
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v40.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v20, v29, v20
	v_div_scale_f32 v29, s8, v12, v37, v12
	v_mul_f32_e32 v27, v28, v42
	v_div_fixup_f32 v10, v22, v37, v10
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v30, v29, v20
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v21, v23, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v38, v27, v28
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v64.l, v9.h
	v_cmp_o_f32_e64 s9, v23, v23
	v_mov_b16_e32 v23.h, v64.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v22, v42
	v_fma_f32 v22, -v39, v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v10.h
	v_cndmask_b16 v11.l, 0x7fff, v21.h, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v22, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v22, 1, v64
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v38, v27, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v23
	v_add3_u32 v22, v9, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v28, v42, v27
	v_fma_f32 v28, -v39, v30, v29
	v_div_scale_f32 v29, null, v37, v37, v15
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v13, v27, v37, v13
	v_rcp_f32_e32 v23, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v29, v23, 1.0
	v_fmac_f32_e32 v23, v27, v23
	v_div_fmas_f32 v20, v28, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v9, v10, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v27, s7, v15, v37, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v12, v20, v37, v12
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v13, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v13.h, v64.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_scale_f32 v30, null, v37, v37, v1
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v22.l, 0x7fff, v9.h, vcc_lo
	v_mov_b16_e32 v64.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v12.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v30
	v_div_scale_f32 v20, null, v37, v37, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v64
	v_and_b32_e32 v9, 1, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v27, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v10, v10
	v_add3_u32 v38, v10, v38, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v31, -v29, v13, v27
	v_fmac_f32_e32 v13, v31, v23
	v_div_scale_f32 v31, null, v37, v37, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v20, v21, 1.0
	v_fma_f32 v10, -v29, v13, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v27, v31
	v_fma_f32 v29, -v30, v40, 1.0
	v_div_fmas_f32 v10, v10, v23, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v40, v29, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v12, v9, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v29, null, v37, v37, v2
	v_fma_f32 v23, -v31, v27, 1.0
	v_div_fixup_f32 v10, v10, v37, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, v23, v27
	v_fmac_f32_e32 v21, v28, v21
	v_div_scale_f32 v28, s8, v14, v37, v14
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v23, s8, v0, v37, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v64.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v39, v28, v21
	v_fma_f32 v41, -v20, v39, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v41, v21
	v_fma_f32 v13, -v20, v39, v28
	v_div_scale_f32 v20, s7, v1, v37, v1
	v_mul_f32_e32 v28, v23, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v13, v13, v21, v39
	v_mul_f32_e32 v21, v20, v40
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v13, v13, v37, v14
	v_fma_f32 v15, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v14.h, 0x7fff, v38.h, s9
	v_cmp_o_f32_e64 s9, v12, v12
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v12, -v31, v28, v23
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v15, v40
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v15.h, v64.h
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v12, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v15.l, v13.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v12, 1, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v9, 1, v15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v20, v20, v40, v21
	v_fma_f32 v21, -v31, v28, v23
	v_div_scale_f32 v23, null, v37, v37, v3
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v15, v29
	v_div_fmas_f32 v21, v21, v27, v28
	v_rcp_f32_e32 v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v20, v37, v1
	v_div_fixup_f32 v0, v21, v37, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v13, v9, 0x7fff
	v_cmp_o_f32_e64 s8, v13, v13
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v15, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v23, v27, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v21.h, v64.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v15, v20, v15
	v_div_scale_f32 v20, s7, v2, v37, v2
	v_fmac_f32_e32 v27, v10, v27
	v_div_scale_f32 v10, vcc_lo, v3, v37, v3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v64.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v20, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v10, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s8
	v_and_b32_e32 v30, 1, v64
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v29, v28, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v21
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v23, v13, v10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v1, v1
	v_add3_u32 v30, v1, v30, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v31, v15
	v_div_scale_f32 v1, null, v37, v37, v5
	v_fmac_f32_e32 v13, v9, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v0, v21, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v30.h, s8
	v_cmp_o_f32_e64 s8, v0, v0
	v_mov_b16_e32 v31.h, v64.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v0, -v23, v13, v10
	v_fma_f32 v10, -v29, v28, v20
	v_rcp_f32_e32 v20, v1
	v_div_scale_f32 v23, null, v37, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v27, v13
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v27, null, v37, v37, v6
	v_rcp_f32_e32 v13, v23
	v_div_fmas_f32 v10, v10, v15, v28
	v_div_fixup_f32 v0, v0, v37, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v1, v20, 1.0
	v_div_scale_f32 v3, null, v37, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v10, v37, v2
	v_fmac_f32_e32 v20, v15, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v21, v3
	v_fma_f32 v15, -v23, v13, 1.0
	v_div_scale_f32 v10, vcc_lo, v5, v37, v5
	v_div_scale_f32 v29, s7, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v13, v15, v13
	v_rcp_f32_e32 v15, v27
	v_mul_f32_e32 v28, v10, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v3, v21, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v1, v28, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v64.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v30, v21
	v_div_scale_f32 v30, s8, v7, v37, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v27, v15, 1.0
	v_fmac_f32_e32 v28, v38, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v41, v30, v21 :: v_dual_and_b32 v42, 1, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v15, v40, v15
	v_mul_f32_e32 v39, v29, v13
	v_div_scale_f32 v40, s9, v6, v37, v6
	v_fma_f32 v1, -v1, v28, v10
	v_fma_f32 v10, -v3, v41, v30
	v_fma_f32 v38, -v23, v39, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v1, v1, v20, v28
	v_fmac_f32_e32 v41, v10, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v39, v38, v13 :: v_dual_mul_f32 v38, v40, v15
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v1, v1, v37, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v3, -v3, v41, v30
	v_fma_f32 v20, -v23, v39, v29
	v_fma_f32 v23, -v27, v38, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v10, v20, v13, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v38, v23, v15
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v13, 1, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v3, v3, v21, v41
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v5, -v27, v38, v40
	v_div_fixup_f32 v4, v10, v37, v4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v2, v13, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v3, v3, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v13, v0, v42, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v5, v5, v15, v38
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v64.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v3, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v5, v5, v37, v6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v64.h
	v_and_b32_e32 v3, 1, v64
	v_mov_b16_e32 v7.h, v64.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v64.l, v0.h
	v_and_b32_e32 v6, 1, v6
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_mov_b16_e32 v7.l, v5.h
	v_add3_u32 v3, v1, v3, 0x7fff
	v_add3_u32 v2, v4, v6, 0x7fff
	v_cmp_o_f32_e64 s6, v1, v1
	v_cmp_o_f32_e64 s7, v4, v4
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v64
	v_cmp_o_f32_e64 s8, v0, v0
	v_cmp_o_f32_e64 s9, v5, v5
	v_cndmask_b16 v13.l, 0x7fff, v10.h, vcc_lo
	v_add3_u32 v1, v5, v6, 0x7fff
	v_add3_u32 v4, v0, v7, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s7
	v_cndmask_b32_e64 v5, v25, v16, s0
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s9
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s8
	v_cndmask_b32_e64 v4, v16, v25, s0
	v_cndmask_b32_e64 v16, v0, v9, s0
	v_cndmask_b32_e64 v0, v9, v0, s0
	v_cndmask_b32_e64 v3, v24, v26, s0
	v_cndmask_b32_e64 v6, v19, v17, s0
	v_cndmask_b32_e64 v7, v17, v19, s0
	v_cndmask_b32_e64 v10, v8, v18, s0
	v_cndmask_b32_e64 v8, v18, v8, s0
	v_cndmask_b32_e64 v15, v14, v11, s0
	v_cndmask_b32_e64 v11, v11, v14, s0
	v_cndmask_b32_e64 v14, v12, v22, s0
	v_cndmask_b32_e64 v12, v22, v12, s0
	v_cndmask_b32_e64 v17, v2, v13, s0
	v_cndmask_b32_e64 v2, v13, v2, s0
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v1, v26, v24, s0
	v_permlanex16_b32 v13, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v2, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v13, v16, v86
	v_perm_b32 v13, v13, v16, v87
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v16, v35, v32, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v1, v86
	v_perm_b32 v1, v3, v1, v87
	v_perm_b32 v2, v5, v4, v86
	v_perm_b32 v3, v5, v4, v87
	v_perm_b32 v4, v7, v6, v86
	v_perm_b32 v5, v7, v6, v87
	v_perm_b32 v6, v8, v10, v86
	v_perm_b32 v7, v8, v10, v87
	v_perm_b32 v8, v9, v15, v86
	v_perm_b32 v9, v9, v15, v87
	v_perm_b32 v10, v11, v14, v86
	v_perm_b32 v11, v11, v14, v87
	v_perm_b32 v14, v18, v17, v86
	v_perm_b32 v15, v18, v17, v87
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v35, v36, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v35, v34, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v35, v33, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s51, 0xffff
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	s_mov_b32 s8, s50
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp49:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 199
		.amdhsa_next_free_sgpr 66
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_vgpr, 199
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11008
; TotalNumSgprs: 68
; NumVgprs: 199
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 68
; NumVGPRsForWavesPerEU: 199
; Occupancy: 7
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
	.byte	5                               ; Abbreviation Code
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     199
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
