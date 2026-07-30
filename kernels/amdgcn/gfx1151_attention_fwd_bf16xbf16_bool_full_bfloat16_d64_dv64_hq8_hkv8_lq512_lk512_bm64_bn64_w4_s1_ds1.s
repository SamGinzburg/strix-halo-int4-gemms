	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[84:87], s[0:1], 0x5c
	s_load_b128 s[80:83], s[0:1], 0x30
	v_dual_mov_b32 v54, 0x5410 :: v_dual_and_b32 v51, 3, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v52, 2, v0
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v164, 16, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v49, 4, v51
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[92:93], s[0:1], 0x10
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s70, s2, 6
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s71, s3, 9
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s70, v52
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s69, s70, s71
	v_mov_b32_e32 v26, v25
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v53, 8, v49
	s_mov_b32 s91, 0x31027000
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v1
	s_mov_b32 s90, 0x7ffffffe
	v_dual_mov_b32 v55, 0x7632 :: v_dual_and_b32 v162, 15, v0
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s84, v52
	s_mul_i32 s9, s84, s69
	s_lshl_b32 s8, s84, 5
	v_or_b32_e32 v1, s9, v49
	v_or_b32_e32 v4, s9, v53
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s2, s84, v49
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v163, 0x60, v0
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v3, s8, v2
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v5, v1, v2, 1
	v_add_lshl_u32 v2, v4, v2, 1
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s2, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v1, v1, v3, 1
	v_add_lshl_u32 v3, v4, v3, 1
	v_cndmask_b32_e64 v4, 0x80000000, v5, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_and_b32 s89, s5, 0xffff
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_mov_b32 s88, s4
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_clause 0x3
	buffer_load_b128 v[33:36], v4, s[88:91], 0 offen
	buffer_load_b128 v[37:40], v1, s[88:91], 0 offen
	buffer_load_b128 v[41:44], v2, s[88:91], 0 offen
	buffer_load_b128 v[45:48], v3, s[88:91], 0 offen
	s_load_b64 s[4:5], s[0:1], 0x6c
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v50, 7, v0
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v58, 4, v0
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v165, 2, v0
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -8
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s9, s0, 3
	v_cmp_eq_u32_e64 s0, 0, v164
	v_dual_mov_b32 v21, v25 :: v_dual_lshlrev_b32 v64, 6, v163
	v_dual_mov_b32 v22, v25 :: v_dual_lshlrev_b32 v63, 7, v162
	v_dual_mov_b32 v24, v25 :: v_dual_lshlrev_b32 v65, 4, v50
	v_dual_mov_b32 v4, v25 :: v_dual_and_b32 v73, 0x80, v58
	v_cndmask_b32_e64 v54, 0x1054, v54, s0
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v166, 5, v0
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v57, 1, v0
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v60, 12, v0
	v_dual_mov_b32 v13, v25 :: v_dual_lshlrev_b32 v70, 2, v163
	v_dual_mov_b32 v16, v25 :: v_dual_lshlrev_b32 v71, 11, v51
	v_dual_mov_b32 v1, v25 :: v_dual_lshlrev_b32 v74, 6, v164
	.loc	1 599 26                        ; attention.py:599:26
	v_or3_b32 v64, v63, v64, v65
	v_or_b32_e32 v168, v65, v63
	v_and_or_b32 v65, v165, 16, v73
	v_cndmask_b32_e64 v55, 0x3276, v55, s0
	v_lshl_or_b32 v54, v54, 8, v54
	v_dual_mov_b32 v23, v25 :: v_dual_lshlrev_b32 v50, 3, v50
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v61, 32, v52
	v_lshrrev_b32_e32 v56, 3, v0
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v59, 48, v0
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v62, 0x70, v165
	v_dual_mov_b32 v9, v25 :: v_dual_and_b32 v66, 0x70, v57
	v_dual_mov_b32 v10, v25 :: v_dual_lshlrev_b32 v167, 3, v162
	v_dual_mov_b32 v11, v25 :: v_dual_lshlrev_b32 v68, 8, v60
	v_dual_mov_b32 v14, v25 :: v_dual_and_b32 v69, 0x260, v166
	v_dual_mov_b32 v15, v25 :: v_dual_lshlrev_b32 v72, 3, v163
	v_dual_mov_b32 v2, v25 :: v_dual_lshlrev_b32 v51, 5, v51
	v_dual_mov_b32 v5, v25 :: v_dual_and_b32 v54, 0x540054, v54
	v_lshl_or_b32 v63, v60, 1, v70
	v_or3_b32 v65, v65, v71, v74
	v_lshl_or_b32 v55, v55, 8, v55
	v_mul_lo_u32 v71, s85, v52
	.loc	1 629 13                        ; attention.py:629:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[155:156], null, s5, v61, v[49:50]
	v_dual_mov_b32 v12, v25 :: v_dual_and_b32 v57, 0x80, v57
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s3, s3, s1
	v_lshrrev_b32_e32 v67, 1, v59
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v62, v166, v62
	v_xor_b32_e32 v58, v58, v66
	v_lshl_or_b32 v59, v59, 6, v167
	v_lshl_or_b32 v66, v60, 9, v51
	v_lshl_or_b32 v60, v60, 3, v70
	v_or3_b32 v169, v68, v69, v63
	.loc	1 660 31                        ; attention.py:660:31
	v_cmp_gt_i32_e64 s1, s84, v50
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[153:154], null, s84, v56, v[50:51]
	v_mad_u64_u32 v[156:157], null, s5, v52, v[49:50]
	v_or3_b32 v171, v65, v72, v51
	v_lshl_or_b32 v50, v54, 4, v54
	v_and_b32_e32 v51, 0x760076, v55
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v70, 0, v62
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v75, 0, v164
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v170, 0, v58
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v57, 0, v57
	v_dual_mov_b32 v196, 0xff800000 :: v_dual_add_nc_u32 v73, 0, v64
	v_xor_b32_e32 v63, 32, v168
	v_xor_b32_e32 v59, v59, v67
	v_xor_b32_e32 v60, v66, v60
	v_xor_b32_e32 v58, 0x50, v168
	v_xor_b32_e32 v52, 8, v169
	v_xor_b32_e32 v54, 16, v169
	v_xor_b32_e32 v55, 24, v169
	v_lshl_add_u32 v56, s85, 5, v71
	v_and_b32_e32 v160, 0x5040504, v50
	v_lshl_or_b32 v50, v51, 4, v51
	v_xor_b32_e32 v51, 32, v171
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v76, v64, 16, 0
	v_xad_u32 v62, v62, 16, 0
	v_xad_u32 v77, v64, 32, 0
	v_xad_u32 v78, v64, 48, 0
	v_xad_u32 v79, v64, 64, 0
	v_xad_u32 v80, 0x50, v64, 0
	v_xad_u32 v81, 0x60, v64, 0
	v_xad_u32 v64, 0x70, v64, 0
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s2, s85, v49
	v_dual_mov_b32 v105, 0xff800000 :: v_dual_add_nc_u32 v172, v57, v59
	v_add_nc_u32_e32 v173, v75, v60
	v_dual_mov_b32 v106, 0xff800000 :: v_dual_add_nc_u32 v175, 0, v63
	v_dual_mov_b32 v107, 0xff800000 :: v_dual_add_nc_u32 v178, 0, v58
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v181, v49, v71
	v_add_nc_u32_e32 v182, 0, v52
	v_add_nc_u32_e32 v183, 0, v54
	v_add_nc_u32_e32 v184, 0, v55
	v_add_nc_u32_e32 v185, v49, v56
	v_add_nc_u32_e32 v187, v53, v56
	v_and_b32_e32 v161, 0x7060706, v50
	v_add_nc_u32_e32 v188, 0, v51
	v_xor_b32_e32 v66, 64, v168
	v_xor_b32_e32 v82, 16, v168
	v_xor_b32_e32 v68, 48, v168
	v_xor_b32_e32 v67, 0x60, v168
	v_xor_b32_e32 v69, 0x70, v168
	v_add_nc_u32_e32 v177, 0, v66
	v_xor_b32_e32 v65, 64, v171
	v_xor_b32_e32 v66, 0x60, v171
	v_mad_u64_u32 v[157:158], null, s84, 48, v[153:154]
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s9, s87, s9
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s3, s4, s3
	v_dual_mov_b32 v195, 0xff800000 :: v_dual_add_nc_u32 v174, 0, v82
	v_dual_mov_b32 v197, v25 :: v_dual_add_nc_u32 v176, 0, v68
	v_add_nc_u32_e32 v179, 0, v67
	v_add_nc_u32_e32 v180, 0, v69
	v_add_nc_u32_e32 v189, 0, v65
	v_add_nc_u32_e32 v190, 0, v66
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v186, 0x7c, v0
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v191, s84, 4, v153
	v_add_nc_u32_e32 v192, s8, v153
	v_add_nc_u32_e32 v193, 8, v181
	v_lshl_add_u32 v194, v162, 1, 0
	v_mov_b32_e32 v154, v25
	s_mov_b32 s72, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s86, s86, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s4, s5, s70
	s_add_i32 s87, s3, s9
	s_mov_b32 s96, 0x76543210
	s_mov_b32 s73, s72
	s_mov_b32 s74, s72
	s_mov_b32 s75, s72
	s_mov_b32 s76, s72
	s_mov_b32 s77, s72
	s_mov_b32 s78, s72
	s_mov_b32 s79, s72
	s_mov_b32 s94, s90
	s_mov_b32 s95, s91
	s_mov_b32 s97, s72
	s_and_b32 s89, s7, 0xffff
	s_and_b32 s93, s93, 0xffff
	s_add_i32 s87, s87, s4
	s_mov_b32 s88, s6
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v70, v[33:36]
	s_waitcnt vmcnt(2)
	ds_store_b128 v70, v[37:40] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v62, v[41:44]
	s_waitcnt vmcnt(0)
	ds_store_b128 v62, v[45:48] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v73
	ds_load_b128 v[37:40], v76
	ds_load_b128 v[41:44], v77
	ds_load_b128 v[45:48], v78
	ds_load_b128 v[49:52], v79
	ds_load_b128 v[53:56], v80
	ds_load_b128 v[57:60], v81
	ds_load_b128 v[61:64], v64
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v110, 8, v102
	v_lshrrev_b32_e32 v109, 8, v101
	v_lshrrev_b32_e32 v115, 8, v103
	v_and_b16 v110.h, 0xff, v104.h
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v117, s86, v90 :: v_dual_mul_f32 v120, s86, v93
	v_dual_mul_f32 v93, s86, v94 :: v_dual_mul_f32 v90, s86, v81
	.loc	1 681 34                        ; attention.py:681:34
	v_lshrrev_b32_e32 v94, 8, v97
	v_and_b16 v108.l, 0xff, v101.l
	v_and_b16 v108.h, 0xff, v109.l
	v_and_b16 v109.l, 0xff, v101.h
	v_lshrrev_b32_e32 v114, 24, v101
	v_and_b16 v101.l, 0xff, v102.l
	v_and_b16 v101.h, 0xff, v110.l
	v_and_b16 v109.h, 0xff, v102.h
	v_lshrrev_b32_e32 v116, 24, v102
	v_and_b16 v102.l, 0xff, v103.l
	v_and_b16 v102.h, 0xff, v115.l
	v_and_b16 v110.l, 0xff, v103.h
	v_lshrrev_b32_e32 v115, 24, v103
	v_and_b16 v103.l, 0xff, v104.l
	v_cmp_ne_u16_e64 s18, 0, v110.h
	v_lshrrev_b32_e32 v111, 8, v104
	v_lshrrev_b32_e32 v112, 8, v98
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v121, s86, v85
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v85.l, 0xff, v97.l
	v_and_b16 v85.h, 0xff, v94.l
	v_lshrrev_b32_e32 v104, 24, v104
	v_cmp_ne_u16_e64 s5, 0, v109.l
	v_cmp_ne_u16_e64 s12, 0, v102.l
	v_cmp_ne_u16_e64 s14, 0, v110.l
	v_cmp_ne_u16_e64 s16, 0, v103.l
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s40, vcc_lo, s18
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v103.h, 0xff, v111.l
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v111, s86, v89 :: v_dual_mul_f32 v118, s86, v91
	v_dual_mul_f32 v119, s86, v92 :: v_dual_mul_f32 v92, s86, v95
	v_mul_f32_e32 v91, s86, v96
	v_dual_mul_f32 v89, s86, v82 :: v_dual_mul_f32 v82, s86, v83
	v_dual_mul_f32 v81, s86, v84 :: v_dual_mul_f32 v84, s86, v86
	v_mul_f32_e32 v83, s86, v87
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v86.l, 0xff, v97.h
	v_lshrrev_b32_e32 v97, 24, v97
	v_and_b16 v86.h, 0xff, v98.l
	v_lshrrev_b32_e32 v95, 8, v99
	v_and_b16 v87.l, 0xff, v112.l
	v_and_b16 v87.h, 0xff, v98.h
	v_lshrrev_b32_e32 v98, 24, v98
	v_cmp_ne_u16_e64 s20, 0, v85.l
	v_cmp_ne_u16_e64 s21, 0, v85.h
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	v_cndmask_b32_e64 v85, 0, 1, s40
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v108.l
	v_cmp_ne_u16_e64 s9, 0, v109.h
	v_cmp_ne_u16_e64 s19, 0, v104.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s23, vcc_lo, s5
	s_and_b32 s31, vcc_lo, s12
	s_and_b32 s34, vcc_lo, s14
	s_and_b32 s37, vcc_lo, s16
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s7, 0, v101.l
	v_and_b16 v94.l, 0xff, v99.l
	v_and_b16 v94.h, 0xff, v95.l
	v_and_b16 v95.l, 0xff, v99.h
	v_and_b16 v95.h, 0xff, v100.l
	v_cmp_ne_u16_e64 s25, 0, v86.l
	v_cmp_ne_u16_e64 s30, 0, v97.l
	v_cmp_ne_u16_e64 s36, 0, v86.h
	v_cmp_ne_u16_e64 s39, 0, v87.l
	v_cmp_ne_u16_e64 s48, 0, v87.h
	v_cmp_ne_u16_e64 s49, 0, v98.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v97, 0, 1, s23
	v_cndmask_b32_e64 v98, 0, 1, s31
	v_cndmask_b32_e64 v86, 0, 1, s34
	v_cndmask_b32_e64 v87, 0, 1, s37
	v_lshlrev_b16 v85.l, 8, v85.l
	.loc	1 681 34                        ; attention.py:681:34
	v_lshrrev_b32_e32 v113, 8, v100
	v_and_b16 v96.h, 0xff, v100.h
	v_lshrrev_b32_e32 v100, 24, v100
	v_cmp_ne_u16_e64 s10, 0, v116.l
	v_cmp_ne_u16_e64 s17, 0, v103.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s11, vcc_lo, s3
	s_and_b32 s28, vcc_lo, s9
	s_and_b32 s41, vcc_lo, s19
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s15, 0, v115.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s26, vcc_lo, s7
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s50, 0, v94.l
	v_cmp_ne_u16_e64 s51, 0, v94.h
	v_cmp_ne_u16_e64 s54, 0, v95.l
	v_cmp_ne_u16_e64 s56, 0, v95.h
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v95, 0, 1, s11
	v_cndmask_b32_e64 v94, 0, 1, s28
	v_cndmask_b32_e64 v109, 0, 1, s41
	v_lshlrev_b16 v85.h, 8, v86.l
	v_mov_b16_e32 v86.l, v98.l
	v_or_b16 v98.h, v87.l, v85.l
	v_mov_b16_e32 v85.l, v97.l
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s59, 0, v100.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v100, 0, 1, s26
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s6, 0, v114.l
	v_cmp_ne_u16_e64 s8, 0, v101.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s29, vcc_lo, s10
	s_and_b32 s38, vcc_lo, s17
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s13, 0, v102.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s35, vcc_lo, s15
	.loc	1 681 34                        ; attention.py:681:34
	v_lshrrev_b32_e32 v99, 24, v99
	v_cmp_ne_u16_e64 s4, 0, v108.h
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v102, 0, 1, s29
	v_cndmask_b32_e64 v108, 0, 1, s38
	v_or_b16 v98.l, v86.l, v85.h
	v_mov_b16_e32 v86.l, v109.l
	v_lshlrev_b16 v85.h, 8, v94.l
	v_lshlrev_b16 v85.l, 8, v85.l
	v_mov_b16_e32 v94.l, v95.l
	v_cndmask_b32_e64 v104, 0, 1, s35
	v_mov_b16_e32 v87.l, v100.l
	s_and_b32 s24, vcc_lo, s6
	s_and_b32 s27, vcc_lo, s8
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s58, 0, v96.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s33, vcc_lo, s13
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v96.l, 0xff, v113.l
	v_cmp_ne_u16_e64 s55, 0, v99.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v99, 0, 1, s24
	v_cndmask_b32_e64 v101, 0, 1, s27
	v_lshlrev_b16 v86.l, 8, v86.l
	v_mov_b16_e32 v95.l, v108.l
	v_or_b16 v97.l, v94.l, v85.l
	v_mov_b16_e32 v85.l, v102.l
	v_cndmask_b32_e64 v103, 0, 1, s33
	v_or_b16 v97.h, v87.l, v85.h
	v_mov_b16_e32 v87.l, v104.l
	s_and_b32 s22, vcc_lo, s4
	s_and_b32 s18, vcc_lo, s54
	s_and_b32 s16, vcc_lo, s58
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s57, 0, v96.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v96, 0, 1, s22
	v_cndmask_b32_e64 v126, 0, 1, s18
	v_or_b16 v100.h, v95.l, v86.l
	v_mov_b16_e32 v86.l, v99.l
	v_lshlrev_b16 v85.l, 8, v85.l
	v_mov_b16_e32 v94.l, v101.l
	v_cndmask_b32_e64 v130, 0, 1, s16
	v_lshlrev_b16 v85.h, 8, v87.l
	v_mov_b16_e32 v87.l, v103.l
	s_and_b32 s48, vcc_lo, s48
	s_and_b32 s52, vcc_lo, s50
	s_and_b32 s44, vcc_lo, s25
	s_and_b32 s12, vcc_lo, s56
	v_cndmask_b32_e64 v122, 0, 1, s48
	v_cndmask_b32_e64 v124, 0, 1, s52
	v_lshlrev_b16 v86.l, 8, v86.l
	v_mov_b16_e32 v95.l, v96.l
	v_or_b16 v99.h, v94.l, v85.l
	v_mov_b16_e32 v85.l, v126.l
	v_cndmask_b32_e64 v113, 0, 1, s44
	v_cndmask_b32_e64 v128, 0, 1, s12
	v_or_b16 v100.l, v87.l, v85.h
	v_mov_b16_e64 v87.l, v130.l
	s_and_b32 s46, vcc_lo, s36
	s_and_b32 s19, vcc_lo, s59
	s_and_b32 s45, vcc_lo, s30
	s_and_b32 s49, vcc_lo, s49
	s_and_b32 s17, vcc_lo, s55
	v_cndmask_b32_e64 v115, 0, 1, s46
	v_cndmask_b32_e64 v131, 0, 1, s19
	v_or_b16 v99.l, v95.l, v86.l
	v_mov_b16_e32 v86.l, v122.l
	v_lshlrev_b16 v85.l, 8, v85.l
	v_mov_b16_e32 v94.l, v124.l
	v_cndmask_b32_e64 v114, 0, 1, s45
	v_cndmask_b32_e64 v123, 0, 1, s49
	v_cndmask_b32_e64 v127, 0, 1, s17
	v_lshlrev_b16 v85.h, 8, v87.l
	v_mov_b16_e64 v87.l, v128.l
	v_mov_b16_e32 v96.l, v113.l
	s_and_b32 s42, vcc_lo, s20
	s_and_b32 s15, vcc_lo, s57
	s_and_b32 s43, vcc_lo, s21
	s_and_b32 s47, vcc_lo, s39
	s_and_b32 s53, vcc_lo, s51
	v_cndmask_b32_e64 v110, 0, 1, s42
	v_cndmask_b32_e64 v129, 0, 1, s15
	v_lshlrev_b16 v86.l, 8, v86.l
	v_mov_b16_e32 v95.l, v115.l
	v_or_b16 v102.l, v94.l, v85.l
	v_mov_b16_e64 v85.l, v131.l
	v_cndmask_b32_e64 v112, 0, 1, s43
	v_cndmask_b32_e64 v116, 0, 1, s47
	v_cndmask_b32_e64 v125, 0, 1, s53
	v_or_b16 v102.h, v87.l, v85.h
	v_lshlrev_b16 v85.h, 8, v96.l
	v_mov_b16_e32 v87.l, v127.l
	v_mov_b16_e32 v94.l, v123.l
	v_mov_b16_e32 v96.l, v114.l
	v_or_b16 v101.h, v95.l, v86.l
	v_mov_b16_e32 v86.l, v110.l
	v_lshlrev_b16 v85.l, 8, v85.l
	v_mov_b16_e64 v95.l, v129.l
	v_lshlrev_b16 v86.h, 8, v87.l
	v_mov_b16_e32 v87.l, v125.l
	v_lshlrev_b16 v87.h, 8, v94.l
	v_mov_b16_e32 v94.l, v116.l
	v_lshlrev_b16 v94.h, 8, v96.l
	v_mov_b16_e32 v96.l, v112.l
	v_or_b16 v101.l, v86.l, v85.h
	v_or_b16 v104.h, v95.l, v85.l
	v_add_nc_u32_e32 v85, 0, v169
	v_or_b16 v104.l, v87.l, v86.h
	v_or_b16 v103.h, v94.l, v87.h
	v_or_b16 v103.l, v96.l, v94.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v172, v[97:98], v[101:102] offset1:32
	ds_store_2addr_b64 v172, v[99:100], v[103:104] offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_mul_f32_e32 v98, s86, v78
	.loc	1 681 25                        ; attention.py:681:25
	ds_load_b64 v[85:86], v85
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v87, s86, v88 :: v_dual_mul_f32 v102, s86, v66
	v_mul_f32_e32 v88, s86, v73
	v_mul_f32_e32 v94, s86, v74
	.loc	1 681 25                        ; attention.py:681:25
	ds_load_b64 v[73:74], v182
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v95, s86, v75 :: v_dual_mul_f32 v100, s86, v80
	v_dual_mul_f32 v96, s86, v76 :: v_dual_mul_f32 v97, s86, v77
	v_dual_mul_f32 v104, s86, v68 :: v_dual_mul_f32 v103, s86, v67
	v_mul_f32_e32 v112, s86, v72
	.loc	1 681 25                        ; attention.py:681:25
	ds_load_b64 v[67:68], v183
	ds_load_b64 v[75:76], v184
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v101, s86, v65 :: v_dual_mul_f32 v110, s86, v71
	v_mul_f32_e32 v109, s86, v70
	v_dual_mul_f32 v99, s86, v79 :: v_dual_mul_f32 v108, s86, v69
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	.loc	1 681 25                        ; attention.py:681:25
	v_lshrrev_b16 v65.l, 8, v86.l
	v_lshrrev_b16 v65.h, 8, v85.l
	v_and_b32_e32 v77, 0x1000000, v85
	v_and_b32_e32 v79, 0x10000, v85
	v_and_b32_e32 v80, 1, v85
	v_and_b16 v70.l, 1, v65.l
	v_lshrrev_b16 v65.l, 8, v74.l
	v_and_b16 v66.l, 1, v65.h
	v_lshrrev_b16 v65.h, 8, v73.l
	v_and_b32_e32 v113, 0x1000000, v74
	v_and_b32_e32 v116, 0x1000000, v73
	v_and_b16 v78.l, 1, v65.l
	v_lshrrev_b16 v65.l, 8, v68.l
	v_and_b32_e32 v125, 1, v68
	v_and_b32_e32 v128, 1, v67
	v_and_b32_e32 v129, 0x1000000, v76
	v_and_b32_e32 v130, 0x10000, v76
	v_and_b16 v85.l, 1, v65.l
	v_and_b32_e32 v114, 0x10000, v74
	v_and_b32_e32 v115, 1, v74
	v_and_b16 v74.l, 1, v65.h
	v_lshrrev_b16 v65.h, 8, v67.l
	v_cmp_ne_u32_e64 s57, 0, v116
	v_cmp_ne_u32_e64 s50, 0, v113
	v_cmp_eq_u32_e64 s36, 1, v128
	v_cmp_eq_u32_e64 s20, 1, v125
	v_cmp_eq_u16_e64 s21, 1, v85.l
	v_cmp_ne_u32_e64 s4, 0, v130
	v_cmp_ne_u32_e64 s3, 0, v129
	v_and_b16 v85.h, 1, v65.h
	v_lshrrev_b16 v65.l, 8, v76.l
	v_lshrrev_b16 v65.h, 8, v75.l
	v_cmp_eq_u32_e64 s66, 1, v80
	v_cmp_eq_u16_e64 s67, 1, v66.l
	v_and_b32_e32 v122, 0x10000, v73
	v_and_b32_e32 v131, 1, v76
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v76, 0xff800000, v81, s57
	v_cndmask_b32_e64 v80, 0xff800000, v87, s50
	v_cndmask_b32_e64 v81, 0xff800000, v88, s36
	v_cndmask_b32_e64 v87, 0xff800000, v97, s20
	v_cndmask_b32_e64 v88, 0xff800000, v98, s21
	v_cndmask_b32_e64 v97, 0xff800000, v110, s4
	v_cndmask_b32_e64 v98, 0xff800000, v112, s3
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v73, 1, v73
	v_and_b32_e32 v72, 0x1000000, v86
	v_and_b32_e32 v71, 0x10000, v86
	v_and_b32_e32 v69, 1, v86
	v_and_b32_e32 v127, 0x10000, v67
	v_and_b16 v86.l, 1, v65.l
	v_and_b16 v86.h, 1, v65.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v65, 0xff800000, v111, s66
	v_cndmask_b32_e64 v66, 0xff800000, v117, s67
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v126, 0x1000000, v67
	v_and_b32_e32 v132, 0x1000000, v75
	v_and_b32_e32 v133, 0x10000, v75
	v_and_b32_e32 v134, 1, v75
	v_and_b32_e32 v123, 0x1000000, v68
	v_and_b32_e32 v124, 0x10000, v68
	v_cmp_ne_u32_e64 s64, 0, v79
	v_cmp_ne_u32_e64 s65, 0, v77
	v_cmp_eq_u16_e64 s59, 1, v74.l
	v_cmp_ne_u32_e64 s56, 0, v122
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v144, v97, v98
.Ltmp2:
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u32_e64 s58, 1, v73
	v_cmp_eq_u16_e64 s55, 1, v78.l
	v_cmp_ne_u32_e64 s51, 0, v114
	v_cmp_eq_u16_e64 s39, 1, v85.h
	v_cmp_ne_u32_e64 s25, 0, v127
	v_cmp_ne_u32_e64 s30, 0, v126
	v_cmp_eq_u16_e64 s62, 1, v70.l
	v_cmp_ne_u32_e64 s61, 0, v71
	v_cmp_ne_u32_e64 s60, 0, v72
	v_cmp_eq_u32_e64 s9, 1, v134
	v_cmp_eq_u16_e64 s10, 1, v86.h
	v_cmp_ne_u32_e64 s8, 0, v133
	v_cmp_ne_u32_e64 s7, 0, v132
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v67, 0xff800000, v118, s64
	v_cndmask_b32_e64 v68, 0xff800000, v119, s65
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_ne_u32_e64 s13, 0, v124
	v_cmp_ne_u32_e64 s14, 0, v123
	v_cmp_eq_u32_e64 s5, 1, v131
	v_cmp_eq_u16_e64 s6, 1, v86.l
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v85, 0, v171
	v_cndmask_b32_e64 v73, 0xff800000, v90, s58
	v_cndmask_b32_e64 v74, 0xff800000, v89, s59
	v_cndmask_b32_e64 v75, 0xff800000, v82, s56
	v_cndmask_b32_e64 v78, 0xff800000, v84, s55
	v_cndmask_b32_e64 v79, 0xff800000, v83, s51
	v_cndmask_b32_e64 v82, 0xff800000, v94, s39
	v_cndmask_b32_e64 v83, 0xff800000, v95, s25
	v_cndmask_b32_e64 v84, 0xff800000, v96, s30
	v_cndmask_b32_e64 v70, 0xff800000, v93, s62
	v_cndmask_b32_e64 v71, 0xff800000, v92, s61
	v_cndmask_b32_e64 v72, 0xff800000, v91, s60
	v_cndmask_b32_e64 v91, 0xff800000, v101, s9
	v_cndmask_b32_e64 v92, 0xff800000, v102, s10
	v_cndmask_b32_e64 v93, 0xff800000, v103, s8
	v_cndmask_b32_e64 v94, 0xff800000, v104, s7
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u32_e64 s63, 1, v69
	v_cmp_eq_u32_e64 s54, 1, v115
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v89, 0xff800000, v99, s13
	v_cndmask_b32_e64 v90, 0xff800000, v100, s14
	v_cndmask_b32_e64 v95, 0xff800000, v108, s5
	v_cndmask_b32_e64 v96, 0xff800000, v109, s6
	s_barrier
	ds_store_b128 v85, v[65:68]
	ds_store_b128 v188, v[73:76]
	ds_store_b128 v189, v[81:84]
	ds_store_b128 v190, v[91:94]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[99:102], v173
	ds_load_b128 v[108:111], v173 offset:512
	ds_load_b128 v[112:115], v173 offset:1024
	ds_load_b128 v[116:119], v173 offset:1536
	v_cndmask_b32_e64 v69, 0xff800000, v120, s63
	v_cndmask_b32_e64 v77, 0xff800000, v121, s54
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v85, v[69:72]
	ds_store_b128 v188, v[77:80]
	ds_store_b128 v189, v[87:90]
	ds_store_b128 v190, v[95:98]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[120:123], v173
	ds_load_b128 v[124:127], v173 offset:1024
	ds_load_b128 v[128:131], v173 offset:512
	ds_load_b128 v[132:135], v173 offset:1536
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v141, v88, v89, v90
	v_max3_f32 v142, v91, v92, v93
.Ltmp4:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s68, 0xff800000, v105
	.loc	1 693 30                        ; attention.py:693:30
	s_mul_i32 s98, s98, s85
	.loc	1 681 25                        ; attention.py:681:25
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v86, v99, v99 :: v_dual_max_f32 v103, v108, v108
	v_max_f32_e32 v85, v112, v112
	v_max3_f32 v104, v113, v101, v114
.Ltmp6:
	.loc	1 681 25                        ; attention.py:681:25
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v85, v86, v85 :: v_dual_max_f32 v86, v116, v116
	s_waitcnt lgkmcnt(3)
	v_max3_f32 v136, v102, v115, v120
	s_waitcnt lgkmcnt(2)
	v_max3_f32 v137, v124, v121, v125
	v_max3_f32 v138, v122, v126, v123
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v139, v132, v129, v133
	v_max_f32_e32 v86, v103, v86
	v_max3_f32 v103, v117, v110, v118
	v_max3_f32 v140, v130, v134, v131
	v_max3_f32 v85, v85, v100, v104
	v_max3_f32 v104, v137, v138, v127
	v_max3_f32 v137, v111, v119, v128
	v_max3_f32 v86, v86, v109, v103
	v_max3_f32 v103, v139, v140, v135
	v_max3_f32 v138, v77, v78, v79
	v_max3_f32 v85, v85, v136, v104
	v_max3_f32 v139, v80, v81, v82
	v_max3_f32 v136, v71, v72, v73
	v_max3_f32 v86, v86, v137, v103
	v_max3_f32 v137, v74, v75, v76
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v103, v85
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v140, v83, v84, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v104, v86
	v_mov_b32_dpp v103, v103 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v104, v104 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v103, v103, v103 :: v_dual_max_f32 v104, v104, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v85, v85, v103
	v_dual_max_f32 v103, v65, v66 :: v_dual_max_f32 v86, v86, v104
	v_max3_f32 v104, v68, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v103, v103, v67, v104
	v_max3_f32 v104, v137, v138, v139
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v137, v85 :: v_dual_mov_b32 v138, v86
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v139, v140, v141, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v103, v103, v136, v104
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v137, v137 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v138, v138 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v104, v137, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v136, v138, v138
.Ltmp16:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v138, v196, v196
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v85, v85, v104 :: v_dual_max_f32 v104, v106, v106
	v_max_f32_e32 v143, v94, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v136, v86, v136
.Ltmp18:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v86, v107, v107
	v_max_f32_e32 v198, v104, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v140, v143, v96, v144
.Ltmp20:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v199, v86, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v103, v103, v139, v140
.Ltmp22:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v139, v195, v195
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v104, v107, v199
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v196, v138, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v137, v103, s96, 0xfedcba98 op_sel:[1,0]
.Ltmp24:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v195, v139, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v104, v104
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v99, v99, v196
	v_sub_f32_e32 v100, v100, v196
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v200, v105, v103, v137
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v103, v106, v198 :: v_dual_sub_f32 v108, v108, v195
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v109, v109, v195
	v_sub_f32_e32 v110, v110, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v86, v105, v200
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v103, v103
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v105, v114, v196
	v_dual_sub_f32 v114, v125, v196 :: v_dual_sub_f32 v111, v111, v195
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v137, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v125, v129, v195
	v_dual_sub_f32 v129, v131, v195 :: v_dual_sub_f32 v66, v66, v200
	v_sub_f32_e32 v131, v80, v200
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v80, v99
	v_exp_f32_e32 v100, v100
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v101, v101, v196 :: v_dual_sub_f32 v116, v116, v195
	v_dual_sub_f32 v102, v102, v196 :: v_dual_sub_f32 v117, v117, v195
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cndmask_b32_e64 v85, 0, v137, s68
	v_cmp_neq_f32_e64 s68, 0xff800000, v106
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v106, v115, v196
	v_sub_f32_e32 v115, v122, v196
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v146, 0, v80, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v100, 0, v100, s23
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cndmask_b32_e64 v201, 0, v103, s68
	v_cmp_neq_f32_e64 s68, 0xff800000, v107
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v103, v112, v196
	v_dual_sub_f32 v107, v120, v196 :: v_dual_sub_f32 v118, v118, v195
	v_sub_f32_e32 v120, v126, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v202, 0, v104, s68
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v104, v113, v196
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v99, v103
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v112, v124, v196 :: v_dual_sub_f32 v119, v119, v195
	v_sub_f32_e32 v113, v121, v196
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v103, v104
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v124, v132, v195
	v_sub_f32_e32 v126, v133, v195
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v104, v105
	v_exp_f32_e32 v102, v102
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v99, s22
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v122, v127, v196 :: v_dual_sub_f32 v127, v130, v195
	v_dual_sub_f32 v130, v135, v195 :: v_dual_sub_f32 v65, v65, v200
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v103, 0, v103, s24
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v121, v123, v196
	v_sub_f32_e32 v123, v128, v195
	v_sub_f32_e32 v128, v134, v195
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v105, v106
	v_exp_f32_e32 v106, v107
	v_exp_f32_e32 v107, v112
	v_exp_f32_e32 v112, v113
	v_exp_f32_e32 v113, v114
	v_exp_f32_e32 v114, v115
	v_exp_f32_e32 v115, v120
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v99, v146, v99
	v_add_f32_e32 v100, v100, v103
.Ltmp26:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v120, v121
	v_exp_f32_e32 v121, v122
	v_exp_f32_e32 v108, v108
	v_exp_f32_e32 v116, v116
	v_exp_f32_e32 v109, v109
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v118, v118
	v_exp_f32_e32 v111, v111
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v122, v123
	v_exp_f32_e32 v123, v124
	v_exp_f32_e32 v124, v125
	v_exp_f32_e32 v125, v126
	v_exp_f32_e32 v126, v127
	v_exp_f32_e32 v127, v128
	v_exp_f32_e32 v128, v129
	v_exp_f32_e32 v129, v130
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v101, s26
	v_cndmask_b32_e64 v104, 0, v104, s27
	v_cndmask_b32_e64 v102, 0, v102, s28
	v_cndmask_b32_e64 v105, 0, v105, s29
	v_cndmask_b32_e64 v106, 0, v106, s31
	v_cndmask_b32_e64 v107, 0, v107, s33
	v_cndmask_b32_e64 v112, 0, v112, s34
	v_cndmask_b32_e64 v113, 0, v113, s35
	v_cndmask_b32_e64 v114, 0, v114, s37
	v_cndmask_b32_e64 v115, 0, v115, s38
	v_cndmask_b32_e64 v120, 0, v120, s40
	v_cndmask_b32_e64 v121, 0, v121, s41
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v67, v67, v200 :: v_dual_add_f32 v102, v102, v105
	v_dual_sub_f32 v68, v68, v200 :: v_dual_add_f32 v103, v106, v107
	v_sub_f32_e32 v69, v69, v200
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v71, v71, v200 :: v_dual_add_f32 v106, v120, v121
	v_dual_sub_f32 v72, v72, v200 :: v_dual_add_f32 v105, v114, v115
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v101, v101, v104 :: v_dual_mul_f32 v28, v28, v85
	v_dual_add_f32 v104, v112, v113 :: v_dual_sub_f32 v75, v75, v200
.Ltmp28:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v79, v79, v200
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v108, 0, v108, s42
	v_cndmask_b32_e64 v116, 0, v116, s43
	v_cndmask_b32_e64 v109, 0, v109, s44
	v_cndmask_b32_e64 v117, 0, v117, s45
	v_cndmask_b32_e64 v110, 0, v110, s46
	v_cndmask_b32_e64 v118, 0, v118, s47
	v_cndmask_b32_e64 v111, 0, v111, s48
	v_cndmask_b32_e64 v119, 0, v119, s49
	v_cndmask_b32_e64 v122, 0, v122, s52
	v_cndmask_b32_e64 v123, 0, v123, s53
	v_cndmask_b32_e64 v124, 0, v124, s18
	v_cndmask_b32_e64 v125, 0, v125, s17
	v_cndmask_b32_e64 v107, 0, v126, s12
.Ltmp29:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v99, v99, v100 :: v_dual_mul_f32 v30, v30, v85
	v_dual_add_f32 v100, v101, v102 :: v_dual_add_f32 v101, v103, v104
.Ltmp30:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v32, v32, v85
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v102, v105, v106
.Ltmp32:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v103, 0, v127, s15
	v_cndmask_b32_e64 v104, 0, v128, s16
	v_cndmask_b32_e64 v105, 0, v129, s19
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v70, v70, v200
	v_dual_sub_f32 v73, v73, v200 :: v_dual_add_f32 v106, v110, v118
	v_sub_f32_e32 v76, v76, v200
	v_sub_f32_e32 v77, v77, v200
	v_dual_sub_f32 v81, v81, v200 :: v_dual_add_f32 v110, v124, v125
	v_sub_f32_e32 v83, v83, v200
	v_dual_sub_f32 v87, v87, v200 :: v_dual_add_f32 v104, v104, v105
.Ltmp33:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v99, v99, v100 :: v_dual_mul_f32 v18, v18, v85
	v_dual_add_f32 v100, v101, v102 :: v_dual_add_f32 v101, v108, v116
.Ltmp34:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v22, v22, v85
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v102, v109, v117
	v_add_f32_e32 v108, v111, v119
	v_add_f32_e32 v109, v122, v123
	v_add_f32_e32 v103, v107, v103
.Ltmp36:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v91, v91, v200
	v_sub_f32_e32 v95, v95, v200
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v130, v65
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_add_lshl_u32 v65, s98, v181, 1
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v99, v99, v100 :: v_dual_mul_f32 v20, v20, v85
	v_dual_add_f32 v100, v101, v102 :: v_dual_add_f32 v101, v106, v108
.Ltmp38:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v24, v24, v85
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v102, v109, v110 :: v_dual_add_f32 v103, v103, v104
.Ltmp40:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v10, v10, v85
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v132, v66
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v66, s98, v193, 1
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v133, v67
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v67, s98, v185, 1
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v134, v68
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v68, s98, v187, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v74, v74, v200
	v_sub_f32_e32 v84, v84, v200
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v105, v81
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v81, v100, v101
	v_add_f32_e32 v101, v102, v103
.Ltmp42:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v78, v78, v200
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v135, v69
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v69, 0x80000000, v66, s2
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v139, v73
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v73, 0x80000000, v67, s2
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v143, v77
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v77, 0x80000000, v68, s2
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v136, v70
	v_exp_f32_e32 v137, v71
	v_exp_f32_e32 v138, v72
	v_exp_f32_e32 v140, v74
	v_exp_f32_e32 v141, v75
	v_exp_f32_e32 v142, v76
	v_exp_f32_e32 v145, v79
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v81, v81, v101
.Ltmp44:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v144, v78
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x3
	buffer_load_b128 v[65:68], v65, s[92:95], 0 offen
	buffer_load_b128 v[69:72], v69, s[92:95], 0 offen
	buffer_load_b128 v[73:76], v73, s[92:95], 0 offen
	buffer_load_b128 v[77:80], v77, s[92:95], 0 offen
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v89, v89, v200 :: v_dual_mov_b32 v100, v99
	v_sub_f32_e32 v82, v82, v200
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v103, v83
.Ltmp45:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v83, v81
.Ltmp46:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v106, v84
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v100, v100 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v102, v82
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v85
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v88, v88, v200
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v82, v99, v100
.Ltmp52:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v93, v93, v200
	v_dual_sub_f32 v96, v96, v200 :: v_dual_mul_f32 v29, v29, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v159, v81, v83 :: v_dual_mov_b32 v84, v82
.Ltmp54:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v81, 0, v132, s67
	.loc	1 681 34                        ; attention.py:681:34
	v_mov_b16_e32 v86.h, 0
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v90, v90, v200 :: v_dual_mov_b32 v203, v159
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v92, v92, v200 :: v_dual_mul_f32 v25, v25, v85
	v_dual_sub_f32 v94, v94, v200 :: v_dual_mul_f32 v27, v27, v85
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v101, v87
	v_exp_f32_e32 v108, v89
	v_exp_f32_e32 v110, v96
.Ltmp57:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v158, v82, v84 :: v_dual_mul_f32 v19, v19, v85
.Ltmp58:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v130, s66
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v86.l, v81.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v87, 0, v133, s64
	v_cndmask_b32_e64 v89, 0, v135, s63
	v_cndmask_b32_e64 v96, 0, v143, s54
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v97, v97, v200 :: v_dual_mul_f32 v26, v26, v85
	v_dual_sub_f32 v98, v98, v200 :: v_dual_mul_f32 v31, v31, v85
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v107, v88
	v_exp_f32_e32 v99, v90
	v_exp_f32_e32 v100, v92
	v_exp_f32_e32 v109, v94
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_dual_mul_f32 v21, v21, v85 :: v_dual_and_b32 v84, 1, v86
	v_mul_f32_e32 v23, v23, v85
	v_mul_f32_e32 v11, v11, v85
	v_mul_f32_e32 v15, v15, v85
	v_mul_f32_e32 v16, v16, v85
	v_mul_f32_e32 v1, v1, v85
	v_mul_f32_e32 v3, v3, v85
	v_mul_f32_e32 v5, v5, v85
	v_mul_f32_e32 v6, v6, v85
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v83.l, v82.h
	v_mov_b16_e32 v83.h, v86.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v12, v12, v85
	v_mul_f32_e32 v7, v7, v85
	v_mul_f32_e32 v8, v8, v85
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v88.l, v87.h
	v_mov_b16_e32 v88.h, v86.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v9, v9, v85
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v90.l, v89.h
	v_mov_b16_e32 v90.h, v86.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v14, v14, v85
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v92.h, v86.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v13, v13, v85
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v94.h, v86.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v2, v2, v85
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v111.l, v96.h
	v_mov_b16_e32 v111.h, v86.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v4, v4, v85
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v85, 0, v134, s65
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v83, 1, v83
	v_add3_u32 v84, v81, v84, 0x7fff
	v_cmp_o_f32_e64 s11, v81, v81
	v_cmp_o_f32_e64 s15, v89, v89
	v_mov_b16_e32 v86.l, v85.h
	v_add3_u32 v83, v82, v83, 0x7fff
	v_cmp_o_f32_e64 s12, v85, v85
	v_cndmask_b16 v81.h, 0x7fff, v84.h, s11
	v_cmp_o_f32_e64 s11, v82, v82
	v_and_b32_e32 v84, 1, v86
	v_and_b32_e32 v82, 1, v88
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v88, 0, v136, s62
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v104, v131
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v81.l, 0x7fff, v83.h, s11
	v_add3_u32 v84, v85, v84, 0x7fff
	v_and_b32_e32 v85, 1, v90
	v_mov_b16_e32 v86.l, v88.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v90, 0, v137, s61
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v83, v87, v82, 0x7fff
	v_cndmask_b16 v82.h, 0x7fff, v84.h, s12
	v_cmp_o_f32_e64 s11, v87, v87
	v_and_b32_e32 v84, 1, v86
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v87, 0, v138, s60
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v85, v89, v85, 0x7fff
	v_mov_b16_e32 v92.l, v90.h
	v_cmp_o_f32_e64 s12, v88, v88
	v_add3_u32 v84, v88, v84, 0x7fff
	v_mov_b16_e32 v86.l, v87.h
	v_cndmask_b16 v83.l, 0x7fff, v85.h, s15
	v_and_b32_e32 v88, 1, v92
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v85, 0, v140, s59
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v82.l, 0x7fff, v83.h, s11
	v_cndmask_b16 v83.h, 0x7fff, v84.h, s12
	v_and_b32_e32 v84, 1, v86
	v_add3_u32 v88, v90, v88, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v89, 0, v139, s58
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v86.l, v85.h
	v_cmp_o_f32_e64 s12, v90, v90
	v_add3_u32 v84, v87, v84, 0x7fff
	v_cmp_o_f32_e64 s11, v87, v87
	v_mov_b16_e32 v87.l, v89.h
	v_mov_b16_e32 v87.h, v86.h
	v_and_b32_e32 v90, 1, v86
	v_cndmask_b16 v84.l, 0x7fff, v88.h, s12
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v88, 0, v142, s57
	v_cndmask_b32_e64 v92, 0, v141, s56
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v84.h, 0x7fff, v84.h, s11
	v_and_b32_e32 v87, 1, v87
	v_add3_u32 v90, v85, v90, 0x7fff
	v_cmp_o_f32_e64 s11, v85, v85
	v_mov_b16_e32 v86.l, v88.h
	v_mov_b16_e32 v94.l, v92.h
	v_add3_u32 v87, v89, v87, 0x7fff
	v_cmp_o_f32_e64 s12, v88, v88
	v_cndmask_b16 v85.h, 0x7fff, v90.h, s11
	v_and_b32_e32 v90, 1, v86
	v_cmp_o_f32_e64 s11, v89, v89
	v_and_b32_e32 v89, 1, v94
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v94, 0, v144, s55
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s15, v96, v96
	v_add3_u32 v90, v88, v90, 0x7fff
	v_cndmask_b16 v85.l, 0x7fff, v87.h, s11
	v_add3_u32 v88, v92, v89, 0x7fff
	v_mov_b16_e32 v86.l, v94.h
	v_and_b32_e32 v89, 1, v111
	v_cndmask_b16 v87.h, 0x7fff, v90.h, s12
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v111, 0, v145, s51
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s11, v92, v92
	v_and_b32_e32 v90, 1, v86
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v92, 0, v104, s50
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v89, v96, v89, 0x7fff
	v_mov_b16_e32 v104.l, v111.h
	v_mov_b16_e32 v104.h, v86.h
	v_add3_u32 v90, v94, v90, 0x7fff
	v_cmp_o_f32_e64 s12, v94, v94
	v_mov_b16_e32 v86.l, v92.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v96, 0, v102, s39
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v87.l, 0x7fff, v88.h, s11
	v_and_b32_e32 v94, 1, v104
	v_cndmask_b16 v88.h, 0x7fff, v90.h, s12
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v102, 0, v105, s36
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v203, v203 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v90, 1, v86
	v_mov_b16_e32 v86.l, v96.h
	v_cndmask_b16 v88.l, 0x7fff, v89.h, s15
	v_add3_u32 v94, v111, v94, 0x7fff
	v_cmp_o_f32_e64 s11, v92, v92
	v_cmp_o_f32_e64 s12, v111, v111
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v103, 0, v103, s25
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v159, v159, v203
.Ltmp62:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v89, v92, v90, 0x7fff
	v_mov_b16_e32 v90.l, v102.h
	v_mov_b16_e32 v90.h, v86.h
	v_and_b32_e32 v92, 1, v86
	v_cndmask_b16 v89.l, 0x7fff, v94.h, s12
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s11
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v94, 0, v106, s30
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s11, v96, v96
	v_add3_u32 v92, v96, v92, 0x7fff
	v_mov_b16_e32 v104.l, v103.h
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v158, v197, v201
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v90, 1, v90
	v_mov_b16_e32 v86.l, v94.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v101, s20
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v105.h, v86.h
	v_mov_b32_e32 v197, v158
	v_add3_u32 v96, v102, v90, 0x7fff
	v_cndmask_b16 v90.h, 0x7fff, v92.h, s11
	v_cmp_o_f32_e64 s11, v102, v102
	.loc	1 701 23                        ; attention.py:701:23
	v_dual_fmac_f32 v159, v154, v202 :: v_dual_and_b32 v102, 1, v104
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v104, 0, v107, s21
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v92, 1, v86
	v_mov_b16_e32 v105.l, v101.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v91, v91
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s12, v94, v94
	v_mov_b16_e32 v86.l, v104.h
	v_add3_u32 v92, v94, v92, 0x7fff
	v_cndmask_b16 v90.l, 0x7fff, v96.h, s11
	v_add3_u32 v94, v103, v102, 0x7fff
	v_and_b32_e32 v96, 1, v105
	v_and_b32_e32 v102, 1, v86
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v105, 0, v108, s13
	v_cndmask_b32_e64 v99, 0, v99, s14
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v92.h, 0x7fff, v92.h, s12
	v_cmp_o_f32_e64 s11, v103, v103
	v_add3_u32 v102, v104, v102, 0x7fff
	v_mov_b16_e32 v103.l, v105.h
	v_mov_b16_e32 v103.h, v86.h
	v_cmp_o_f32_e64 s12, v104, v104
	v_mov_b16_e32 v86.l, v99.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v100, 0, v100, s10
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v93, v93
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v96, v101, v96, 0x7fff
	v_cmp_o_f32_e64 s13, v101, v101
	v_cndmask_b16 v92.l, 0x7fff, v94.h, s11
	v_and_b32_e32 v101, 1, v103
	v_cndmask_b16 v94.h, 0x7fff, v102.h, s12
	v_and_b32_e32 v102, 1, v86
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v91, 0, v91, s9
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v86.l, v100.h
	v_cndmask_b16 v94.l, 0x7fff, v96.h, s13
	v_add3_u32 v101, v105, v101, 0x7fff
	v_add3_u32 v96, v99, v102, 0x7fff
	v_cmp_o_f32_e64 s9, v99, v99
	v_cmp_o_f32_e64 s10, v105, v105
	v_mov_b16_e32 v99.l, v91.h
	v_mov_b16_e32 v99.h, v86.h
	v_and_b32_e32 v102, 1, v86
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v98, v98
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v96.l, 0x7fff, v101.h, s10
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v93, 0, v93, s8
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v99, 1, v99
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v109, s7
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v102, v100, v102, 0x7fff
	v_cmp_o_f32_e64 s7, v100, v100
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v97, v97
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v100.l, v93.h
	v_mov_b16_e32 v100.h, v86.h
	v_mov_b16_e32 v86.l, v101.h
	v_add3_u32 v103, v91, v99, 0x7fff
	v_cndmask_b16 v99.h, 0x7fff, v102.h, s7
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v102, 0, v110, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s7, v91, v91
	v_dual_mov_b32 v154, v159 :: v_dual_and_b32 v91, 1, v100
	v_and_b32_e32 v100, 1, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v86.l, v102.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v98, 0, v98, s3
	v_cndmask_b32_e64 v97, 0, v97, s4
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s4, v101, v101
	v_add3_u32 v100, v101, v100, 0x7fff
	v_and_b32_e32 v101, 1, v86
	v_mov_b16_e32 v86.l, v98.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v95, v95
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v99.l, 0x7fff, v103.h, s7
	v_mov_b16_e32 v103.h, v86.h
	v_mov_b16_e32 v104.h, v86.h
	v_and_b32_e32 v86, 1, v86
	v_cmp_o_f32_e64 s6, v98, v98
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v104.l, v97.h
	v_add3_u32 v86, v98, v86, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v98, 0, v166
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v95, 0, v95, s5
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v98, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v98, v[69:72] offset:16
	s_waitcnt vmcnt(1)
	ds_store_b128 v98, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v98, v[77:80] offset:4112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v67, v194 offset:512
	ds_load_u16_d16 v98, v194 offset:288
	ds_load_u16_d16 v107, v194 offset:608
	ds_load_u16_d16 v106, v194 offset:352
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v103.l, v95.h
	v_add3_u32 v91, v93, v91, 0x7fff
	v_cndmask_b16 v204.h, 0x7fff, v100.h, s4
	v_cmp_o_f32_e64 s3, v93, v93
	v_and_b32_e32 v100, 1, v104
	v_and_b32_e32 v103, 1, v103
	v_cmp_o_f32_e64 s5, v95, v95
	v_cmp_o_f32_e64 s7, v97, v97
	v_cndmask_b16 v204.l, 0x7fff, v91.h, s3
	v_cndmask_b16 v205.h, 0x7fff, v86.h, s6
	v_add3_u32 v93, v95, v103, 0x7fff
	v_add3_u32 v95, v97, v100, 0x7fff
	v_permlanex16_b32 v86, v81, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v91, v82, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v97, v85, s96, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v96.h, 0x7fff, v96.h, s9
	v_add3_u32 v101, v102, v101, 0x7fff
	v_perm_b32 v113, v86, v81, v160
	v_perm_b32 v114, v86, v81, v161
	v_perm_b32 v115, v91, v82, v160
	v_perm_b32 v116, v91, v82, v161
	v_perm_b32 v81, v97, v85, v160
	v_perm_b32 v82, v97, v85, v161
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v65, v194
	ds_load_u16_d16 v97, v194 offset:32
	ds_load_u16_d16 v66, v194 offset:256
	ds_load_u16_d16 v207, v194 offset:64
	ds_load_u16_d16 v208, v194 offset:320
	ds_load_u16_d16 v209, v194 offset:576
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v106, v194 offset:480
	ds_load_u16_d16 v105, v194 offset:96
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s4, v102, v102
	v_cndmask_b16 v206.l, 0x7fff, v93.h, s5
	v_cndmask_b16 v205.l, 0x7fff, v95.h, s7
	v_permlanex16_b32 v93, v83, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v95, v84, s96, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v206.h, 0x7fff, v101.h, s4
	v_permlanex16_b32 v100, v87, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v101, v88, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v102, v89, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v103, v90, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v108, v94, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v109, v96, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v68, v99, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v117, v93, v83, v160
	v_perm_b32 v118, v93, v83, v161
	v_perm_b32 v119, v95, v84, v160
	v_perm_b32 v120, v95, v84, v161
	v_perm_b32 v83, v100, v87, v160
	v_perm_b32 v84, v100, v87, v161
	v_perm_b32 v85, v101, v88, v160
	v_perm_b32 v86, v101, v88, v161
	v_perm_b32 v87, v102, v89, v160
	v_perm_b32 v88, v102, v89, v161
	v_perm_b32 v89, v103, v90, v160
	v_perm_b32 v90, v103, v90, v161
	v_perm_b32 v93, v108, v94, v160
	v_perm_b32 v94, v108, v94, v161
	v_perm_b32 v95, v109, v96, v160
	v_perm_b32 v96, v109, v96, v161
	v_perm_b32 v73, v68, v99, v160
	v_perm_b32 v74, v68, v99, v161
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v65, v194 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v194 offset:160
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v207, v194 offset:192
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v105, v194 offset:224
	ds_load_u16_d16_hi v66, v194 offset:384
	ds_load_u16_d16_hi v67, v194 offset:640
	ds_load_u16_d16 v68, v194 offset:768
	ds_load_u16_d16_hi v98, v194 offset:416
	ds_load_u16_d16 v210, v194 offset:832
	ds_load_u16_d16_hi v209, v194 offset:704
	ds_load_u16_d16 v99, v194 offset:544
	ds_load_u16_d16_hi v208, v194 offset:448
	ds_load_u16_d16 v211, v194 offset:1088
	ds_load_u16_d16 v69, v194 offset:1024
	ds_load_u16_d16 v100, v194 offset:800
	ds_load_u16_d16 v108, v194 offset:864
	ds_load_u16_d16 v212, v194 offset:1344
	ds_load_u16_d16 v70, v194 offset:1280
	ds_load_u16_d16 v101, v194 offset:1056
	ds_load_u16_d16 v109, v194 offset:1120
	ds_load_u16_d16 v213, v194 offset:1600
	ds_load_u16_d16 v71, v194 offset:1536
	ds_load_u16_d16 v102, v194 offset:1312
	ds_load_u16_d16 v110, v194 offset:1376
	ds_load_u16_d16 v72, v194 offset:1792
	ds_load_u16_d16 v103, v194 offset:1568
	ds_load_u16_d16 v214, v194 offset:1856
	ds_load_u16_d16 v111, v194 offset:1632
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v104, v92, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v76, v204, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v78, v206, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v80, v205, s96, 0xfedcba98 op_sel:[1,0]
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s3, s97, 64
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v91, v104, v92, v160
	v_perm_b32 v92, v104, v92, v161
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v210, v194 offset:960
	ds_load_u16_d16_hi v68, v194 offset:896
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v99, v194 offset:672
	ds_load_u16_d16_hi v107, v194 offset:736
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v211, v194 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v69, v194 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v100, v194 offset:928
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v108, v194 offset:992
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v212, v194 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v70, v194 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v101, v194 offset:1184
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v109, v194 offset:1248
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v213, v194 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v71, v194 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v102, v194 offset:1440
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v110, v194 offset:1504
	ds_load_u16_d16 v121, v194 offset:2112
	ds_load_u16_d16 v129, v194 offset:2048
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v72, v194 offset:1920
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v103, v194 offset:1696
	ds_load_u16_d16 v104, v194 offset:1824
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v214, v194 offset:1984
	ds_load_u16_d16 v112, v194 offset:1888
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v111, v194 offset:1760
	ds_load_u16_d16 v122, v194 offset:2368
	ds_load_u16_d16 v130, v194 offset:2304
	ds_load_u16_d16 v145, v194 offset:2080
	ds_load_u16_d16 v137, v194 offset:2144
	ds_load_u16_d16 v123, v194 offset:2624
	ds_load_u16_d16 v131, v194 offset:2560
	ds_load_u16_d16 v146, v194 offset:2336
	ds_load_u16_d16 v138, v194 offset:2400
	ds_load_u16_d16 v124, v194 offset:2880
	ds_load_u16_d16 v132, v194 offset:2816
	ds_load_u16_d16 v147, v194 offset:2592
	ds_load_u16_d16 v139, v194 offset:2656
	ds_load_u16_d16 v125, v194 offset:3136
	ds_load_u16_d16 v133, v194 offset:3072
	ds_load_u16_d16 v148, v194 offset:2848
	ds_load_u16_d16 v140, v194 offset:2912
	ds_load_u16_d16 v134, v194 offset:3328
	ds_load_u16_d16 v149, v194 offset:3104
	ds_load_u16_d16 v126, v194 offset:3392
	ds_load_u16_d16 v141, v194 offset:3168
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v121, v194 offset:2240
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v129, v194 offset:2176
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v104, v194 offset:1952
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v112, v194 offset:2016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v122, v194 offset:2496
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v130, v194 offset:2432
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v145, v194 offset:2208
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v137, v194 offset:2272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v123, v194 offset:2752
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v131, v194 offset:2688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v146, v194 offset:2464
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v138, v194 offset:2528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v124, v194 offset:3008
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v132, v194 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v147, v194 offset:2720
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v139, v194 offset:2784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v125, v194 offset:3264
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v133, v194 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v148, v194 offset:2976
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v140, v194 offset:3040
	ds_load_u16_d16 v127, v194 offset:3648
	ds_load_u16_d16 v135, v194 offset:3584
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v134, v194 offset:3456
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v149, v194 offset:3232
	ds_load_u16_d16 v150, v194 offset:3360
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v126, v194 offset:3520
	ds_load_u16_d16 v142, v194 offset:3424
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v141, v194 offset:3296
	ds_load_u16_d16 v128, v194 offset:3904
	ds_load_u16_d16 v136, v194 offset:3840
	ds_load_u16_d16 v151, v194 offset:3616
	ds_load_u16_d16 v143, v194 offset:3680
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[113:120], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v65, v194 offset:4160
	ds_load_u16_d16 v215, v194 offset:4096
	ds_load_u16_d16 v152, v194 offset:3872
	ds_load_u16_d16 v144, v194 offset:3936
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(33)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[113:120], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[207:214], v[113:120], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v66, v194 offset:4416
	ds_load_u16_d16 v216, v194 offset:4352
	ds_load_u16_d16 v97, v194 offset:4128
	ds_load_u16_d16 v207, v194 offset:4192
	ds_load_u16_d16 v67, v194 offset:4672
	ds_load_u16_d16 v217, v194 offset:4608
	ds_load_u16_d16 v98, v194 offset:4384
	ds_load_u16_d16 v208, v194 offset:4448
	ds_load_u16_d16 v218, v194 offset:4864
	ds_load_u16_d16 v99, v194 offset:4640
	ds_load_u16_d16 v68, v194 offset:4928
	ds_load_u16_d16 v209, v194 offset:4704
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v127, v194 offset:3776
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v135, v194 offset:3712
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v150, v194 offset:3488
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v142, v194 offset:3552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v128, v194 offset:4032
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v136, v194 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v151, v194 offset:3744
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v143, v194 offset:3808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v65, v194 offset:4288
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v215, v194 offset:4224
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v152, v194 offset:4000
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v144, v194 offset:4064
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v66, v194 offset:4544
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v216, v194 offset:4480
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v97, v194 offset:4256
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v207, v194 offset:4320
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v67, v194 offset:4800
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v217, v194 offset:4736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v98, v194 offset:4512
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v208, v194 offset:4576
	ds_load_u16_d16 v69, v194 offset:5184
	ds_load_u16_d16 v219, v194 offset:5120
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v218, v194 offset:4992
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v99, v194 offset:4768
	ds_load_u16_d16 v100, v194 offset:4896
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v68, v194 offset:5056
	ds_load_u16_d16 v210, v194 offset:4960
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v209, v194 offset:4832
	ds_load_u16_d16 v70, v194 offset:5440
	ds_load_u16_d16 v220, v194 offset:5376
	ds_load_u16_d16 v101, v194 offset:5152
	ds_load_u16_d16 v211, v194 offset:5216
	ds_load_u16_d16 v71, v194 offset:5696
	ds_load_u16_d16 v221, v194 offset:5632
	ds_load_u16_d16 v102, v194 offset:5408
	ds_load_u16_d16 v212, v194 offset:5472
	ds_load_u16_d16 v72, v194 offset:5952
	ds_load_u16_d16 v222, v194 offset:5888
	ds_load_u16_d16 v103, v194 offset:5664
	ds_load_u16_d16 v213, v194 offset:5728
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[105:112], v[113:120], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v105, v194 offset:6208
	ds_load_u16_d16 v113, v194 offset:6144
	ds_load_u16_d16 v104, v194 offset:5920
	ds_load_u16_d16 v214, v194 offset:5984
	ds_load_u16_d16 v114, v194 offset:6400
	ds_load_u16_d16 v223, v194 offset:6176
	ds_load_u16_d16 v106, v194 offset:6464
	ds_load_u16_d16 v231, v194 offset:6240
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v69, v194 offset:5312
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v219, v194 offset:5248
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v100, v194 offset:5024
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v210, v194 offset:5088
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v70, v194 offset:5568
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v220, v194 offset:5504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v101, v194 offset:5280
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v211, v194 offset:5344
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v71, v194 offset:5824
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v221, v194 offset:5760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v102, v194 offset:5536
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v212, v194 offset:5600
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v72, v194 offset:6080
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v222, v194 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v103, v194 offset:5792
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v213, v194 offset:5856
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v105, v194 offset:6336
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v113, v194 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v104, v194 offset:6048
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v214, v194 offset:6112
	ds_load_u16_d16 v107, v194 offset:6720
	ds_load_u16_d16 v115, v194 offset:6656
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v114, v194 offset:6528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v223, v194 offset:6304
	ds_load_u16_d16 v224, v194 offset:6432
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v106, v194 offset:6592
	ds_load_u16_d16 v232, v194 offset:6496
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v231, v194 offset:6368
	ds_load_u16_d16 v108, v194 offset:6976
	ds_load_u16_d16 v116, v194 offset:6912
	ds_load_u16_d16 v225, v194 offset:6688
	ds_load_u16_d16 v233, v194 offset:6752
	ds_load_u16_d16 v109, v194 offset:7232
	ds_load_u16_d16 v117, v194 offset:7168
	ds_load_u16_d16 v226, v194 offset:6944
	ds_load_u16_d16 v234, v194 offset:7008
	ds_load_u16_d16 v110, v194 offset:7488
	ds_load_u16_d16 v118, v194 offset:7424
	ds_load_u16_d16 v227, v194 offset:7200
	ds_load_u16_d16 v235, v194 offset:7264
	ds_load_u16_d16 v111, v194 offset:7744
	ds_load_u16_d16 v119, v194 offset:7680
	ds_load_u16_d16 v228, v194 offset:7456
	ds_load_u16_d16 v236, v194 offset:7520
	ds_load_u16_d16 v112, v194 offset:8000
	ds_load_u16_d16 v120, v194 offset:7936
	ds_load_u16_d16 v229, v194 offset:7712
	ds_load_u16_d16 v237, v194 offset:7776
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v107, v194 offset:6848
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v115, v194 offset:6784
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v224, v194 offset:6560
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v232, v194 offset:6624
	ds_load_u16_d16 v230, v194 offset:7968
	ds_load_u16_d16 v238, v194 offset:8032
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v108, v194 offset:7104
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v116, v194 offset:7040
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v225, v194 offset:6816
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v233, v194 offset:6880
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v109, v194 offset:7360
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v117, v194 offset:7296
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v226, v194 offset:7072
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v234, v194 offset:7136
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v110, v194 offset:7616
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v118, v194 offset:7552
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v227, v194 offset:7328
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v235, v194 offset:7392
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v111, v194 offset:7872
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v119, v194 offset:7808
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v228, v194 offset:7584
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v236, v194 offset:7648
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v112, v194 offset:8128
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v120, v194 offset:8064
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v229, v194 offset:7840
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v237, v194 offset:7904
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v230, v194 offset:8096
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v238, v194 offset:8160
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[129:136], v[81:88], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[145:152], v[81:88], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[121:128], v[81:88], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[137:144], v[81:88], v[1:8]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_perm_b32 v75, v76, v204, v160
	v_perm_b32 v76, v76, v204, v161
	v_perm_b32 v77, v78, v206, v160
	v_perm_b32 v78, v78, v206, v161
	v_perm_b32 v79, v80, v205, v160
	v_perm_b32 v80, v80, v205, v161
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[215:222], v[89:96], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[89:96], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[89:96], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[207:214], v[89:96], v[1:8]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cmpk_lt_u32 s97, 0x1c0
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[113:120], v[73:80], v[25:32]
	s_mov_b32 s97, s3
	v_wmma_f32_16x16x16_bf16 v[9:16], v[105:112], v[73:80], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[223:230], v[73:80], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[231:238], v[73:80], v[1:8]
	v_dual_mov_b32 v105, v200 :: v_dual_mov_b32 v106, v198
	v_mov_b32_e32 v107, v199
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc0 .LBB0_6
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_or_b32 s98, s97, s71
	.loc	1 658 32                        ; attention.py:658:32
	v_add_nc_u32_e32 v81, 0, v168
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s3, s98, s84
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v123, s79 :: v_dual_mov_b32 v120, s76
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v65, s3, v153, 1
	v_add_lshl_u32 v66, s3, v191, 1
	v_add_lshl_u32 v67, s3, v192, 1
	v_add_lshl_u32 v68, s3, v157, 1
	.loc	1 663 30                        ; attention.py:663:30
	v_mov_b32_e32 v122, s78
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	v_cndmask_b32_e64 v69, 0x80000000, v66, s1
	v_cndmask_b32_e64 v73, 0x80000000, v67, s1
	v_cndmask_b32_e64 v77, 0x80000000, v68, s1
	s_clause 0x3
	buffer_load_b128 v[65:68], v65, s[88:91], 0 offen
	buffer_load_b128 v[69:72], v69, s[88:91], 0 offen
	buffer_load_b128 v[73:76], v73, s[88:91], 0 offen
	buffer_load_b128 v[77:80], v77, s[88:91], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v121, s77 :: v_dual_mov_b32 v118, s74
	v_dual_mov_b32 v119, s75 :: v_dual_mov_b32 v116, s72
	v_mov_b32_e32 v117, s73
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s4, s87, s97
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v170, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v170, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v170, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v170, v[77:80] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v174
	ds_load_b128 v[65:68], v81
	ds_load_b128 v[73:76], v81 offset:2048
	ds_load_b128 v[77:80], v174 offset:2048
	ds_load_b128 v[101:104], v174 offset:4096
	ds_load_b128 v[97:100], v81 offset:4096
	ds_load_b128 v[108:111], v81 offset:6144
	ds_load_b128 v[112:115], v174 offset:6144
	ds_load_b128 v[124:127], v175
	ds_load_b128 v[132:135], v175 offset:2048
	ds_load_b128 v[128:131], v176
	ds_load_b128 v[136:139], v176 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[65:72], v[33:40], v[116:123]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[73:80], v[33:40], v[116:123]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[33:40], v[116:123]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[108:115], v[33:40], v[116:123]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[97:100], v175 offset:4096
	ds_load_b128 v[108:111], v175 offset:6144
	ds_load_b128 v[101:104], v176 offset:4096
	ds_load_b128 v[112:115], v176 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[124:131], v[41:48], v[89:96]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[116:119], v177
	ds_load_b128 v[124:127], v177 offset:2048
	ds_load_b128 v[120:123], v178
	ds_load_b128 v[128:131], v178 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[132:139], v[41:48], v[81:88]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[108:115], v[41:48], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[97:100], v177 offset:4096
	ds_load_b128 v[108:111], v177 offset:6144
	ds_load_b128 v[101:104], v178 offset:4096
	ds_load_b128 v[112:115], v178 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[116:123], v[49:56], v[89:96]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[124:131], v[49:56], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[116:119], v179
	ds_load_b128 v[124:127], v179 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[108:115], v[49:56], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[108:111], v179 offset:4096
	ds_load_b128 v[132:135], v179 offset:6144
	ds_load_b128 v[120:123], v180
	ds_load_b128 v[128:131], v180 offset:2048
	ds_load_b128 v[112:115], v180 offset:4096
	ds_load_b128 v[136:139], v180 offset:6144
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[116:123], v[57:64], v[89:96]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[124:131], v[57:64], v[81:88]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[108:115], v[57:64], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[132:139], v[57:64], v[65:72]
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz .LBB0_4
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 674 25                        ; attention.py:674:25
	v_add_nc_u32_e32 v97, s4, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v98, 31, v97
	v_add_co_u32 v97, s3, s80, v97
	v_add_co_ci_u32_e64 v98, null, s81, v98, s3
	global_load_b128 v[101:104], v[97:98], off
.LBB0_4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz .LBB0_1
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v97, s4, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v98, 31, v97
	v_add_co_u32 v97, s3, s80, v97
	v_add_co_ci_u32_e64 v98, null, s81, v98, s3
	global_load_b128 v[97:100], v[97:98], off
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v165
	v_add_nc_u32_e32 v34, 0, v167
	v_lshl_add_u32 v35, v186, 1, 0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	s_mov_b32 s11, 0x31027000
	ds_store_b64 v35, v[158:159]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v35, 1, v164
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 629 13                        ; attention.py:629:13
	ds_load_b32 v37, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v0, 1, v163
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v34, 16, v35
	v_or_b32_e32 v33, 32, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v36, v0, v162
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 48, v35
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v38, s70, v36
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v36, s69, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, 0x200, v38
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v36, s85, v36
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v38, null, v37, v37, v25
	v_div_scale_f32 v40, null, v37, v37, v26
	v_div_scale_f32 v42, null, v37, v37, v27
	v_div_scale_f32 v44, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v38
	v_rcp_f32_e32 v47, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v42
	v_rcp_f32_e32 v49, v44
	v_div_scale_f32 v50, null, v37, v37, v29
	v_div_scale_f32 v39, vcc_lo, v25, v37, v25
	v_div_scale_f32 v41, s2, v26, v37, v26
	v_fma_f32 v54, -v38, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_fma_f32 v55, -v40, v47, 1.0
	v_div_scale_f32 v52, null, v37, v37, v30
	v_rcp_f32_e32 v53, v50
	v_fma_f32 v56, -v42, v48, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v44, v49, 1.0
	v_dual_fmac_f32 v46, v54, v46 :: v_dual_fmac_f32 v47, v55, v47
	v_div_scale_f32 v43, s3, v27, v37, v27
	v_div_scale_f32 v45, s4, v28, v37, v28
	v_rcp_f32_e32 v58, v52
	v_dual_fmac_f32 v48, v56, v48 :: v_dual_mul_f32 v55, v39, v46
	v_fmac_f32_e32 v49, v57, v49
	v_mul_f32_e32 v56, v41, v47
	v_fma_f32 v54, -v50, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v57, v43, v48
	v_div_scale_f32 v51, s5, v29, v37, v29
	v_fma_f32 v62, -v40, v56, v41
	v_mul_f32_e32 v59, v45, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v60, -v52, v58, 1.0
	v_fma_f32 v61, -v38, v55, v39
	v_fmac_f32_e32 v53, v54, v53
	v_fmac_f32_e32 v56, v62, v47
	v_fma_f32 v64, -v44, v59, v45
	v_fma_f32 v63, -v42, v57, v43
	v_fmac_f32_e32 v58, v60, v58
	v_dual_fmac_f32 v55, v61, v46 :: v_dual_mul_f32 v54, v51, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v59, v64, v49
	v_fma_f32 v38, -v38, v55, v39
	v_fma_f32 v39, -v40, v56, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v41, -v44, v59, v45
	v_fma_f32 v44, -v50, v54, v51
	v_fmac_f32_e32 v57, v63, v48
	v_div_fmas_f32 v38, v38, v46, v55
	s_mov_b32 vcc_lo, s2
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s2, 0, v37
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v54, v44, v53
	v_fma_f32 v40, -v42, v57, v43
	v_div_scale_f32 v42, null, v37, v37, v31
	v_div_fmas_f32 v39, v39, v47, v56
	v_div_fixup_f32 v25, v38, v37, v25
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v38, v42
	v_div_fmas_f32 v40, v40, v48, v57
	v_div_fixup_f32 v26, v39, v37, v26
	v_div_scale_f32 v39, s3, v30, v37, v30
	v_div_scale_f32 v43, null, v37, v37, v32
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v45, v39, v58
	v_div_fixup_f32 v27, v40, v37, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v42, v38, 1.0
	v_rcp_f32_e32 v47, v43
	v_div_scale_f32 v44, null, v37, v37, v17
	v_fma_f32 v40, -v52, v45, v39
	v_fmac_f32_e32 v38, v46, v38
	v_div_fmas_f32 v41, v41, v49, v59
	v_fma_f32 v48, -v50, v54, v51
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v45, v40, v58
	v_rcp_f32_e32 v49, v44
	v_div_fixup_f32 v28, v41, v37, v28
	v_div_scale_f32 v41, s4, v31, v37, v31
	v_fma_f32 v46, -v43, v47, 1.0
	v_div_fmas_f32 v48, v48, v53, v54
	v_fma_f32 v39, -v52, v45, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v41, v38
	v_div_scale_f32 v53, null, v37, v37, v18
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v47, v46, v47
	v_fma_f32 v50, -v42, v40, v41
	v_div_fmas_f32 v39, v39, v58, v45
	v_rcp_f32_e32 v45, v53
	v_fma_f32 v52, -v44, v49, 1.0
	v_div_scale_f32 v46, s6, v32, v37, v32
	v_fmac_f32_e32 v40, v50, v38
	v_div_fixup_f32 v29, v48, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v49, v52, v49
	v_div_fixup_f32 v30, v39, v37, v30
	v_div_scale_f32 v48, null, v37, v37, v19
	v_fma_f32 v39, -v42, v40, v41
	v_fma_f32 v42, -v53, v45, 1.0
	v_mul_f32_e32 v51, v46, v47
	v_div_scale_f32 v52, s3, v17, v37, v17
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v42, v45
	v_rcp_f32_e32 v42, v48
	v_fma_f32 v50, -v43, v51, v46
	v_div_fmas_f32 v38, v39, v38, v40
	s_mov_b32 vcc_lo, s6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s2
	v_cndmask_b32_e64 v26, 0, v26, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v51, v50, v47
	v_div_fixup_f32 v31, v38, v37, v31
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s2
	v_cndmask_b32_e64 v28, 0, v28, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v50, -v48, v42, 1.0
	v_mul_f32_e32 v41, v52, v49
	v_fma_f32 v39, -v43, v51, v46
	v_div_scale_f32 v46, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v40, -v44, v41, v52
	v_div_scale_f32 v43, s4, v18, v37, v18
	v_div_fmas_f32 v39, v39, v47, v51
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v41, v40, v49
	v_rcp_f32_e32 v40, v46
	v_mul_f32_e32 v47, v43, v45
	v_div_fixup_f32 v32, v39, v37, v32
	v_div_scale_f32 v51, null, v37, v37, v21
	v_fma_f32 v38, -v44, v41, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v53, v47, v43
	v_div_scale_f32 v44, s5, v19, v37, v19
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v50, -v46, v40, 1.0
	v_div_fmas_f32 v38, v38, v49, v41
	v_fmac_f32_e32 v47, v39, v45
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v50, null, v37, v37, v22
	v_div_fixup_f32 v17, v38, v37, v17
	v_fma_f32 v38, -v53, v47, v43
	v_div_scale_f32 v49, s3, v20, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v50
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v45, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v49, v40
	v_fma_f32 v54, -v51, v41, 1.0
	v_div_scale_f32 v45, s4, v21, v37, v21
	v_div_fixup_f32 v18, v38, v37, v18
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v54, v41
	v_fma_f32 v47, -v50, v53, 1.0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v27, v27
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s2
	v_cndmask_b32_e64 v32, 0, v32, s2
	v_cndmask_b32_e64 v17, 0, v17, s2
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fmac_f32_e32 v53, v47, v53
	v_mul_f32_e32 v39, v44, v42
	v_div_scale_f32 v47, null, v37, v37, v23
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v48, v39, v44
	v_fmac_f32_e32 v39, v43, v42
	v_fma_f32 v43, -v46, v52, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v48, v39, v44
	v_dual_fmac_f32 v52, v43, v40 :: v_dual_mul_f32 v43, v45, v41
	v_div_scale_f32 v44, s6, v22, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v42, v39
	v_fma_f32 v39, -v46, v52, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v51, v43, v45
	v_mul_f32_e32 v48, v44, v53
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v19, v38, v37, v19
	v_div_fmas_f32 v39, v39, v40, v52
	v_fmac_f32_e32 v43, v42, v41
	v_fma_f32 v42, -v50, v48, v44
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v49, null, v37, v37, v24
	v_fma_f32 v38, -v51, v43, v45
	v_fmac_f32_e32 v48, v42, v53
	v_div_scale_f32 v51, null, v37, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v49
	v_div_fmas_f32 v38, v38, v41, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v50, v48, v44
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v52, -v47, v46, 1.0
	v_div_fixup_f32 v20, v39, v37, v20
	v_div_scale_f32 v39, s3, v23, v37, v23
	v_div_fmas_f32 v41, v41, v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v42, -v49, v40, 1.0
	v_div_scale_f32 v44, s4, v24, v37, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v41, v37, v22
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, null, v37, v37, v9
	v_div_fixup_f32 v21, v38, v37, v21
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v44, v40
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v53, null, v37, v37, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v51, v41, 1.0
	v_fma_f32 v38, -v49, v50, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v55, v53
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v52, v41
	v_dual_mul_f32 v43, v39, v46 :: v_dual_fmac_f32 v50, v38, v40
	v_div_scale_f32 v38, s5, v9, v37, v9
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v48, -v47, v43, v39
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v48, v46
	v_fma_f32 v48, -v42, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v47, v43, v39
	v_div_scale_f32 v47, null, v37, v37, v11
	v_fmac_f32_e32 v45, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v46, v43
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v43, -v49, v50, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v38, v45
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v46, s3, v10, v37, v10
	v_div_fmas_f32 v40, v43, v40, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v42, v44, v38
	v_div_fixup_f32 v23, v39, v37, v23
	v_mul_f32_e32 v54, v46, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v47, v48, 1.0
	v_div_fixup_f32 v24, v40, v37, v24
	v_fmac_f32_e32 v44, v52, v45
	v_fma_f32 v40, -v53, v55, 1.0
	v_fma_f32 v43, -v51, v54, v46
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s6, v11, v37, v11
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v49, v48
	v_dual_fmac_f32 v54, v43, v41 :: v_dual_fmac_f32 v55, v40, v55
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v40, s4, v12, v37, v12
	v_fma_f32 v39, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v51, v54, v46
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s2
	v_cndmask_b32_e64 v24, 0, v24, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v50, v39, v48
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v39, 1.0
	v_fmac_f32_e32 v39, v46, v39
	v_div_fmas_f32 v38, v38, v45, v44
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v44, v40, v55
	v_div_fmas_f32 v41, v43, v41, v54
	v_fma_f32 v43, -v47, v50, v49
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v46, s3, v13, v37, v13
	v_div_fixup_f32 v9, v38, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v43, v43, v48, v50
	v_fma_f32 v48, -v53, v44, v40
	v_mul_f32_e32 v38, v46, v39
	v_div_scale_f32 v45, null, v37, v37, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v11, v43, v37, v11
	v_div_scale_f32 v43, null, v37, v37, v15
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v10, v41, v37, v10
	v_rcp_f32_e32 v49, v43
	v_fmac_f32_e32 v44, v48, v55
	v_fma_f32 v48, -v42, v38, v46
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s2
	v_cndmask_b32_e64 v10, 0, v10, s2
	v_cndmask_b32_e64 v11, 0, v11, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v53, v44, v40
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v37, v37, v16
	v_fma_f32 v41, -v45, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v55, v44
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v40, v37, v12
	v_fma_f32 v40, -v42, v38, v46
	v_fma_f32 v46, -v43, v49, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v1
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v37, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v38, v37, v13
	v_fma_f32 v38, -v48, v50, 1.0
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s5, v14, v37, v14
	v_div_scale_f32 v40, s3, v15, v37, v15
	v_fmac_f32_e32 v50, v38, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v41, v47
	v_rcp_f32_e32 v52, v46
	v_div_scale_f32 v38, s4, v16, v37, v16
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v45, v44, v41
	v_div_scale_f32 v53, s5, v1, v37, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v54, -v46, v52, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v45, v44, v41
	v_div_fmas_f32 v41, v41, v47, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v39, v42, 1.0
	v_mul_f32_e32 v45, v40, v49
	v_mul_f32_e32 v47, v38, v50
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v14, v41, v37, v14
	v_fmac_f32_e32 v42, v51, v42
	v_fma_f32 v44, -v43, v45, v40
	v_div_scale_f32 v51, null, v37, v37, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_mul_f32 v56, v53, v42 :: v_dual_fmac_f32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v55, v51
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s6, v2, v37, v2
	v_fma_f32 v40, -v43, v45, v40
	v_fmac_f32_e32 v47, v44, v50
	v_fma_f32 v41, -v39, v56, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v54, v52
	v_div_fmas_f32 v40, v40, v49, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v51, v55, 1.0
	v_fmac_f32_e32 v56, v41, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v41, -v46, v43, v54
	v_fma_f32 v38, -v48, v47, v38
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v55, v44, v55
	v_fma_f32 v39, -v39, v56, v53
	v_fmac_f32_e32 v43, v41, v52
	v_div_fmas_f32 v38, v38, v50, v47
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, s3, v3, v37, v3
	v_div_fmas_f32 v39, v39, v42, v56
	v_fma_f32 v42, -v46, v43, v54
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v44, v55
	v_div_scale_f32 v45, null, v37, v37, v4
	v_div_fmas_f32 v42, v42, v52, v43
	v_div_fixup_f32 v15, v40, v37, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v51, v41, v44
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v16, v38, v37, v16
	v_div_fixup_f32 v2, v42, v37, v2
	v_div_scale_f32 v42, null, v37, v37, v7
	v_fmac_f32_e32 v41, v46, v55
	v_div_fixup_f32 v1, v39, v37, v1
	v_div_scale_f32 v39, null, v37, v37, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v46, v42
	v_fma_f32 v40, -v45, v47, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v37, v37, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v40, null, v37, v37, v6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v53, -v42, v46, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s2
	v_cndmask_b32_e64 v2, 0, v2, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v44, v40
	v_rcp_f32_e32 v51, v49
	v_div_scale_f32 v53, s5, v7, v37, v7
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v43, vcc_lo, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v57, v53, v46
	v_div_fixup_f32 v3, v38, v37, v3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v55, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s4, v6, v37, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v39, v41, 1.0
	v_mul_f32_e32 v56, v50, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v48, v43, v47 :: v_dual_fmac_f32 v41, v38, v41
	v_div_scale_f32 v38, s3, v5, v37, v5
	v_fma_f32 v52, -v45, v48, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v54, v38, v41
	v_fmac_f32_e32 v48, v52, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v39, v54, v38
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v45, -v40, v56, v50
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s6, v8, v37, v8
	v_fmac_f32_e32 v54, v52, v41
	v_fma_f32 v52, -v42, v57, v53
	v_fmac_f32_e32 v56, v45, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v58, v55, v51
	v_div_fmas_f32 v43, v43, v47, v48
	v_fma_f32 v38, -v39, v54, v38
	v_fmac_f32_e32 v57, v52, v46
	v_fma_f32 v40, -v40, v56, v50
	v_fma_f32 v39, -v49, v58, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v43, v37, v4
	v_div_fmas_f32 v38, v38, v41, v54
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v58, v39, v51
	v_fma_f32 v39, -v42, v57, v53
	v_div_fmas_f32 v40, v40, v44, v56
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v38, v37, v5
	v_fma_f32 v41, -v49, v58, v55
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v40, v37, v6
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v38, v26, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v41, v41, v51, v58
	v_div_fixup_f32 v7, v39, v37, v7
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v39, v27, 16, 1
	v_cmp_o_f32_e64 s5, v25, v25
	v_cmp_o_f32_e64 s6, v26, v26
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v41, v37, v8
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v37, v25, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s2
	v_cndmask_b32_e64 v5, 0, v5, s2
	v_cndmask_b32_e64 v6, 0, v6, s2
	v_cndmask_b32_e64 v7, 0, v7, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v37, v25, v37, 0x7fff
	v_add3_u32 v25, v26, v38, 0x7fff
	v_add3_u32 v26, v27, v39, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_bfe_u32 v38, v30, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v29, 16, 1
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s7
	v_add3_u32 v28, v29, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_add3_u32 v29, v30, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v31, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v17, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v32, v32
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v30.h, s6
	v_bfe_u32 v30, v19, 16, 1
	v_bfe_u32 v31, v20, 16, 1
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v27, v18, v27, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s7
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v29.h, 0x7fff, v27.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v27, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v27, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v21, v9, v21, 0x7fff
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_cmp_o_f32_e64 s5, v4, v4
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v8, v8
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s9
	v_cndmask_b32_e64 v6, v25, v28, s0
	v_cndmask_b32_e64 v7, v17, v26, s0
	v_cndmask_b32_e64 v8, v26, v17, s0
	v_cndmask_b32_e64 v14, v29, v20, s0
	v_cndmask_b32_e64 v15, v19, v18, s0
	v_cndmask_b32_e64 v16, v18, v19, s0
	v_cndmask_b32_e64 v17, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b32_e64 v12, v11, v10, s0
	v_cndmask_b32_e64 v10, v10, v11, s0
	v_cndmask_b32_e64 v18, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v19, v4, v2, s0
	v_cndmask_b32_e64 v2, v2, v4, s0
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v5, v28, v25, s0
	v_cndmask_b32_e64 v13, v20, v29, s0
	v_permlanex16_b32 v3, v6, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v14, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v16, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v2, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s85, v34
	v_cmp_gt_i32_e64 s4, s85, v35
	v_cmp_gt_i32_e64 s2, s85, v33
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v1, v3, v5, v160
	v_perm_b32 v2, v3, v5, v161
	v_perm_b32 v5, v6, v13, v160
	v_perm_b32 v6, v6, v13, v161
	v_perm_b32 v9, v11, v17, v160
	v_perm_b32 v10, v11, v17, v161
	v_perm_b32 v11, v14, v12, v160
	v_perm_b32 v12, v14, v12, v161
	v_perm_b32 v13, v16, v18, v160
	v_perm_b32 v14, v16, v18, v161
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v36, v34, 1
	v_add_lshl_u32 v17, v36, v35, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s85, v0
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v3, v4, v7, v160
	v_perm_b32 v4, v4, v7, v161
	v_perm_b32 v7, v8, v15, v160
	v_perm_b32 v8, v8, v15, v161
	v_perm_b32 v15, v20, v19, v160
	v_perm_b32 v16, v20, v19, v161
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v19, v36, v33, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s1, vcc_lo
	s_and_b32 s0, s1, s4
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v0, v36, v0, 1
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s1, s2
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s1, s3
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s9, s83, 0xffff
	s_mov_b32 s8, s82
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[8:11], 0 offen
	buffer_store_b128 v[5:8], v18, s[8:11], 0 offen
	buffer_store_b128 v[9:12], v19, s[8:11], 0 offen
	buffer_store_b128 v[13:16], v0, s[8:11], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp63:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 239
		.amdhsa_next_free_sgpr 99
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 239
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 99
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16388
; TotalNumSgprs: 101
; NumVgprs: 239
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 101
; NumVGPRsForWavesPerEU: 239
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
	.short	687                             ; DW_AT_call_line
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
	.short	691                             ; DW_AT_call_line
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     101
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     239
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
