	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x60
	s_load_b64 s[44:45], s[0:1], 0x20
	v_dual_mov_b32 v40, 0x7632 :: v_dual_lshlrev_b32 v99, 4, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v4, 1, v0
	v_mov_b32_e32 v48, 0xff800000
	s_clause 0x2
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b32 s4, s[0:1], 0x68
	s_load_b64 s[36:37], s[0:1], 0x38
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v1, 16, v99
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s5, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s2, s3, 11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, s5, v4
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s6, s5, s2
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v37, 15, v0
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x800, v5
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v42, v0, 4, 1
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v43, 1, v0
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[83:84], null, s34, v4, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s41, s17, 0xffff
	s_mov_b32 s40, s16
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v44, 24, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[2:3], null, s34, s6, v[83:84]
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s0, s3, s0
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v45, v43, 30, v42
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, 0xfff0
	v_dual_mov_b32 v25, v24 :: v_dual_lshlrev_b32 v36, 3, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v43, 24, v43
	v_mov_b32_e32 v31, v24
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[32:35], v1, s[40:43], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_and_or_b32 v1, v4, 48, v37
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s41, s23, 0xffff
	s_mov_b32 s40, s22
	v_xor_b32_e32 v100, v99, v44
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s3, s1, 0x10007
	.loc	1 591 17                        ; attention.py:591:17
	v_or_b32_e32 v96, s6, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s5, v1
	v_dual_mov_b32 v39, 0x5410 :: v_dual_lshlrev_b32 v44, 2, v45
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s1, s1, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 590 31                        ; attention.py:590:31
	v_lshlrev_b32_e32 v2, 1, v96
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s1, s1, 0x80000
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v41, 3, v0
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v36, 56, v36
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_lshl_add_u32 v101, v37, 1, 0
	v_lshl_or_b32 v102, v37, 5, v43
	v_xor_b32_e32 v37, 8, v100
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v43, 4, v44
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v38, v1, s[40:43], 0 offen
	.loc	1 569 19                        ; attention.py:569:19
	s_sext_i32_i16 s1, s1
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v97, 16, v0
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s1, s1, 10
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[84:85], null, s35, v41, v[36:37]
	.loc	1 632 32                        ; attention.py:632:32
	s_and_b32 s48, s1, 0xfffff800
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s1, s35, v36
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s0, s0, 10
	v_dual_mov_b32 v16, v24 :: v_dual_add_nc_u32 v103, 0, v37
	s_and_b32 s0, s0, 0xffffc000
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[85:86], null, s35, 48, v[84:85]
	.loc	1 632 32                        ; attention.py:632:32
	s_add_i32 s48, s48, s0
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s0, 0, v97
	v_or_b32_e32 v105, s48, v42
	v_xor_b32_e32 v45, 8, v102
	v_xor_b32_e32 v46, 16, v102
	v_xor_b32_e32 v47, 24, v102
	v_cndmask_b32_e64 v39, 0x1054, v39, s0
	v_cndmask_b32_e64 v40, 0x3276, v40, s0
	v_dual_mov_b32 v17, v24 :: v_dual_add_nc_u32 v104, 0, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v18, v24 :: v_dual_add_nc_u32 v107, 0, v47
	v_lshl_or_b32 v39, v39, 8, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v40, v40, 8, v40
	v_mov_b32_e32 v23, v24
	v_mov_b32_e32 v9, v24
	v_dual_mov_b32 v19, v24 :: v_dual_add_nc_u32 v106, 0, v46
	v_mov_b32_e32 v21, v24
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v8, v24
	v_mov_b32_e32 v10, v24
	v_mov_b32_e32 v12, v24
	v_mov_b32_e32 v13, v24
	v_mov_b32_e32 v14, v24
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v0, v24
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	v_mov_b32_e32 v98, v24
	v_or_b32_e32 v108, 46, v105
	v_or_b32_e32 v109, 48, v105
	v_or_b32_e32 v110, 50, v105
	v_or_b32_e32 v111, 52, v105
	v_or_b32_e32 v112, 54, v105
	v_or_b32_e32 v113, 56, v105
	v_or_b32_e32 v114, 58, v105
	v_or_b32_e32 v115, 60, v105
	v_or_b32_e32 v117, 62, v105
	v_mov_b16_e32 v118.h, 0
	s_mov_b32 s24, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s39, s4, 0x3fb8aa3b
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s33, 0x76543210
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s38, s24
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s42
	s_mov_b32 s23, s43
	s_mov_b32 s40, s18
	s_mov_b32 s41, s19
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v36, v44, v32
	ds_bpermute_b32 v32, v43, v32
	ds_bpermute_b32 v37, v44, v33
	ds_bpermute_b32 v33, v43, v33
	ds_bpermute_b32 v41, v44, v34
	ds_bpermute_b32 v34, v43, v34
	ds_bpermute_b32 v42, v44, v35
	ds_bpermute_b32 v35, v43, v35
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v86, v32, v36, s0
	v_cndmask_b32_e64 v88, v36, v32, s0
	v_and_b32_e32 v32, 0x540054, v39
	v_and_b32_e32 v36, 0x760076, v40
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v87, v33, v37, s0
	v_cndmask_b32_e64 v89, v37, v33, s0
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v116, 16, v38
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v36, 4, v36
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v11, v24
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v90, v34, v41, s0
	v_cndmask_b32_e64 v92, v41, v34, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v91, v35, v42, s0
	v_cndmask_b32_e64 v93, v42, v35, s0
	v_and_b32_e32 v94, 0x5040504, v32
	v_and_b32_e32 v95, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_or_b32 s3, s38, s48
	v_or_b32_e32 v56, 2, v105
	v_mad_u64_u32 v[40:41], null, s3, s34, v[83:84]
	v_or_b32_e32 v57, 4, v105
	v_or_b32_e32 v58, 6, v105
	v_or_b32_e32 v59, 8, v105
	v_or_b32_e32 v60, 10, v105
	v_or_b32_e32 v61, 12, v105
	v_or_b32_e32 v62, 14, v105
	v_or_b32_e32 v63, 16, v105
	v_or_b32_e32 v64, 18, v105
	v_or_b32_e32 v65, 20, v105
	v_or_b32_e32 v66, 22, v105
	v_or_b32_e32 v67, 24, v105
	v_or_b32_e32 v68, 26, v105
	v_or_b32_e32 v69, 28, v105
	v_or_b32_e32 v70, 30, v105
	v_or_b32_e32 v71, 32, v105
	v_or_b32_e32 v72, 34, v105
	v_or_b32_e32 v73, 36, v105
	v_or_b32_e32 v74, 38, v105
	v_or_b32_e32 v75, 40, v105
	v_or_b32_e32 v76, 42, v105
	v_or_b32_e32 v79, 44, v105
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v80, s35, 4, v84
	v_lshl_add_u32 v81, s35, 5, v84
	.loc	1 693 30                        ; attention.py:693:30
	s_mul_i32 s4, s3, s35
	.loc	1 634 32                        ; attention.py:634:32
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_add_nc_u32 v55, 0, v99
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v78, s4, v84, 1
	v_add_lshl_u32 v77, s4, v85, 1
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v41, s38, v56, 1
	v_add_lshl_u32 v56, s38, v57, 1
	v_add_lshl_u32 v57, s38, v58, 1
	v_add_lshl_u32 v58, s38, v59, 1
	v_add_lshl_u32 v59, s38, v60, 1
	v_add_lshl_u32 v60, s38, v61, 1
	v_add_lshl_u32 v61, s38, v62, 1
	v_add_lshl_u32 v62, s38, v63, 1
	v_add_lshl_u32 v63, s38, v64, 1
	v_add_lshl_u32 v64, s38, v65, 1
	v_add_lshl_u32 v65, s38, v66, 1
	v_add_lshl_u32 v66, s38, v67, 1
	v_add_lshl_u32 v67, s38, v68, 1
	v_add_lshl_u32 v68, s38, v69, 1
	v_add_lshl_u32 v69, s38, v70, 1
	v_add_lshl_u32 v70, s38, v71, 1
	v_add_lshl_u32 v71, s38, v72, 1
	v_add_lshl_u32 v72, s38, v73, 1
	v_add_lshl_u32 v73, s38, v74, 1
	v_add_lshl_u32 v74, s38, v75, 1
	v_add_lshl_u32 v75, s38, v76, 1
	v_add_lshl_u32 v76, s38, v79, 1
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v79, s4, v80, 1
	v_add_lshl_u32 v80, s4, v81, 1
	v_cndmask_b32_e64 v119, 0x80000000, v78, s1
	v_cndmask_b32_e64 v131, 0x80000000, v77, s1
	.loc	1 634 32                        ; attention.py:634:32
	v_add_nc_u32_e32 v43, 0, v100
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v123, 0x80000000, v79, s1
	v_cndmask_b32_e64 v127, 0x80000000, v80, s1
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[77:80], v40, s[40:43], 0 offen
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v39, s31 :: v_dual_add_nc_u32 v42, 0, v102
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v53, s38, v115, 1
	v_add_lshl_u32 v54, s38, v117, 1
	.loc	1 639 33                        ; attention.py:639:33
	v_mov_b32_e32 v38, s30
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v44, s38, v105, 1
	v_add_lshl_u32 v45, s38, v108, 1
	v_add_lshl_u32 v46, s38, v109, 1
	v_add_lshl_u32 v49, s38, v110, 1
	v_add_lshl_u32 v50, s38, v111, 1
	v_add_lshl_u32 v47, s38, v112, 1
	v_add_lshl_u32 v52, s38, v113, 1
	v_add_lshl_u32 v51, s38, v114, 1
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v37, s29 :: v_dual_mov_b32 v36, s28
	v_dual_mov_b32 v35, s27 :: v_dual_mov_b32 v34, s26
	v_dual_mov_b32 v33, s25 :: v_dual_mov_b32 v32, s24
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v137.h, v118.h
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v48
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v81.h, v118.h
	v_mov_b16_e32 v82.h, v118.h
	v_mov_b16_e64 v138.h, v118.h
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v43, v[77:78]
	ds_store_b64 v103, v[79:80]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x3
	buffer_load_b128 v[119:122], v119, s[20:23], 0 offen
	buffer_load_b128 v[123:126], v123, s[20:23], 0 offen
	buffer_load_b128 v[127:130], v127, s[20:23], 0 offen
	buffer_load_b128 v[131:134], v131, s[20:23], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1f
	buffer_load_u16 v80, v63, s[44:47], 0 offen
	buffer_load_u16 v135, v64, s[44:47], 0 offen
	buffer_load_u16 v136, v65, s[44:47], 0 offen
	buffer_load_u16 v147, v66, s[44:47], 0 offen
	buffer_load_u16 v148, v67, s[44:47], 0 offen
	buffer_load_u16 v149, v68, s[44:47], 0 offen
	buffer_load_u16 v150, v69, s[44:47], 0 offen
	buffer_load_u16 v151, v70, s[44:47], 0 offen
	buffer_load_u16 v152, v71, s[44:47], 0 offen
	buffer_load_u16 v153, v72, s[44:47], 0 offen
	buffer_load_u16 v154, v73, s[44:47], 0 offen
	buffer_load_u16 v155, v74, s[44:47], 0 offen
	buffer_load_u16 v156, v75, s[44:47], 0 offen
	buffer_load_u16 v157, v76, s[44:47], 0 offen
	buffer_load_u16 v158, v45, s[44:47], 0 offen
	buffer_load_u16 v159, v46, s[44:47], 0 offen
	buffer_load_u16 v160, v49, s[44:47], 0 offen
	buffer_load_u16 v161, v50, s[44:47], 0 offen
	buffer_load_u16 v162, v44, s[44:47], 0 offen
	buffer_load_u16 v163, v41, s[44:47], 0 offen
	buffer_load_u16 v164, v56, s[44:47], 0 offen
	buffer_load_u16 v165, v57, s[44:47], 0 offen
	buffer_load_u16 v166, v58, s[44:47], 0 offen
	buffer_load_u16 v167, v59, s[44:47], 0 offen
	buffer_load_u16 v168, v60, s[44:47], 0 offen
	buffer_load_u16 v169, v61, s[44:47], 0 offen
	buffer_load_u16 v170, v62, s[44:47], 0 offen
	buffer_load_u16 v171, v47, s[44:47], 0 offen
	buffer_load_u16 v172, v52, s[44:47], 0 offen
	buffer_load_u16 v53, v53, s[44:47], 0 offen
	buffer_load_u16 v54, v54, s[44:47], 0 offen
	buffer_load_u16 v173, v51, s[44:47], 0 offen
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[49:52], v42 offset1:1
	ds_load_2addr_stride64_b64 v[139:142], v42 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[143:146], v104 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[49:50], v[86:87], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[51:52], v[86:87], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[139:140], v[86:87], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[72:79], v[141:142], v[86:87], v[32:39] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[32:35], v104 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[36:39], v106 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[143:144], v[90:91], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[145:146], v[90:91], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[32:33], v[90:91], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[72:79], v[34:35], v[90:91], v[72:79] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[32:35], v106 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[36:37], v[88:89], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[38:39], v[88:89], v[56:63] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[36:39], v107 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[32:33], v[88:89], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[72:79], v[34:35], v[88:89], v[72:79] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[32:35], v107 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[36:37], v[92:93], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[38:39], v[92:93], v[56:63] neg_lo:[1,1,0]
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(35)
	ds_store_b128 v55, v[119:122]
	s_waitcnt vmcnt(34)
	ds_store_b128 v55, v[123:126] offset:2048
	s_waitcnt vmcnt(33)
	ds_store_b128 v55, v[127:130] offset:4096
	s_waitcnt vmcnt(32)
	ds_store_b128 v55, v[131:134] offset:6144
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[64:71], v[32:33], v[92:93], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[72:79], v[34:35], v[92:93], v[72:79] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v32, v40
	v_cvt_f32_i32_e32 v33, v41
	v_cvt_f32_i32_e32 v34, v42
	v_cvt_f32_i32_e32 v35, v43
	v_cvt_f32_i32_e32 v37, v45
	v_cvt_f32_i32_e32 v39, v47
	v_cvt_f32_i32_e32 v40, v56
	v_cvt_f32_i32_e32 v41, v57
	v_cvt_f32_i32_e32 v42, v58
	v_cvt_f32_i32_e32 v43, v59
	v_cvt_f32_i32_e32 v47, v63
	v_cvt_f32_i32_e32 v56, v68
	v_cvt_f32_i32_e32 v36, v44
	v_cvt_f32_i32_e32 v38, v46
	v_cvt_f32_i32_e32 v44, v60
	v_cvt_f32_i32_e32 v45, v61
	v_cvt_f32_i32_e32 v46, v62
	v_cvt_f32_i32_e32 v49, v64
	v_cvt_f32_i32_e32 v50, v65
	v_cvt_f32_i32_e32 v51, v66
	v_cvt_f32_i32_e32 v52, v67
	v_cvt_f32_i32_e32 v57, v69
	v_cvt_f32_i32_e32 v59, v71
	v_cvt_f32_i32_e32 v60, v72
	v_cvt_f32_i32_e32 v61, v73
	v_cvt_f32_i32_e32 v63, v75
	v_cvt_f32_i32_e32 v64, v76
	v_cvt_f32_i32_e32 v67, v79
	s_waitcnt vmcnt(31)
	v_dual_mul_f32 v41, v116, v41 :: v_dual_lshlrev_b32 v68, 16, v80
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v42, v116, v42 :: v_dual_lshlrev_b32 v69, 16, v135
	s_waitcnt vmcnt(29)
	v_dual_mul_f32 v43, v116, v43 :: v_dual_lshlrev_b32 v80, 16, v136
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v47, v116, v47 :: v_dual_lshlrev_b32 v122, 16, v150
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v72, v116, v56 :: v_dual_lshlrev_b32 v127, 16, v155
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v79, v116, v33 :: v_dual_lshlrev_b32 v134, 16, v162
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v142, v116, v37 :: v_dual_lshlrev_b32 v135, 16, v163
	v_cvt_f32_i32_e32 v58, v70
	v_cvt_f32_i32_e32 v62, v74
	v_cvt_f32_i32_e32 v65, v77
	v_cvt_f32_i32_e32 v66, v78
	v_dual_mul_f32 v44, v116, v44 :: v_dual_lshlrev_b32 v119, 16, v147
	v_dual_mul_f32 v45, v116, v45 :: v_dual_lshlrev_b32 v120, 16, v148
	v_dual_mul_f32 v46, v116, v46 :: v_dual_lshlrev_b32 v121, 16, v149
	v_dual_mul_f32 v49, v116, v49 :: v_dual_lshlrev_b32 v124, 16, v152
	v_dual_mul_f32 v50, v116, v50 :: v_dual_lshlrev_b32 v123, 16, v151
	v_dual_mul_f32 v70, v116, v51 :: v_dual_lshlrev_b32 v125, 16, v153
	v_dual_mul_f32 v71, v116, v52 :: v_dual_lshlrev_b32 v126, 16, v154
	v_dual_mul_f32 v73, v116, v57 :: v_dual_lshlrev_b32 v128, 16, v156
	v_dual_mul_f32 v75, v116, v59 :: v_dual_lshlrev_b32 v130, 16, v158
	v_dual_mul_f32 v61, v116, v61 :: v_dual_lshlrev_b32 v132, 16, v160
	v_dual_mul_f32 v78, v116, v32 :: v_dual_lshlrev_b32 v133, 16, v161
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v140, v116, v35 :: v_dual_lshlrev_b32 v147, 16, v165
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v141, v116, v36 :: v_dual_lshlrev_b32 v148, 16, v166
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v143, v116, v38 :: v_dual_lshlrev_b32 v154, 16, v172
	v_dual_mul_f32 v144, v116, v39 :: v_dual_lshlrev_b32 v151, 16, v169
	v_dual_mul_f32 v40, v116, v40 :: v_dual_lshlrev_b32 v149, 16, v167
	v_dual_mul_f32 v145, v116, v63 :: v_dual_lshlrev_b32 v152, 16, v170
	v_dual_mul_f32 v146, v116, v64 :: v_dual_lshlrev_b32 v153, 16, v171
	v_dual_mul_f32 v43, v43, v80 :: v_dual_mul_f32 v46, v46, v121
	v_dual_mul_f32 v47, v47, v122 :: v_dual_mul_f32 v72, v72, v127
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v79, v79, v135 :: v_dual_mul_f32 v40, v40, v152
	v_dual_mul_f32 v74, v116, v58 :: v_dual_lshlrev_b32 v129, 16, v157
	v_dual_mul_f32 v76, v116, v60 :: v_dual_lshlrev_b32 v131, 16, v159
	v_dual_mul_f32 v77, v116, v62 :: v_dual_lshlrev_b32 v136, 16, v164
	v_dual_mul_f32 v139, v116, v34 :: v_dual_lshlrev_b32 v150, 16, v168
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v174, v116, v66 :: v_dual_lshlrev_b32 v155, 16, v53
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v67, v116, v67 :: v_dual_lshlrev_b32 v156, 16, v54
	v_dual_mul_f32 v175, v116, v65 :: v_dual_mul_f32 v50, v50, v124
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v44, v44, v119 :: v_dual_lshlrev_b32 v157, 16, v173
	v_dual_mul_f32 v41, v41, v68 :: v_dual_mul_f32 v42, v42, v69
	v_dual_mul_f32 v45, v45, v120 :: v_dual_mul_f32 v70, v70, v125
	v_dual_mul_f32 v49, v49, v123 :: v_dual_mul_f32 v74, v74, v129
	v_dual_mul_f32 v73, v73, v128 :: v_dual_mul_f32 v78, v78, v134
	v_dual_mul_f32 v75, v75, v130 :: v_dual_mul_f32 v120, v141, v148
	v_dual_mul_f32 v61, v61, v132 :: v_dual_mul_f32 v122, v143, v150
	v_dual_mul_f32 v119, v140, v147 :: v_dual_mul_f32 v124, v145, v153
	v_dual_mul_f32 v121, v142, v149 :: v_dual_mul_f32 v42, s39, v42
	v_dual_mul_f32 v123, v144, v151 :: v_dual_mul_f32 v44, s39, v44
	v_dual_mul_f32 v125, v146, v154 :: v_dual_mul_f32 v72, s39, v72
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v43, s39, v43 :: v_dual_mul_f32 v70, s39, v70
	v_mul_f32_e32 v79, s39, v79
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v71, v71, v126 :: v_dual_mul_f32 v76, v76, v131
	v_dual_mul_f32 v77, v77, v133 :: v_dual_mul_f32 v80, v139, v136
	v_dual_mul_f32 v126, v174, v155 :: v_dual_mul_f32 v67, v67, v156
	v_dual_mul_f32 v127, v175, v157 :: v_dual_mul_f32 v46, s39, v46
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v41, s39, v41 :: v_dual_mul_f32 v50, s39, v50
	v_dual_mul_f32 v45, s39, v45 :: v_dual_mul_f32 v74, s39, v74
	v_dual_mul_f32 v47, s39, v47 :: v_dual_mul_f32 v76, s39, v76
	v_dual_mul_f32 v49, s39, v49 :: v_dual_mul_f32 v78, s39, v78
	v_dual_mul_f32 v73, s39, v73 :: v_dual_mul_f32 v120, s39, v120
	v_dual_mul_f32 v75, s39, v75 :: v_dual_mul_f32 v132, s39, v121
	v_dual_mul_f32 v61, s39, v61 :: v_dual_mul_f32 v134, s39, v123
	v_dual_mul_f32 v135, s39, v124 :: v_dual_mul_f32 v136, s39, v125
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v149, 0xff800000, v43, s2
	v_cndmask_b32_e64 v43, 0xff800000, v79, s2
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v119, s39, v119
	v_dual_mul_f32 v71, s39, v71 :: v_dual_mul_f32 v80, s39, v80
	v_dual_mul_f32 v77, s39, v77 :: v_dual_mul_f32 v40, s39, v40
	v_dual_mul_f32 v133, s39, v122 :: v_dual_mul_f32 v140, s39, v127
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v147, 0xff800000, v41, s2
	v_cndmask_b32_e64 v148, 0xff800000, v42, s2
	v_cndmask_b32_e64 v150, 0xff800000, v44, s2
	v_cndmask_b32_e64 v151, 0xff800000, v45, s2
	v_cndmask_b32_e64 v152, 0xff800000, v46, s2
	v_cndmask_b32_e64 v153, 0xff800000, v47, s2
	v_cndmask_b32_e64 v121, 0xff800000, v49, s2
	v_cndmask_b32_e64 v122, 0xff800000, v50, s2
	v_cndmask_b32_e64 v128, 0xff800000, v75, s2
	v_cndmask_b32_e64 v41, 0xff800000, v78, s2
	v_cndmask_b32_e64 v44, 0xff800000, v119, s2
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v67, s39, v67
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v45, 0xff800000, v120, s2
	v_cndmask_b32_e64 v46, 0xff800000, v132, s2
	v_cndmask_b32_e64 v75, 0xff800000, v134, s2
	v_cndmask_b32_e64 v134, 0xff800000, v135, s2
	v_cndmask_b32_e64 v135, 0xff800000, v136, s2
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v139, s39, v126
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v123, 0xff800000, v70, s2
	v_cndmask_b32_e64 v124, 0xff800000, v71, s2
	v_cndmask_b32_e64 v125, 0xff800000, v72, s2
	v_cndmask_b32_e64 v126, 0xff800000, v73, s2
	v_cndmask_b32_e64 v127, 0xff800000, v74, s2
	v_cndmask_b32_e64 v129, 0xff800000, v76, s2
	v_cndmask_b32_e64 v130, 0xff800000, v61, s2
	v_cndmask_b32_e64 v131, 0xff800000, v77, s2
	v_cndmask_b32_e64 v47, 0xff800000, v80, s2
	v_cndmask_b32_e64 v49, 0xff800000, v133, s2
	v_cndmask_b32_e64 v154, 0xff800000, v40, s2
	v_cndmask_b32_e64 v133, 0xff800000, v67, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v40, v147, v148, v149
	v_max3_f32 v42, v150, v151, v152
	v_max3_f32 v74, v153, v121, v122
	v_max_f32_e32 v79, v41, v43
	v_max3_f32 v80, v44, v45, v46
	v_max_f32_e32 v120, v134, v135
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v132, 0xff800000, v139, s2
	v_cndmask_b32_e64 v136, 0xff800000, v140, s2
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v76, v123, v124, v125
	v_max3_f32 v77, v126, v127, v128
	v_max3_f32 v78, v129, v130, v131
	v_max3_f32 v119, v49, v75, v154
	v_max_f32_e32 v139, v132, v133
	v_max3_f32 v40, v40, v42, v74
	v_max3_f32 v79, v79, v47, v80
	v_max3_f32 v76, v76, v77, v78
.Ltmp4:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v77, v120, v136, v139
.Ltmp6:
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v40, v79, v119, v40
.Ltmp8:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v69, v101 offset:608
	ds_load_u16_d16 v68, v101 offset:352
	ds_load_u16_d16 v53, v101 offset:512
	ds_load_u16_d16 v60, v101 offset:288
	ds_load_u16_d16 v66, v101 offset:1824
	ds_load_u16_d16 v54, v101 offset:768
	ds_load_u16_d16 v35, v101 offset:832
	ds_load_u16_d16 v55, v101 offset:1024
	ds_load_u16_d16 v62, v101 offset:800
	ds_load_u16_d16 v36, v101 offset:1088
	ds_load_u16_d16 v56, v101 offset:1280
	ds_load_u16_d16 v63, v101 offset:1056
	ds_load_u16_d16 v37, v101 offset:1344
	ds_load_u16_d16 v57, v101 offset:1536
	ds_load_u16_d16 v64, v101 offset:1312
	ds_load_u16_d16 v38, v101 offset:1600
	ds_load_u16_d16 v58, v101 offset:1792
	ds_load_u16_d16 v65, v101 offset:1568
	ds_load_u16_d16 v39, v101 offset:1856
	ds_load_u16_d16 v52, v101 offset:256
	ds_load_u16_d16 v51, v101
	ds_load_u16_d16 v59, v101 offset:32
	ds_load_u16_d16 v34, v101 offset:576
	ds_load_u16_d16 v32, v101 offset:64
	ds_load_u16_d16 v33, v101 offset:320
	ds_load_u16_d16 v42, v101 offset:2112
	ds_load_u16_d16 v74, v101 offset:1888
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v68, v101 offset:480
	ds_load_u16_d16 v67, v101 offset:96
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v52, v101 offset:384
	ds_load_u16_d16_hi v53, v101 offset:640
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v34, v101 offset:704
	ds_load_u16_d16 v61, v101 offset:544
	ds_load_u16_d16_hi v51, v101 offset:128
	ds_load_u16_d16_hi v59, v101 offset:160
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v32, v101 offset:192
	ds_load_u16_d16_hi v54, v101 offset:896
	ds_load_u16_d16_hi v35, v101 offset:960
	ds_load_u16_d16 v70, v101 offset:864
	ds_load_u16_d16_hi v55, v101 offset:1152
	ds_load_u16_d16_hi v36, v101 offset:1216
	ds_load_u16_d16 v71, v101 offset:1120
	ds_load_u16_d16_hi v56, v101 offset:1408
	ds_load_u16_d16_hi v37, v101 offset:1472
	ds_load_u16_d16 v72, v101 offset:1376
	ds_load_u16_d16_hi v38, v101 offset:1728
	ds_load_u16_d16_hi v57, v101 offset:1664
	ds_load_u16_d16 v73, v101 offset:1632
	ds_load_u16_d16_hi v58, v101 offset:1920
	ds_load_u16_d16_hi v39, v101 offset:1984
	ds_load_u16_d16 v50, v101 offset:2048
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v40, v40, v76, v77
.Ltmp10:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v163.h, v118.h
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v42, v101 offset:2240
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v164.h, v118.h
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v76, v40, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v120, v48, v40, v76
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v40, v43, v120
	v_sub_f32_e32 v44, v44, v120
	v_sub_f32_e32 v43, v47, v120
	v_sub_f32_e32 v46, v46, v120
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v67, v101 offset:224
	ds_load_u16_d16_hi v60, v101 offset:416
	ds_load_u16_d16_hi v33, v101 offset:448
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v61, v101 offset:672
	ds_load_u16_d16_hi v69, v101 offset:736
	ds_load_u16_d16_hi v62, v101 offset:928
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v70, v101 offset:992
	ds_load_u16_d16_hi v63, v101 offset:1184
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v71, v101 offset:1248
	ds_load_u16_d16_hi v64, v101 offset:1440
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v72, v101 offset:1504
	ds_load_u16_d16_hi v65, v101 offset:1696
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v73, v101 offset:1760
	ds_load_u16_d16_hi v66, v101 offset:1952
	ds_load_u16_d16_hi v74, v101 offset:2016
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v44, v44
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v132, v132, v120
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v132, v132
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v141, 0, v40, s2
	v_cndmask_b32_e64 v144, 0, v44, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v146, 0, v46, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v118.l, v141.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v45, v45, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s5, v144, v144
	v_cmp_o_f32_e64 s7, v146, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v40, 1, v118
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v118.l, v144.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v40, v141, v40, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v145, 0, v45, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v137.l, v145.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v47, v49, v120
	v_sub_f32_e32 v49, v75, v120
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v75, v48, v120
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s8, v145, v145
	v_and_b32_e32 v44, 1, v137
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v75, v75
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v139, 0, v47, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v119, 0, v75, s3
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v41, v41, v120
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s3, v141, v141
	v_mov_b16_e64 v138.l, v139.h
	v_cmp_o_f32_e64 s10, v139, v139
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v28, v28, v119
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v16, v16, v119
	v_mul_f32_e32 v30, v30, v119
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v20, v20, v119 :: v_dual_and_b32 v45, 1, v138
	v_mul_f32_e32 v18, v18, v119
	v_mul_f32_e32 v22, v22, v119
	v_mul_f32_e32 v8, v8, v119
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v142, 0, v41, s2
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v9, v9, v119
	v_mul_f32_e32 v10, v10, v119
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v143, 0, v43, s2
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v11, v11, v119
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v81.l, v142.h
	v_cmp_o_f32_e64 s4, v142, v142
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v12, v12, v119
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v82.l, v143.h
	v_cmp_o_f32_e64 s6, v143, v143
	v_and_b32_e32 v41, 1, v81
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v13, v13, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v14, v14, v119 :: v_dual_and_b32 v43, 1, v82
	v_mul_f32_e32 v15, v15, v119
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v41, v142, v41, 0x7fff
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v119
	v_mul_f32_e32 v17, v17, v119
	v_mul_f32_e32 v19, v19, v119
	v_mul_f32_e32 v21, v21, v119
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s4
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v23, v23, v119
	v_mul_f32_e32 v24, v24, v119
	v_mul_f32_e32 v26, v26, v119
	v_mul_f32_e32 v27, v27, v119
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v41, v40, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v29, v29, v119
	v_mul_f32_e32 v31, v31, v119
	v_mul_f32_e32 v0, v0, v119
	v_mul_f32_e32 v1, v1, v119
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v155, v41, v40, v94
	v_perm_b32 v156, v41, v40, v95
	v_and_b32_e32 v40, 1, v118
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v118.l, v146.h
	v_add3_u32 v41, v143, v43, 0x7fff
	v_add3_u32 v43, v145, v44, 0x7fff
	v_add3_u32 v44, v139, v45, 0x7fff
	v_add3_u32 v40, v144, v40, 0x7fff
	v_and_b32_e32 v45, 1, v118
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s6
	v_cndmask_b16 v41.l, 0x7fff, v43.h, s8
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s10
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v140, 0, v49, s2
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s5
	v_add3_u32 v45, v146, v45, 0x7fff
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v3, v3, v119
	v_mul_f32_e32 v4, v4, v119
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v118.l, v140.h
	v_cmp_o_f32_e64 s9, v140, v140
	v_cndmask_b16 v41.h, 0x7fff, v45.h, s7
	v_permlanex16_b32 v45, v40, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v5, v5, v119 :: v_dual_and_b32 v44, 1, v118
	v_mul_f32_e32 v6, v6, v119
	v_mul_f32_e32 v7, v7, v119
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v157, v45, v40, v94
	v_perm_b32 v158, v45, v40, v95
	v_add3_u32 v44, v140, v44, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v75, v101 offset:2144
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v43.h, 0x7fff, v44.h, s9
	v_permlanex16_b32 v44, v41, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v40, v43, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v159, v44, v41, v94
	v_perm_b32 v160, v44, v41, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v161, v40, v43, v94
	v_perm_b32 v162, v40, v43, v95
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(13)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[32:39], v[155:162], v[8:15]
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v33, v154, v120
	v_sub_f32_e32 v34, v147, v120
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[59:66], v[155:162], v[16:23]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_mov_b16_e32 v66.h, v118.h
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v2, v2, v119
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v37, v150, v120
	v_sub_f32_e32 v36, v149, v120
	.loc	1 700 23 is_stmt 1              ; attention.py:700:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[67:74], v[155:162], v[0:7]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v151, v120
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[51:58], v[155:162], v[24:31]
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v43, v101 offset:2368
	ds_load_u16_d16 v65, v101 offset:3872
	ds_load_u16_d16 v53, v101 offset:2816
	ds_load_u16_d16 v60, v101 offset:2592
	ds_load_u16_d16 v45, v101 offset:2880
	ds_load_u16_d16 v54, v101 offset:3072
	ds_load_u16_d16 v61, v101 offset:2848
	ds_load_u16_d16 v46, v101 offset:3136
	ds_load_u16_d16 v56, v101 offset:3584
	ds_load_u16_d16 v63, v101 offset:3360
	ds_load_u16_d16 v48, v101 offset:3648
	ds_load_u16_d16 v57, v101 offset:3840
	ds_load_u16_d16 v49, v101 offset:3904
	ds_load_u16_d16 v55, v101 offset:3328
	ds_load_u16_d16 v62, v101 offset:3104
	ds_load_u16_d16 v47, v101 offset:3392
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v148, v120
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v155, 0, v33, s2
	v_cndmask_b32_e64 v156, 0, v34, s2
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v152, v120
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v66.l, v155.h
	v_mov_b16_e64 v118.l, v156.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v159, 0, v37, s2
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v67, v153, v120
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v33, 1, v66
	v_and_b32_e32 v37, 1, v118
	v_cmp_o_f32_e64 s3, v156, v156
	v_cmp_o_f32_e64 s4, v155, v155
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v33, v155, v33, 0x7fff
	v_add3_u32 v37, v156, v37, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v157, 0, v35, s2
	v_cndmask_b32_e64 v158, 0, v36, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s4
	v_cndmask_b16 v33.h, 0x7fff, v37.h, s3
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v32, v101 offset:4160
	ds_load_u16_d16 v52, v101 offset:2560
	ds_load_u16_d16 v59, v101 offset:2336
	ds_load_u16_d16 v44, v101 offset:2624
	ds_load_u16_d16 v76, v101 offset:2400
	ds_load_u16_d16 v64, v101 offset:3616
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v48, v101 offset:3776
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v57, v101 offset:3968
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v49, v101 offset:4032
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v160, 0, v38, s2
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v137.l, v157.h
	v_mov_b16_e64 v118.l, v158.h
	v_permlanex16_b32 v37, v33, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v161, 0, v39, s2
	v_cndmask_b32_e64 v162, 0, v67, s2
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v34, 1, v137
	v_cmp_o_f32_e64 s5, v158, v158
	v_perm_b32 v66, v37, v33, v94
	v_perm_b32 v67, v37, v33, v95
	v_and_b32_e32 v33, 1, v118
	v_mov_b16_e64 v118.l, v160.h
	v_cmp_o_f32_e64 s6, v157, v157
	v_mov_b16_e64 v138.l, v159.h
	v_mov_b16_e64 v163.l, v161.h
	v_add3_u32 v34, v157, v34, 0x7fff
	v_and_b32_e32 v37, 1, v118
	v_add3_u32 v33, v158, v33, 0x7fff
	v_mov_b16_e64 v118.l, v162.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v58, v101 offset:2080
	ds_load_u16_d16 v51, v101 offset:2304
	ds_load_u16_d16_hi v50, v101 offset:2176
	ds_load_u16_d16 v40, v101 offset:4096
	ds_load_u16_d16 v82, v101 offset:3936
	ds_load_u16_d16_hi v43, v101 offset:2496
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v52, v101 offset:2688
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v44, v101 offset:2752
	ds_load_u16_d16 v77, v101 offset:2656
	ds_load_u16_d16_hi v53, v101 offset:2944
	ds_load_u16_d16_hi v45, v101 offset:3008
	ds_load_u16_d16 v78, v101 offset:2912
	ds_load_u16_d16_hi v54, v101 offset:3200
	ds_load_u16_d16_hi v46, v101 offset:3264
	ds_load_u16_d16 v79, v101 offset:3168
	ds_load_u16_d16_hi v55, v101 offset:3456
	ds_load_u16_d16_hi v47, v101 offset:3520
	ds_load_u16_d16 v80, v101 offset:3424
	ds_load_u16_d16_hi v56, v101 offset:3712
	ds_load_u16_d16 v81, v101 offset:3680
	ds_load_u16_d16_hi v32, v101 offset:4288
	ds_load_u16_d16 v41, v101 offset:4352
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v35, 1, v138
	v_dual_mov_b32 v137, v98 :: v_dual_and_b32 v36, 1, v163
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s6
	v_cndmask_b16 v34.h, 0x7fff, v33.h, s5
	v_and_b32_e32 v33, 1, v118
	v_cmp_o_f32_e64 s7, v160, v160
	v_cmp_o_f32_e64 s8, v159, v159
	v_cmp_o_f32_e64 s9, v162, v162
	v_cmp_o_f32_e64 s10, v161, v161
	v_add3_u32 v35, v159, v35, 0x7fff
	v_add3_u32 v36, v161, v36, 0x7fff
	v_add3_u32 v37, v160, v37, 0x7fff
	v_add3_u32 v33, v162, v33, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v51, v101 offset:2432
	ds_load_u16_d16_hi v58, v101 offset:2208
	ds_load_u16_d16_hi v75, v101 offset:2272
	ds_load_u16_d16_hi v59, v101 offset:2464
	ds_load_u16_d16_hi v76, v101 offset:2528
	ds_load_u16_d16_hi v60, v101 offset:2720
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v77, v101 offset:2784
	ds_load_u16_d16_hi v61, v101 offset:2976
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v78, v101 offset:3040
	ds_load_u16_d16_hi v62, v101 offset:3232
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v79, v101 offset:3296
	ds_load_u16_d16_hi v63, v101 offset:3488
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v80, v101 offset:3552
	ds_load_u16_d16_hi v64, v101 offset:3744
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v81, v101 offset:3808
	ds_load_u16_d16_hi v65, v101 offset:4000
	ds_load_u16_d16_hi v82, v101 offset:4064
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s8
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s10
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s7
	v_permlanex16_b32 v37, v34, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v36.h, 0x7fff, v33.h, s9
	v_mov_b16_e32 v98.h, v118.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v33, v35, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v68, v37, v34, v94
	v_perm_b32 v69, v37, v34, v95
	v_permlanex16_b32 v34, v36, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v70, v33, v35, v94
	v_perm_b32 v71, v33, v35, v95
	v_perm_b32 v72, v34, v36, v94
	v_perm_b32 v73, v34, v36, v95
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[50:57], v[66:73], v[24:31]
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v56, v121, v120
	v_sub_f32_e32 v121, v124, v120
	v_sub_f32_e32 v124, v127, v120
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[75:82], v[66:73], v[0:7]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v82, v123, v120
	v_sub_f32_e32 v123, v126, v120
	v_sub_f32_e32 v126, v129, v120
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v124, v124
	.loc	1 700 23 is_stmt 1              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[42:49], v[66:73], v[8:15]
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v48, v142, v141
	v_add_f32_e32 v54, v143, v144
.Ltmp14:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v57, v122, v120
	v_sub_f32_e32 v122, v125, v120
	v_sub_f32_e32 v125, v128, v120
	v_sub_f32_e32 v128, v131, v120
	v_sub_f32_e32 v131, v136, v120
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v126, v126
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v136, 0, v124, s2
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v121, v121
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v98.l, v136.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v122, v122
	v_exp_f32_e32 v123, v123
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v49.h, v118.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v142, 0, v126, s2
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v98, 1, v98
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v125, v125
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v128, 0, v128, s2
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v126, v161, v162
.Ltmp16:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v138.l, v142.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v129, v134, v120
	v_sub_f32_e32 v127, v130, v120
	v_sub_f32_e32 v130, v135, v120
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v134, 0, v57, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v138, 1, v138
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v129, v129
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v141, 0, v125, s2
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v125, v159, v160
.Ltmp18:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v57, 0, v82, s2
	v_cndmask_b32_e64 v82, 0, v121, s2
	v_cndmask_b32_e64 v121, 0, v122, s2
	v_cndmask_b32_e64 v135, 0, v123, s2
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v122, v139, v140
	v_add_f32_e32 v124, v157, v158
	v_add_f32_e32 v157, v125, v126
	v_add_f32_e32 v123, v155, v156
	v_add_f32_e32 v55, v145, v146
.Ltmp20:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v49.l, v128.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v144, 0, v129, s2
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v140, v48, v54
	v_add_f32_e32 v156, v123, v124
	v_add_f32_e32 v155, v55, v122
.Ltmp22:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v133, v133, v120
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v49, 1, v49
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v131, v131
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v48, v128, v144
.Ltmp24:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s12, v128, v128
	v_add3_u32 v49, v128, v49, 0x7fff
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v128, v140, v155
.Ltmp26:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v133, v133
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v52.h, v118.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v56, 0, v56, s2
	v_cndmask_b32_e64 v143, 0, v127, s2
	v_cndmask_b32_e64 v129, 0, v130, s2
	v_cndmask_b32_e64 v145, 0, v131, s2
	v_cndmask_b32_e64 v130, 0, v132, s2
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v52.l, v57.h
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v127, v56, v134 :: v_dual_add_f32 v132, v121, v135
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp28:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v146, 0, v133, s2
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v133, v136, v141
	v_add_f32_e32 v54, v129, v145
.Ltmp30:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v164.l, v130.h
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v131, v57, v82
	v_add_f32_e32 v55, v130, v146
.Ltmp32:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v118.l, v134.h
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v139, v142, v143 :: v_dual_and_b32 v52, 1, v52
	v_add_f32_e32 v132, v132, v133
	v_dual_add_f32 v131, v127, v131 :: v_dual_and_b32 v162, 1, v164
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v133, v139, v48
	v_add_f32_e32 v139, v54, v55
.Ltmp34:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s10, v136, v136
	v_add3_u32 v98, v136, v98, 0x7fff
	v_add3_u32 v136, v142, v138, 0x7fff
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v138, v156, v157 :: v_dual_add_f32 v131, v131, v132
	v_add_f32_e32 v132, v133, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v139.l, 0x7fff, v98.h, s10
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[58:65], v[66:73], v[16:23]
.Ltmp37:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v98, v128, v138
.Ltmp38:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v58, v101 offset:6208
	ds_load_u16_d16 v154, v101 offset:5984
	ds_load_u16_d16 v66, v101 offset:6144
	ds_load_u16_d16 v68, v101 offset:6656
	ds_load_u16_d16 v60, v101 offset:6720
	ds_load_u16_d16 v59, v101 offset:6464
	ds_load_u16_d16 v67, v101 offset:6400
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v128, v131, v132
.Ltmp40:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v163.l, v129.h
	v_mov_b16_e32 v51.h, v118.h
	v_mov_b16_e32 v51.l, v56.h
	v_cmp_o_f32_e64 s16, v129, v129
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v98, v98, v128 :: v_dual_and_b32 v161, 1, v163
.Ltmp42:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v33, v101 offset:4416
	ds_load_u16_d16 v42, v101 offset:4608
	ds_load_u16_d16 v34, v101 offset:4672
	ds_load_u16_d16 v148, v101 offset:4448
	ds_load_u16_d16 v43, v101 offset:4864
	ds_load_u16_d16 v35, v101 offset:4928
	ds_load_u16_d16 v149, v101 offset:4704
	ds_load_u16_d16 v44, v101 offset:5120
	ds_load_u16_d16 v36, v101 offset:5184
	ds_load_u16_d16 v150, v101 offset:4960
	ds_load_u16_d16 v45, v101 offset:5376
	ds_load_u16_d16 v37, v101 offset:5440
	ds_load_u16_d16 v151, v101 offset:5216
	ds_load_u16_d16 v46, v101 offset:5632
	ds_load_u16_d16 v38, v101 offset:5696
	ds_load_u16_d16 v152, v101 offset:5472
	ds_load_u16_d16 v47, v101 offset:5888
	ds_load_u16_d16 v39, v101 offset:5952
	ds_load_u16_d16 v153, v101 offset:5728
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v53.h, v118.h
	v_cmp_o_f32_e64 s3, v56, v56
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v128, v98, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp44:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v129, v129, v161, 0x7fff
	v_mov_b16_e32 v53.l, v121.h
	v_cmp_o_f32_e64 s6, v134, v134
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v98, v98, v128
.Ltmp46:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v128, 1, v118
	v_mov_b16_e32 v118.l, v82.h
	v_add3_u32 v158, v56, v51, 0x7fff
	v_cmp_o_f32_e64 s11, v142, v142
	v_cmp_o_f32_e64 s18, v130, v130
	v_add3_u32 v130, v130, v162, 0x7fff
	v_cndmask_b16 v142.l, 0x7fff, v129.h, s16
	v_and_b32_e32 v129, 1, v118
	v_mov_b16_e64 v118.l, v135.h
	v_add3_u32 v128, v134, v128, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v75, v101 offset:6496
	ds_load_u16_d16 v69, v101 offset:6912
	ds_load_u16_d16 v61, v101 offset:6976
	ds_load_u16_d16 v76, v101 offset:6752
	ds_load_u16_d16 v70, v101 offset:7168
	ds_load_u16_d16 v62, v101 offset:7232
	ds_load_u16_d16 v77, v101 offset:7008
	ds_load_u16_d16 v71, v101 offset:7424
	ds_load_u16_d16 v63, v101 offset:7488
	ds_load_u16_d16 v78, v101 offset:7264
	ds_load_u16_d16 v72, v101 offset:7680
	ds_load_u16_d16 v64, v101 offset:7744
	ds_load_u16_d16 v79, v101 offset:7520
	ds_load_u16_d16 v73, v101 offset:7936
	ds_load_u16_d16 v65, v101 offset:8000
	ds_load_u16_d16 v80, v101 offset:7776
	ds_load_u16_d16 v81, v101 offset:8032
	ds_load_u16_d16 v74, v101 offset:6240
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v58, v101 offset:6336
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v59, v101 offset:6592
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v67, v101 offset:6528
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v53, 1, v53
	v_cmp_o_f32_e64 s7, v82, v82
	v_cndmask_b16 v49.l, 0x7fff, v158.h, s3
	v_cndmask_b16 v140.l, 0x7fff, v49.h, s12
	v_cndmask_b16 v155.l, 0x7fff, v130.h, s18
	v_and_b32_e32 v130, 1, v118
	v_mov_b16_e64 v118.l, v141.h
	v_cndmask_b16 v49.h, 0x7fff, v128.h, s6
	v_add3_u32 v82, v82, v129, 0x7fff
	v_cmp_o_f32_e64 s4, v57, v57
	v_cmp_o_f32_e64 s5, v121, v121
	v_add3_u32 v159, v57, v52, 0x7fff
	v_add3_u32 v160, v121, v53, 0x7fff
	v_cmp_o_f32_e64 s8, v135, v135
	v_and_b32_e32 v128, 1, v118
	v_permlanex16_b32 v129, v49, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v133.h, 0x7fff, v82.h, s7
	v_add3_u32 v82, v135, v130, 0x7fff
	v_mov_b16_e64 v118.l, v143.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v50, v101 offset:4128
	ds_load_u16_d16 v147, v101 offset:4192
	v_mov_b32_e32 v48, v120
	ds_load_u16_d16_hi v41, v101 offset:4480
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v33, v101 offset:4544
	ds_load_u16_d16 v51, v101 offset:4384
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v42, v101 offset:4736
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v34, v101 offset:4800
	ds_load_u16_d16 v52, v101 offset:4640
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v43, v101 offset:4992
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v35, v101 offset:5056
	ds_load_u16_d16 v53, v101 offset:4896
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v44, v101 offset:5248
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v36, v101 offset:5312
	ds_load_u16_d16 v54, v101 offset:5152
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v45, v101 offset:5504
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v37, v101 offset:5568
	ds_load_u16_d16 v55, v101 offset:5408
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v46, v101 offset:5760
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v38, v101 offset:5824
	ds_load_u16_d16 v56, v101 offset:5664
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v47, v101 offset:6016
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v39, v101 offset:6080
	ds_load_u16_d16 v57, v101 offset:5920
	ds_load_u16_d16_hi v66, v101 offset:6272
	ds_load_u16_d16 v120, v101 offset:6176
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s9, v141, v141
	v_cndmask_b16 v133.l, 0x7fff, v159.h, s4
	v_cndmask_b16 v136.l, 0x7fff, v160.h, s5
	v_cndmask_b16 v138.l, 0x7fff, v136.h, s11
	v_add3_u32 v130, v141, v128, 0x7fff
	v_perm_b32 v128, v129, v49, v94
	v_cndmask_b16 v136.h, 0x7fff, v82.h, s8
	v_perm_b32 v129, v129, v49, v95
	v_and_b32_e32 v49, 1, v118
	v_mov_b16_e64 v118.l, v144.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v121, v101 offset:6432
	ds_load_u16_d16_hi v68, v101 offset:6784
	ds_load_u16_d16_hi v60, v101 offset:6848
	ds_load_u16_d16 v122, v101 offset:6688
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v69, v101 offset:7040
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v61, v101 offset:7104
	ds_load_u16_d16 v123, v101 offset:6944
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v70, v101 offset:7296
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v62, v101 offset:7360
	ds_load_u16_d16 v124, v101 offset:7200
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v71, v101 offset:7552
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v63, v101 offset:7616
	ds_load_u16_d16 v125, v101 offset:7456
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v72, v101 offset:7808
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v64, v101 offset:7872
	ds_load_u16_d16 v126, v101 offset:7712
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v73, v101 offset:8064
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v65, v101 offset:8128
	ds_load_u16_d16 v127, v101 offset:7968
	ds_load_u16_d16_hi v40, v101 offset:4224
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v131, v133, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v139.h, 0x7fff, v130.h, s9
	v_permlanex16_b32 v82, v136, s33, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v134, 1, v118
	v_mov_b16_e64 v118.l, v145.h
	v_cmp_o_f32_e64 s13, v143, v143
	v_perm_b32 v130, v131, v133, v94
	v_perm_b32 v131, v131, v133, v95
	v_add3_u32 v49, v143, v49, 0x7fff
	v_permlanex16_b32 v135, v139, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v132, v82, v136, v94
	v_perm_b32 v133, v82, v136, v95
	v_and_b32_e32 v82, 1, v118
	v_mov_b16_e64 v118.l, v146.h
	v_cmp_o_f32_e64 s14, v144, v144
	v_cndmask_b16 v138.h, 0x7fff, v49.h, s13
	v_add3_u32 v49, v144, v134, 0x7fff
	v_perm_b32 v134, v135, v139, v94
	v_perm_b32 v135, v135, v139, v95
	v_and_b32_e32 v136, 1, v118
	v_cmp_o_f32_e64 s15, v145, v145
	v_cmp_o_f32_e64 s17, v146, v146
	v_cndmask_b16 v140.h, 0x7fff, v49.h, s14
	v_add3_u32 v49, v145, v82, 0x7fff
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(23)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[32:39], v[128:135], v[8:15]
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v34, v146, v136, 0x7fff
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v98, v137, v119
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v50, v101 offset:4256
	ds_load_u16_d16_hi v147, v101 offset:4320
	ds_load_u16_d16_hi v51, v101 offset:4512
	ds_load_u16_d16_hi v148, v101 offset:4576
	ds_load_u16_d16_hi v52, v101 offset:4768
	ds_load_u16_d16_hi v149, v101 offset:4832
	ds_load_u16_d16_hi v53, v101 offset:5024
	ds_load_u16_d16_hi v150, v101 offset:5088
	ds_load_u16_d16_hi v54, v101 offset:5280
	ds_load_u16_d16_hi v151, v101 offset:5344
	ds_load_u16_d16_hi v55, v101 offset:5536
	ds_load_u16_d16_hi v152, v101 offset:5600
	ds_load_u16_d16_hi v56, v101 offset:5792
	ds_load_u16_d16_hi v153, v101 offset:5856
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v57, v101 offset:6048
	ds_load_u16_d16_hi v154, v101 offset:6112
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v120, v101 offset:6304
	ds_load_u16_d16_hi v74, v101 offset:6368
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v121, v101 offset:6560
	ds_load_u16_d16_hi v75, v101 offset:6624
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v122, v101 offset:6816
	ds_load_u16_d16_hi v76, v101 offset:6880
	s_waitcnt lgkmcnt(35)
	ds_load_u16_d16_hi v123, v101 offset:7072
	ds_load_u16_d16_hi v77, v101 offset:7136
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v124, v101 offset:7328
	ds_load_u16_d16_hi v78, v101 offset:7392
	s_waitcnt lgkmcnt(33)
	ds_load_u16_d16_hi v125, v101 offset:7584
	ds_load_u16_d16_hi v79, v101 offset:7648
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v126, v101 offset:7840
	ds_load_u16_d16_hi v80, v101 offset:7904
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v127, v101 offset:8096
	ds_load_u16_d16_hi v81, v101 offset:8160
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v142.h, 0x7fff, v49.h, s15
	v_permlanex16_b32 v139, v138, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v155.h, 0x7fff, v34.h, s17
	v_permlanex16_b32 v35, v140, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(32)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[40:47], v[128:135], v[24:31]
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v37, v142, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[50:57], v[128:135], v[16:23]
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v39, v155, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[147:154], v[128:135], v[0:7]
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v32, v139, v138, v94
	v_perm_b32 v33, v139, v138, v95
	v_perm_b32 v34, v35, v140, v94
	v_perm_b32 v35, v35, v140, v95
	v_perm_b32 v36, v37, v142, v94
	v_perm_b32 v37, v37, v142, v95
	v_perm_b32 v38, v39, v155, v94
	v_perm_b32 v39, v39, v155, v95
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_add_i32 s3, s38, 64
	s_cmpk_lt_u32 s38, 0x7c0
	s_mov_b32 s38, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[66:73], v[32:39], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[120:127], v[32:39], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[58:65], v[32:39], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[74:81], v[32:39], v[0:7]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v32, null, v98, v98, v24
	v_div_scale_f32 v33, null, v98, v98, v25
	v_div_scale_f32 v36, null, v98, v98, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v32
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v24, v98, v24
	v_div_scale_f32 v38, s1, v25, v98, v25
	v_rcp_f32_e32 v39, v36
	v_div_scale_f32 v43, null, v98, v98, v27
	v_div_scale_f32 v47, null, v98, v98, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v32, v34, 1.0
	v_fma_f32 v41, -v33, v35, 1.0
	v_div_scale_f32 v42, s3, v26, v98, v26
	v_div_scale_f32 v49, null, v98, v98, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v34, v40, v34 :: v_dual_fmac_f32 v35, v41, v35
	v_rcp_f32_e32 v41, v43
	v_fma_f32 v44, -v36, v39, 1.0
	v_div_scale_f32 v40, s4, v27, v98, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v45, v37, v34 :: v_dual_mul_f32 v46, v38, v35
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v48, -v33, v46, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v43, v41, 1.0
	v_dual_fmac_f32 v46, v48, v35 :: v_dual_fmac_f32 v41, v50, v41
	v_rcp_f32_e32 v48, v47
	v_fmac_f32_e32 v39, v44, v39
	v_fma_f32 v44, -v32, v45, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v33, v46, v38
	v_div_scale_f32 v38, null, v98, v98, v30
	v_fmac_f32_e32 v45, v44, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v45, v37
	v_div_fmas_f32 v32, v32, v34, v45
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v34, v49
	v_div_fmas_f32 v33, v33, v35, v46
	v_fma_f32 v35, -v47, v48, 1.0
	v_div_fixup_f32 v24, v32, v98, v24
	s_mov_b32 vcc_lo, s3
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v98
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v25, v33, v98, v25
	v_fmac_f32_e32 v48, v35, v48
	v_mul_f32_e32 v44, v42, v39
	v_div_scale_f32 v35, s5, v28, v98, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v36, v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v118.l, v25.h
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v44, v37, v39 :: v_dual_mul_f32 v37, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v36, v44, v42
	v_fma_f32 v33, -v43, v37, v40
	v_fma_f32 v36, -v49, v34, 1.0
	v_div_scale_f32 v42, null, v98, v98, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v39, v44
	v_dual_fmac_f32 v37, v33, v41 :: v_dual_fmac_f32 v34, v36, v34
	v_rcp_f32_e32 v36, v38
	v_mul_f32_e32 v33, v35, v48
	v_div_scale_f32 v39, s3, v29, v98, v29
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v26, v32, v98, v26
	v_fma_f32 v32, -v43, v37, v40
	v_fma_f32 v40, -v47, v33, v35
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v45, -v38, v36, 1.0
	v_mul_f32_e32 v43, v39, v34
	v_div_fmas_f32 v32, v32, v41, v37
	v_fmac_f32_e32 v33, v40, v48
	v_div_scale_f32 v40, s4, v30, v98, v30
	v_fmac_f32_e32 v36, v45, v36
	v_fma_f32 v37, -v49, v43, v39
	v_fma_f32 v41, -v42, v44, 1.0
	v_div_fixup_f32 v27, v32, v98, v27
	v_fma_f32 v32, -v47, v33, v35
	v_mul_f32_e32 v35, v40, v36
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v44, v41, v44
	v_fmac_f32_e32 v43, v37, v34
	v_div_scale_f32 v37, s6, v31, v98, v31
	v_div_scale_f32 v41, null, v98, v98, v16
	v_div_fmas_f32 v32, v32, v48, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v49, v43, v39
	v_fma_f32 v39, -v38, v35, v40
	v_rcp_f32_e32 v45, v41
	v_mul_f32_e32 v46, v37, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v32, v32, v98, v28
	v_fmac_f32_e32 v35, v39, v36
	v_div_scale_f32 v47, null, v98, v98, v17
	v_fma_f32 v39, -v42, v46, v37
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v46, v39, v44
	v_div_fmas_f32 v33, v33, v34, v43
	v_fma_f32 v43, -v41, v45, 1.0
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v34, v47
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s8, v32, v32
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v28, v33, v98, v29
	v_fma_f32 v29, -v38, v35, v40
	v_fmac_f32_e32 v45, v43, v45
	v_div_scale_f32 v33, s3, v16, v98, v16
	v_div_scale_f32 v43, null, v98, v98, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v29, v29, v36, v35
	v_fma_f32 v35, -v42, v46, v37
	v_mul_f32_e32 v36, v33, v45
	v_div_scale_f32 v37, null, v98, v98, v18
	v_fma_f32 v38, -v47, v34, 1.0
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v41, v36, v33
	v_rcp_f32_e32 v39, v37
	v_div_fmas_f32 v35, v35, v44, v46
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s4, v17, v98, v17
	v_fmac_f32_e32 v36, v40, v45
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v30, v29, v98, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v42, v38, v34
	v_div_fixup_f32 v29, v35, v98, v31
	v_fma_f32 v40, -v37, v39, 1.0
	v_fma_f32 v33, -v41, v36, v33
	v_div_scale_f32 v41, null, v98, v98, v20
	v_rcp_f32_e32 v35, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v40, v39
	v_div_fmas_f32 v33, v33, v45, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v40, v41
	v_div_scale_f32 v46, null, v98, v98, v21
	v_fma_f32 v31, -v47, v42, v38
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v33, v98, v16
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v43, v35, 1.0
	v_fmac_f32_e32 v42, v31, v34
	v_div_scale_f32 v31, s5, v18, v98, v18
	v_fma_f32 v45, -v41, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v44, v35
	v_fma_f32 v36, -v47, v42, v38
	v_div_scale_f32 v44, s3, v19, v98, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v45, v40
	v_rcp_f32_e32 v45, v46
	v_div_fmas_f32 v34, v36, v34, v42
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v47, s4, v20, v98, v20
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v17, v34, v98, v17
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v34, v47, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v46, v45, 1.0
	v_mul_f32_e32 v38, v31, v39
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v45, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v38, v31
	v_div_scale_f32 v48, s6, v21, v98, v21
	v_fmac_f32_e32 v38, v36, v39
	v_div_scale_f32 v36, null, v98, v98, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v37, v38, v31
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v31, v31, v39, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v31, v98, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v36, v37, 1.0
	v_dual_mul_f32 v42, v44, v35 :: v_dual_fmac_f32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v43, v42, v44
	v_div_scale_f32 v39, null, v98, v98, v23
	v_fmac_f32_e32 v42, v33, v35
	v_fma_f32 v33, -v41, v34, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v43, v42, v44
	v_dual_fmac_f32 v34, v33, v40 :: v_dual_mul_f32 v33, v48, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v38, v35, v42
	v_fma_f32 v38, -v41, v34, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v46, v33, v48
	v_div_scale_f32 v42, s3, v22, v98, v22
	v_div_fmas_f32 v34, v38, v40, v34
	v_rcp_f32_e32 v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v41, v45
	v_div_fixup_f32 v19, v35, v98, v19
	v_div_scale_f32 v35, null, v98, v98, v8
	v_div_fixup_f32 v18, v34, v98, v20
	v_fma_f32 v20, -v46, v33, v48
	s_mov_b32 vcc_lo, s6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v41, -v39, v38, 1.0
	v_div_fmas_f32 v20, v20, v45, v33
	v_rcp_f32_e32 v33, v35
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, null, v98, v98, v9
	v_div_fixup_f32 v20, v20, v98, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v41
	v_mul_f32_e32 v40, v42, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v36, v40, v42
	v_fmac_f32_e32 v40, v34, v37
	v_div_scale_f32 v34, s4, v23, v98, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v36, v40, v42
	v_mul_f32_e32 v36, v34, v38
	v_fma_f32 v42, -v35, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v37, v40
	v_fma_f32 v37, -v39, v36, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v42, v33
	v_div_scale_f32 v42, null, v98, v98, v10
	v_div_scale_f32 v40, s3, v8, v98, v8
	v_fmac_f32_e32 v36, v37, v38
	v_fma_f32 v37, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v21, v21, v98, v22
	v_mul_f32_e32 v22, v40, v33
	v_fma_f32 v34, -v39, v36, v34
	v_fmac_f32_e32 v43, v37, v43
	v_div_scale_f32 v37, s5, v9, v98, v9
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v39, -v35, v22, v40
	v_div_fmas_f32 v34, v34, v38, v36
	v_mul_f32_e32 v36, v37, v43
	v_fma_f32 v38, -v42, v44, 1.0
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v22, v39, v33
	v_div_scale_f32 v39, null, v98, v98, v11
	v_fma_f32 v45, -v41, v36, v37
	v_fmac_f32_e32 v44, v38, v44
	v_div_scale_f32 v38, s4, v10, v98, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v39
	v_div_fixup_f32 v23, v34, v98, v23
	v_fma_f32 v34, -v35, v22, v40
	v_dual_fmac_f32 v36, v45, v43 :: v_dual_mul_f32 v35, v38, v44
	v_div_scale_f32 v40, null, v98, v98, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v34, v33, v22
	v_fma_f32 v33, -v41, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v42, v35, v38
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v37, -v39, v46, 1.0
	v_div_fixup_f32 v8, v22, v98, v8
	v_div_fmas_f32 v33, v33, v43, v36
	v_fmac_f32_e32 v35, v34, v44
	v_rcp_f32_e32 v34, v40
	v_div_scale_f32 v36, null, v98, v98, v13
	v_fmac_f32_e32 v46, v37, v46
	v_div_scale_f32 v37, s3, v11, v98, v11
	v_div_fixup_f32 v9, v33, v98, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v36
	v_fma_f32 v22, -v42, v35, v38
	v_mul_f32_e32 v38, v37, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v41, -v40, v34, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v45, null, v98, v98, v15
	v_div_fmas_f32 v22, v22, v44, v35
	v_fma_f32 v35, -v39, v38, v37
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s4, v12, v98, v12
	v_fma_f32 v42, -v36, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v35, v46
	v_div_scale_f32 v35, null, v98, v98, v14
	v_mul_f32_e32 v43, v41, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v42, v33
	v_div_scale_f32 v42, s5, v13, v98, v13
	v_rcp_f32_e32 v44, v35
	v_div_fixup_f32 v10, v22, v98, v10
	v_fma_f32 v22, -v39, v38, v37
	v_fma_f32 v37, -v40, v43, v41
	v_mul_f32_e32 v39, v42, v33
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v22, v22, v46, v38
	v_fmac_f32_e32 v43, v37, v34
	v_fma_f32 v37, -v36, v39, v42
	v_fma_f32 v38, -v35, v44, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v11, v22, v98, v11
	v_fma_f32 v22, -v40, v43, v41
	v_fmac_f32_e32 v39, v37, v33
	v_div_scale_f32 v40, null, v98, v98, v0
	v_fmac_f32_e32 v44, v38, v44
	v_rcp_f32_e32 v37, v45
	v_div_scale_f32 v38, s3, v14, v98, v14
	v_div_fmas_f32 v22, v22, v34, v43
	v_fma_f32 v34, -v36, v39, v42
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v43, null, v98, v98, v1
	v_mul_f32_e32 v36, v38, v44
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v45, v37, 1.0
	v_div_fmas_f32 v33, v34, v33, v39
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v34, -v35, v36, v38
	v_div_fixup_f32 v12, v22, v98, v12
	v_fma_f32 v46, -v40, v42, 1.0
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s4, v15, v98, v15
	v_fmac_f32_e32 v36, v34, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v42, v46, v42
	v_div_scale_f32 v46, null, v98, v98, v2
	v_div_fixup_f32 v13, v33, v98, v13
	v_fma_f32 v33, -v43, v39, 1.0
	v_mul_f32_e32 v22, v41, v37
	v_div_scale_f32 v34, s5, v0, v98, v0
	v_fma_f32 v35, -v35, v36, v38
	v_rcp_f32_e32 v38, v46
	v_fmac_f32_e32 v39, v33, v39
	v_div_scale_f32 v33, s6, v1, v98, v1
	v_fma_f32 v47, -v45, v22, v41
	v_mul_f32_e32 v48, v34, v42
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v49, v33, v39
	v_div_fmas_f32 v35, v35, v44, v36
	v_fmac_f32_e32 v22, v47, v37
	v_fma_f32 v36, -v40, v48, v34
	v_fma_f32 v47, -v46, v38, 1.0
	v_fma_f32 v44, -v43, v49, v33
	v_div_fixup_f32 v14, v35, v98, v14
	v_fma_f32 v35, -v45, v22, v41
	v_fmac_f32_e32 v48, v36, v42
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v36, s3, v2, v98, v2
	v_fmac_f32_e32 v49, v44, v39
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v41, null, v98, v98, v3
	v_div_fmas_f32 v22, v35, v37, v22
	v_mul_f32_e32 v35, v36, v38
	v_fma_f32 v34, -v40, v48, v34
	v_fma_f32 v33, -v43, v49, v33
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v37, v41
	v_fma_f32 v40, -v46, v35, v36
	v_div_fmas_f32 v34, v34, v42, v48
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v15, v22, v98, v15
	v_div_fmas_f32 v33, v33, v39, v49
	v_fmac_f32_e32 v35, v40, v38
	v_div_fixup_f32 v0, v34, v98, v0
	v_div_scale_f32 v39, null, v98, v98, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v33, v98, v1
	v_div_scale_f32 v33, null, v98, v98, v4
	v_fma_f32 v22, -v41, v37, 1.0
	v_fma_f32 v34, -v46, v35, v36
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v36, v33
	v_rcp_f32_e32 v40, v39
	v_fmac_f32_e32 v37, v22, v37
	v_div_scale_f32 v22, s4, v3, v98, v3
	v_div_fmas_f32 v34, v34, v38, v35
	v_div_scale_f32 v35, null, v98, v98, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v22, v37
	v_div_scale_f32 v44, null, v98, v98, v7
	v_rcp_f32_e32 v42, v35
	v_div_fixup_f32 v2, v34, v98, v2
	v_fma_f32 v34, -v33, v36, 1.0
	v_fma_f32 v43, -v41, v38, v22
	v_fma_f32 v45, -v39, v40, 1.0
	v_rcp_f32_e32 v46, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v36, v34, v36
	v_div_scale_f32 v34, s3, v4, v98, v4
	v_fmac_f32_e32 v38, v43, v37
	v_fma_f32 v43, -v35, v42, 1.0
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s5, v5, v98, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v47, v34, v36 :: v_dual_fmac_f32 v42, v43, v42
	v_div_scale_f32 v43, s6, v6, v98, v6
	v_fma_f32 v48, -v44, v46, 1.0
	v_fma_f32 v22, -v41, v38, v22
	v_mul_f32_e32 v49, v45, v40
	v_fma_f32 v41, -v33, v47, v34
	v_mul_f32_e32 v50, v43, v42
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s7, v7, v98, v7
	v_div_fmas_f32 v22, v22, v37, v38
	v_fma_f32 v37, -v39, v49, v45
	v_fmac_f32_e32 v47, v41, v36
	v_fma_f32 v38, -v35, v50, v43
	v_mul_f32_e32 v41, v48, v46
	v_div_fixup_f32 v3, v22, v98, v3
	v_fmac_f32_e32 v49, v37, v40
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v37.l, v24.h
	v_mov_b16_e32 v37.h, v118.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v22, -v33, v47, v34
	v_fmac_f32_e32 v50, v38, v42
	v_fma_f32 v33, -v44, v41, v48
	v_fma_f32 v34, -v39, v49, v45
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v38, 1, v118
	v_and_b32_e32 v37, 1, v37
	v_mov_b16_e32 v118.l, v27.h
	.loc	1 841 48                        ; attention.py:841:48
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v41, v33, v46
	v_div_fmas_f32 v22, v22, v36, v47
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v33, -v35, v50, v43
	v_div_fmas_f32 v34, v34, v40, v49
	s_mov_b32 vcc_lo, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v38, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v25, v24, v37, 0x7fff
	v_mov_b16_e32 v37.l, v26.h
	v_mov_b16_e32 v37.h, v118.h
	v_and_b32_e32 v39, 1, v118
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v33, v42, v50
	s_mov_b32 vcc_lo, s7
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s6
	v_cmp_o_f32_e64 s6, v24, v24
	v_and_b32_e32 v24, 1, v37
	v_add3_u32 v37, v27, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v27, v27
	v_mov_b16_e32 v118.l, v28.h
	v_mov_b16_e32 v39.l, v32.h
	v_mov_b16_e32 v39.h, v118.h
	v_cndmask_b16 v38.l, 0x7fff, v25.h, s6
	v_add3_u32 v24, v26, v24, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v37.h, s7
	v_and_b32_e32 v37, 1, v118
	v_cmp_o_f32_e64 s6, v26, v26
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v29, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v25, 1, v39
	v_cmp_o_f32_e64 s7, v28, v28
	v_add3_u32 v29, v28, v37, 0x7fff
	v_mov_b16_e32 v37.l, v30.h
	v_mov_b16_e32 v37.h, v118.h
	v_mov_b16_e32 v118.l, v26.h
	v_add3_u32 v25, v32, v25, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v24.h, s6
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_and_b32_e32 v24, 1, v37
	v_and_b32_e32 v29, 1, v118
	v_cndmask_b16 v28.l, 0x7fff, v25.h, s8
	v_cmp_o_f32_e64 s6, v26, v26
	v_mov_b16_e32 v118.l, v17.h
	v_add3_u32 v24, v30, v24, 0x7fff
	v_add3_u32 v25, v26, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_mov_b16_e32 v26.l, v16.h
	v_mov_b16_e32 v26.h, v118.h
	v_and_b32_e32 v29, 1, v118
	v_mov_b16_e32 v118.l, v19.h
	v_cndmask_b16 v25.l, 0x7fff, v24.h, s7
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_and_b32_e32 v24, 1, v26
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v31, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_and_b32_e32 v30, 1, v118
	v_add3_u32 v17, v16, v24, 0x7fff
	v_mov_b16_e32 v24.l, v26.h
	v_mov_b16_e32 v24.h, v118.h
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s6
	v_cmp_o_f32_e64 s6, v16, v16
	v_cmp_o_f32_e64 s7, v19, v19
	v_mov_b16_e32 v118.l, v20.h
	v_and_b32_e32 v16, 1, v24
	v_add3_u32 v24, v19, v30, 0x7fff
	v_mov_b16_e32 v30.l, v18.h
	v_mov_b16_e32 v30.h, v118.h
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v29.l, 0x7fff, v17.h, s6
	v_add3_u32 v16, v26, v16, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v24.h, s7
	v_and_b32_e32 v17, 1, v30
	v_and_b32_e32 v24, 1, v118
	v_cmp_o_f32_e64 s6, v26, v26
	v_mov_b16_e32 v26.l, v21.h
	v_mov_b16_e32 v26.h, v118.h
	v_mov_b16_e32 v118.l, v23.h
	v_add3_u32 v17, v18, v17, 0x7fff
	v_add3_u32 v24, v20, v24, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cmp_o_f32_e64 s8, v18, v18
	v_cndmask_b16 v19.l, 0x7fff, v16.h, s6
	v_and_b32_e32 v16, 1, v26
	v_and_b32_e32 v20, 1, v118
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v18.h, 0x7fff, v24.h, s7
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s8
	v_add3_u32 v16, v21, v16, 0x7fff
	v_add3_u32 v17, v23, v20, 0x7fff
	v_mov_b16_e32 v118.l, v9.h
	v_cmp_o_f32_e64 s7, v21, v21
	v_mov_b16_e32 v20.l, v8.h
	v_mov_b16_e32 v20.h, v118.h
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s6, v23, v23
	v_and_b32_e32 v21, 1, v118
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s7
	v_and_b32_e32 v16, 1, v20
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v118.l, v11.h
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_add3_u32 v20, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v9, v8, v16, 0x7fff
	v_mov_b16_e32 v16.l, v10.h
	v_mov_b16_e32 v16.h, v118.h
	v_and_b32_e32 v21, 1, v118
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s6, v8, v8
	v_and_b32_e32 v8, 1, v16
	v_add3_u32 v16, v11, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v11, v11
	v_mov_b16_e32 v118.l, v13.h
	v_mov_b16_e32 v21.l, v12.h
	v_mov_b16_e32 v21.h, v118.h
	v_cndmask_b16 v20.l, 0x7fff, v9.h, s6
	v_add3_u32 v8, v10, v8, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v16.h, s7
	v_and_b32_e32 v16, 1, v118
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s6, v10, v10
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v15, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v9, 1, v21
	v_add3_u32 v15, v13, v16, 0x7fff
	v_mov_b16_e32 v16.l, v14.h
	v_mov_b16_e32 v16.h, v118.h
	v_mov_b16_e32 v118.l, v10.h
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_cmp_o_f32_e64 s8, v12, v12
	v_cndmask_b16 v11.l, 0x7fff, v8.h, s6
	v_and_b32_e32 v8, 1, v16
	v_and_b32_e32 v13, 1, v118
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v118.l, v1.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v44, v41, v48
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v12.h, 0x7fff, v15.h, s7
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s8
	v_add3_u32 v8, v14, v8, 0x7fff
	v_add3_u32 v9, v10, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v10, v10
	v_cmp_o_f32_e64 s7, v14, v14
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e32 v10.h, v118.h
	v_and_b32_e32 v13, 1, v118
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v46, v41
	v_div_fixup_f32 v4, v22, v98, v4
	v_div_fixup_f32 v5, v34, v98, v5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_cndmask_b16 v9.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v10
	v_add3_u32 v10, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v1, v1
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e32 v1.h, v118.h
	v_mov_b16_e32 v118.l, v3.h
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v6, v33, v98, v6
	v_div_fixup_f32 v7, v35, v98, v7
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v8, v0, v8, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s6
	v_cmp_o_f32_e64 s6, v0, v0
	v_and_b32_e32 v0, 1, v1
	v_and_b32_e32 v1, 1, v118
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v10.l, 0x7fff, v8.h, s6
	v_mov_b16_e32 v8.h, v118.h
	v_add3_u32 v1, v3, v1, 0x7fff
	v_mov_b16_e32 v118.l, v5.h
	v_mov_b16_e32 v8.l, v4.h
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s6, v3, v3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v7, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v7, 1, v118
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e32 v13.h, v118.h
	v_mov_b16_e32 v118.l, v3.h
	v_add3_u32 v0, v2, v0, 0x7fff
	v_cmp_o_f32_e64 s1, v2, v2
	v_add3_u32 v2, v4, v8, 0x7fff
	v_and_b32_e32 v8, 1, v13
	v_and_b32_e32 v13, 1, v118
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v7, v5, v7, 0x7fff
	v_cmp_o_f32_e64 s6, v5, v5
	v_cmp_o_f32_e64 s7, v4, v4
	v_add3_u32 v4, v6, v8, 0x7fff
	v_add3_u32 v5, v3, v13, 0x7fff
	v_cmp_o_f32_e64 s8, v3, v3
	v_cmp_o_f32_e64 s9, v6, v6
	v_cndmask_b16 v1.l, 0x7fff, v0.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s8
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s9
	.loc	1 843 74                        ; attention.py:843:74
	v_lshrrev_b32_e32 v36, 1, v97
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v4, v38, v28, s0
	v_cndmask_b32_e64 v6, v27, v25, s0
	v_cndmask_b32_e64 v8, v29, v18, s0
	v_cndmask_b32_e64 v13, v17, v19, s0
	v_cndmask_b32_e64 v14, v19, v17, s0
	v_cndmask_b32_e64 v17, v0, v10, s0
	v_cndmask_b32_e64 v0, v10, v0, s0
	v_cndmask_b32_e64 v15, v12, v20, s0
	v_cndmask_b32_e64 v12, v20, v12, s0
	v_cndmask_b32_e64 v16, v9, v11, s0
	v_cndmask_b32_e64 v9, v11, v9, s0
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v35, s35, v96
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v7, v18, v29, s0
	v_cndmask_b32_e64 v18, v2, v1, s0
	v_cndmask_b32_e64 v1, v1, v2, s0
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v22, 16, v36
	s_mov_b32 s1, 0x76543210
	v_or_b32_e32 v33, 32, v36
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v3, v28, v38, s0
	v_cndmask_b32_e64 v5, v25, v27, s0
	v_permlanex16_b32 v2, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v34, 48, v36
	.loc	1 846 36                        ; attention.py:846:36
	v_permlanex16_b32 v19, v1, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s35, v22
	v_cmp_gt_i32_e64 s5, s35, v36
	v_cmp_gt_i32_e64 s3, s35, v33
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v0, v2, v3, v94
	v_perm_b32 v1, v2, v3, v95
	v_perm_b32 v2, v4, v5, v94
	v_perm_b32 v3, v4, v5, v95
	v_perm_b32 v4, v6, v7, v94
	v_perm_b32 v5, v6, v7, v95
	v_perm_b32 v6, v8, v13, v94
	v_perm_b32 v7, v8, v13, v95
	v_perm_b32 v12, v14, v17, v94
	v_perm_b32 v13, v14, v17, v95
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v35, v22, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v8, v10, v15, v94
	v_perm_b32 v9, v10, v15, v95
	v_perm_b32 v10, v11, v16, v94
	v_perm_b32 v11, v11, v16, v95
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v16, v35, v36, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s4, s35, v34
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v14, v19, v18, v94
	v_perm_b32 v15, v19, v18, v95
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v35, v33, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s0, s2, s5
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v35, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[36:39], 0 offen
	buffer_store_b128 v[4:7], v17, s[36:39], 0 offen
	buffer_store_b128 v[8:11], v18, s[36:39], 0 offen
	buffer_store_b128 v[12:15], v19, s[36:39], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp47:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 176
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 176
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13452
; TotalNumSgprs: 51
; NumVgprs: 176
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 176
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     176
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
